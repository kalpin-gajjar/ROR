begin
    puts 'Line before raising an exception'
    raise 'Exception raised!'
    puts 'Line after raising an exception'
rescue
    puts 'Saved!'
end