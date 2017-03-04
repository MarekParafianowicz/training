class Report < ActiveRecord::Base

  def publish
    sleep_time 5
    update_attribute(:published_at, Time.zone.now)
  end

  def sleep_time(time)
    sleep(time)
  end
end
