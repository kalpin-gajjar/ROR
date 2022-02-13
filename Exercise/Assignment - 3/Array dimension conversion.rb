def flatten_array(multi_dim_arr, empty_arr)
    multi_dim_arr.each do |i|
        if i.class == Array
            flatten_array(i, empty_arr)
        else
            empty_arr.push(i)
        end
    end
    return empty_arr
end

arr = [1,2,3,4,[[1,2,3,[4,[5],6]],2,3,4],5]
single_dim_arr = flatten_array(arr, [])
print single_dim_arr