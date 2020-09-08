def chart(arr)
    arr.each do |i|
        print " | #{'*'*i*2}\n"
    end
        print " >#{"--"*arr.max}\n"
    arr.max.times do |i|
        print " #{i + 1}\s"
    end

end