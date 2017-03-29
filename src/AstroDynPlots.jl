module AstroDynPlots

#= function plot{F<:Frame, T<:Timescale, C<:CelestialBody}(tra::Trajectory{F,T,C}) =#
#=     re = equatorial_radius(constants(C)) =#
#=     rp = polar_radius(constants(C)) =#
#=     n = 100 =#
#=     θ = linspace(-π/2, π/2, n) =#
#=     ϕ = linspace(0, 2π, n) =#
#=     x = [re * cos(i) * cos(j) for i in θ, j in ϕ] =#
#=     y = [re * cos(i) * sin(j) for i in θ, j in ϕ] =#
#=     z = [rp * sin(i) for i in θ, j in ϕ]; =#
#=     s = surface(x=x, y=y, z=z, colorscale="Blues", showlegend=false) =#
#=     times = linspace(tra.t[1], tra.t[end], length(tra.t)*100) =#
#=     p = scatter3d(;x=evaluate(tra.xspl, times), y=evaluate(tra.yspl, times), z=evaluate(tra.zspl, times), mode="lines", line=attr(color="rgb(255,0,0)")) =#
#=     plot([s, p]) =#
#= end =#

end # module
