class HardWorker
  include Sidekiq::Worker

  def perform(name)
    # Do something
    NotifierMailer.generate(name).deliver
  end
end
