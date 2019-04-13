# frozen_string_literal: true

# Number Format / https://github.com/jasoncomes/Number-Format-Liquid-Filter
# Converts string into a comma separated number format.
# {{ number | numformat }}

module NumFormat
  def numformat(input)
    input = input.to_s

    # Return if empty
    return if input.nil? || input.empty?

    # Return if contains anything but digits
    return input if !input.scan(/\D/).empty?

    # Return results
    input.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse
  end
end

Liquid::Template.register_filter(NumFormat)
