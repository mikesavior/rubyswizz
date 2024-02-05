require 'date'

class RubySwizz
  class << self
    def beats_time(time_input = DateTime.now)
      @time = time_input
      @swatch_beats = convert_to_beats
    end

    private

    def convert_to_beats
      # Calculate the total seconds elapsed since midnight
      total_seconds = @time.hour * 3600 + @time.min * 60 + @time.sec

      # Calculate the Swatch Beats
      beetz = (total_seconds / 86.4).round(2)

      # Return the Swatch Beats
      beetz
    end
  end
end
