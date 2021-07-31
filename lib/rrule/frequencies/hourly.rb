# frozen_string_literal: true

module RRule
  class Hourly < Frequency
    def possible_days
      [current_date.yday - 1] # convert to 0-indexed
    end

    private

    def advance_by
      { hours: context.options[:interval] }
    end
  end
end
