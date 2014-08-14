require "sneakers"

class AppCollector
  include Sneakers::Worker
  from_queue 'trycrawl.apps'

  def work(msg)
    app = App.parse(msg)
    app.save
  end
end
