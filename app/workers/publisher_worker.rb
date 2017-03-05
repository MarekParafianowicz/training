class PublisherWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(report_id)
    sleep 5
    Report.find(report_id).update_attribute(:published_at, Time.zone.now)
  end
end
