using CSV, DataFrames, TypedTables, GLM, Plots, Makie
oldcarprice=CSV.File("data/car_price.csv")
# oldcarprices=DataFrame(CSV.File("data/car_price.csv"))
first(oldcarprice,5)
last(oldcarprice,5)
describe(oldcarprice)
# vscodedisplay(oldcarprice)