class Publisher
  @queue = :publish_queue

  def self.perform(report_id)
    report = Report.find(report_id)
    sleep 20
    report.update_attribute(:published_at, Time.zone.now)
  end
end
