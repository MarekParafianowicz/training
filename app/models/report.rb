class Report < ActiveRecord::Base

<<<<<<< HEAD
  def publish
    sleep_time 5
    update_attribute(:published_at, Time.zone.now)
=======
  def save_report
    sleep_time(10)
    self.save
>>>>>>> Custom save method with sleep
  end

  def sleep_time(time)
    sleep(time)
  end
end
