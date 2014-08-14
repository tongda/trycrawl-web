require 'json'

class App < ActiveRecord::Base
  def self.parse(app_json)
    temp = JSON.parse(app_json)
    app = self.new
    app.name = temp["name"]
    app.owner = temp["owner"]

    return app
  end
end
