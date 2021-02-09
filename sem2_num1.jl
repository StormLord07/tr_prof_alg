function sortperm!(x)
    n=length(x)
    for k in 1:n
        for i in 1:n-k
            if x[i]>x[i+1]
                x[i],x[i+1]=x[i+1],x[i]
            end
        end
    end
end

x=[1,2,3,6,5,4]
println(x)
sortperm!(x)
println(x)

function sortperm(y)
    n=copy(y)
    f=length(n)
    for k in 1:f
        for i in 1:f-k
            if n[i]>n[i+1]
                n[i],n[i+1]=n[i+1],n[i]
            end
        end
    end
    println(y)
    println(n) 
end

y=[1,5,3,12,8]
sortperm(y)
