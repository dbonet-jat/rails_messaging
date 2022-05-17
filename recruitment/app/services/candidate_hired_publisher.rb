require 'bunny'
class CandidateHiredPublisher

  def initialize(args)
    @connection ||=  Bunny.new(automatically_recover: false)
    @connection.start
    @channel = @connection.create_channel
    @queue = @channel.queue('candidate.hired', durable: true)
    @candidate = User.find(args[:id])

  end

  def publish
    @queue.publish(@candidate.to_json, persistent: true)
    @connection.close
  end

end

