# merge sort 
def mergeSort(nums):
	if len(nums) == 1:
		return nums
	if len(nums) == 2:
		if nums[0] > nums[1]:
			return [nums[1], nums[0]]
		else:
			return [nums[0], nums[1]]
	mid = len(nums) // 2
	# else 
	left_sorted = mergeSort(nums[:mid])
	right_sorted = mergeSort(nums[mid:])
	# merge 
	i = j = k = 0
	arr = [0] * (len(left_sorted) + len(right_sorted))
	while i < len(left_sorted) and j < len(right_sorted):
		if left_sorted[i] < right_sorted[j]:
			arr[k] = left_sorted[i]
			i += 1
		else:
			arr[k] = right_sorted[j]
			j += 1
		k += 1

	# left element 
	while i < len(left_sorted):
		arr[k] = left_sorted[i]
		i += 1
		k += 1 
	# right element 
	while j < len(right_sorted):
		print(j)
		arr[k] = right_sorted[j]
		j += 1
		k += 1 

	return arr



# quick sort 

def quickSort(arr):
    l = len(arr)
    
    # Base case
    if l < 2:
        return arr
    
    cur_pos = 0 #Position of the partitioning element

    for i in range(1, l): #Partitioning loop
         if arr[i] <= arr[0]:
              cur_pos += 1
              arr[i],arr[cur_pos] = arr[cur_pos], arr[i]

     #Brings pivot to it's appropriate position    
     # cur_pos is the place for the last exchange
     # after the following operation, pivot is one the right spot, all the items before the pivot are smaller than it      
    arr[0], arr[cur_pos] = arr[cur_pos], arr[0] 
  
    
    left = quickSort(arr[:cur_pos]) #Sorts the elements to the left of pivot
    right = quickSort(arr[cur_pos + 1: l]) #sorts the elements to the right of pivot

    arr = left + [arr[cur_pos]] + right #Merging everything together
    
    return arr
