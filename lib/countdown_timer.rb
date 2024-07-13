module PomodoroTimer
  class CountdownTimer
    attr_reader :duration

    def initialize(minutes)
      @duration = (minutes * 60).to_i
    end

    def start
      @duration.downto(0) do |seconds|
        formatted_time = Time.at(seconds).utc.strftime('%H:%M:%S')
        print "\r#{formatted_time}"

        sleep 1 if seconds > 0
      end
      puts "\n"
    end
  end
end
