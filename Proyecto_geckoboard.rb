require 'pry'
require 'geckoboard'

client = Geckoboard.client("2f3337b0a49abb6dd4a203d80d525a5c")

puts client.ping
puts client.datasets

dataset = client.datasets.find_or_create('sales.gross', fields: [
  Geckoboard::MoneyField.new(:amount, name: 'Amount', currency_code: 'USD', optional: false),
  Geckoboard::DateTimeField.new(:timestamp, name: 'Time'),
], unique_by: [:timestamp])

puts dataset.fields
binding.pry


"fields":{
  "amount":{
    "type": "number",
    "name": "Amount",
    "optional": true
  }
}