require "sneakers"
require "../models/app"

class AppCollector
  include Sneakers::Worker
  from_queue 'trycrawl.apps'

  def work(msg)
    app = App.parse(msg)
    
  end
end
