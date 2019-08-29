module AstroDynPlots

using AstroBase
using RecipesBase
using SmoothingSplines

using PlotlyJS
import PlotlyJS: plot

export plot

# import RecipesBase: plot

# @recipe function plot(tra::AbstractTrajectory; points=length(tra.times) * 10)
#     t = linspace(tra.times[0], tra.times[end], points)
#     x = tra.array[:,1]
#     y = tra.array[:,2]
#     z = tra.array[:,3]
#     seriestype := :path3d
#     x, y, z
# end

function plot(tra::Trajectory)
    center = body(initial(tra))
    re = equatorial_radius(center)
    rp = polar_radius(center)
    n = 100
    θ = range(-π/2, stop=π/2, length=n)
    ϕ = range(0, stop=2π, length=n)
    x = [re * cos(i) * cos(j) for i in θ, j in ϕ]
    y = [re * cos(i) * sin(j) for i in θ, j in ϕ]
    z = [rp * sin(i) for i in θ, j in ϕ];
    s = surface(x=x, y=y, z=z, colorscale="Blues", showlegend=false)
    times = range(tra.times[1], stop=tra.times[end], length=length(tra.times)*100)
    p = scatter3d(;x=predict.(Ref(tra.splines[1]), times), y=predict.(Ref(tra.splines[2]), times), z=predict.(Ref(tra.splines[3]), times), mode="lines", line=attr(color="rgb(255,0,0)"))
    plot([s, p])
end

end # module
