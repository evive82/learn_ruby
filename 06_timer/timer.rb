class Timer
  #write your code here
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
    @time_string = get_time
  end

  def seconds=(seconds)
    @seconds = seconds
    @time_string = get_time
  end

  def seconds
    @seconds
  end

  def time_string
    @time_string
  end

  def get_time
    if @seconds >= 60
      @minutes = @seconds / 60
      @seconds = @seconds % 60
      if @minutes >= 60
        @hours = @minutes / 60
        @minutes = @minutes % 60
      end
    end
    return "#{sprintf('%02d', @hours)}:#{sprintf('%02d', @minutes)}:#{sprintf('%02d', @seconds)}"
  end
end
