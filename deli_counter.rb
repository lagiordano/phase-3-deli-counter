# Write your code here.


def line queue
    if queue.length == 0
        puts "The line is currently empty."
    elsif queue.length > 0 
        line_list = queue.map.with_index { |customer, i| "#{i + 1}. #{customer} " }
        puts "The line is currently: #{line_list.join("")}".chop
    end
end


def take_a_number queue, customer
    queue << customer
    puts "Welcome, #{customer}. You are number #{queue.length} in line."
end


def now_serving queue
    if queue.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{queue[0]}."
        queue.shift
    end
    queue
end
