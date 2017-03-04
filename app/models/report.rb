class Report < ActiveRecord::Base

  def publish
    sleep 5
    update_attribute(:published_at, Time.zone.now)
  end
end
