latest(scores) = last(scores)

personal_best(scores) = last((sort(scores)))

function personal_top_three(scores)
    len = length(scores)
    if len > 3;    len = 3;    end
    reverse(sort(scores))[1 : len]
end
