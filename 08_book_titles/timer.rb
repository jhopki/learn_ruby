class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
      min = 0
      sec = @seconds
      hour = 0
      if @seconds > 59
        min = @seconds / 60
        sec = @seconds % 60
        if min > 59
          hour = min / 60
          min = min % 60
        end
      end
      t = Time.new(2013,11,23,hour,min,sec)
      t.strftime("%H:%M:%S")

  end
end