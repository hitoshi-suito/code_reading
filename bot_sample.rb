require "slack-notify"
require 'clockwork'
require 'dotenv/load'
# 下記のgemをrequireすると、minutesなどの時間を指し示すメソッドを使えるようになるので、記述しておくことを推奨します。
# require 'active_support/time'
# p ENV['WEBHOOK']


module Clockwork
  every(2.minutes, 'test') do
  sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'])
  sample.notify("March")
    puts "March"
  end
end

