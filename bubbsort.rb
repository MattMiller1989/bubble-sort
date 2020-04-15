

def bubble_sort(arr)

    sorted = true
    
    while sorted 
        sorted=false
        (0...arr.length-1).each do |ind|
            
            if arr[ind].to_i > arr[ind+1].to_i
                arr[ind],arr[ind+1]=arr[ind+1],arr[ind]
                sorted=true
            end
            
        end
        
        
    end
     arr
end



def bubble_sort_by(arr)
    sorted =true
    while sorted 
        sorted = false
        (0...arr.length-1).each do |ind|
            if yield(arr[ind],arr[ind+1])>0
                arr[ind],arr[ind+1]=arr[ind+1],arr[ind]
                sorted=true
            end
        end
    end
    puts arr
    
end



puts bubble_sort([4,3,78,2,0,2])
bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end


