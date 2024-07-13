require_relative '../../lib/countdown_timer'

describe PomodoroTimer::CountdownTimer do
  describe '#start' do
    let(:timer) { PomodoroTimer::CountdownTimer.new(0.1) }

    before { allow(timer).to receive(:sleep) }

    it 'カウントダウンが指定された秒数で完了すること' do
      timer.start
      expect(timer).to have_received(:sleep).exactly(6).times
    end

    it 'カウントダウンが0秒で完了すること' do
      expect { timer.start }.to output(/00:00:00\n\z/).to_stdout
    end
  end
end
