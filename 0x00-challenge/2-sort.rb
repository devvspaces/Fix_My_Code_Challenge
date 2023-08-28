###
#
#  Sort integer arguments (ascending)
#
#  Usage: ruby 2-sort.rb 1 2 3 4 5 6 7 8 9 10
#  Fixed version: ruby 2-sort.rb 1 2 3 4 5 6 7 8 9 10
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.sizeby
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
