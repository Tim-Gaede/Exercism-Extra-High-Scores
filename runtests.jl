using Test

include("high_scores.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v4.0.0


@testset "latest score" begin
    scores = [100, 0, 90, 30]
    @test latest(scores) == 30
end

@testset "personal best" begin
    scores = [40, 100, 70]
    @test personal_best(scores) == 100
end

@testset "personal top three from a list of scores" begin
    scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
    @test personal_top_three(scores) == [100, 90, 70]
end

@testset "personal top highest to lowest" begin
    scores = [20, 10, 30]
    @test personal_top_three(scores) == [30, 20, 10]
end

@testset "personal top when there is a tie" begin
    scores = [40, 20, 40, 30]
    @test personal_top_three(scores) == [40, 40, 30]
end

@testset "personal top when there are fewer than three" begin
    scores = [30, 70]
    @test personal_top_three(scores) == [70, 30]
end

@testset "personal top when there is only one score" begin
    scores = [40]
    @test personal_top_three(scores) == [40]
end
