using CSV, DataFrames, TypedTables, GLM, Plots, Makie, BenchmarkTools
oldcarprices=DataFrame(CSV.File("data/car_price.csv"))
first(oldcarprices,5)
last(oldcarprices,5)
describe(oldcarprices)
# vscodedisplay(oldcarprice)
x=oldcarprices.kms_driven
y=oldcarprices.car_prices_in_rupee

