temp1 = -> {puts 'This is a lambda!'}
temp1.call
temp1.()
temp1.[]
temp1.===

temp2 = lambda {puts 'This is also a lambda!'}
temp2.call

temp3 = ->(i) {puts i ** 2}
temp3.call(2)

temp4 = ->(i, j) {puts i * j}
temp4.call(2, 5)