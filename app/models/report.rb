class Report < ActiveRecord::Base

  class << self
    def publish(id)
      sleep 5
      find(id).update_attribute(:published_at, Time.zone.now)
    end
    handle_asynchronously :publish
  end

  def sleep_time(time)
    sleep(time)
  end
end
