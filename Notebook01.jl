using CSV, DataFrames, TypedTables, GLM, Plots, Makie
oldcarprice=CSV.File("data/car_price.csv")
# oldcarprices=DataFrame(CSV.File("data/car_price.csv"))
first(oldcarprice,5)
last(oldcarprice,5)
describe(oldcarprice)
# vscodedisplay(oldcarprice)
x=oldcarprice.kms_driven
y=oldcarprice.car_prices_in_rupee
plot(x,y)




using BenchmarkTools
@btime $oldcarprice[1:end-1,1:end-1];
@btime @view $oldcarprice[1:end-1,1:end-1]