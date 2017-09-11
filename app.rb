require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')
require('pry')


get('/') do
  @description = "This application estimate shipping and handling costs"
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")

  cargo = Parcel.new(@length, @width, @height, @weight)
  @price = cargo.cost_to_ship
  erb(:output)
end
