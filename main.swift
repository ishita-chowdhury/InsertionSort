func swap(array: inout [String], first: Int, second: Int){
    let temp = array[first]
    array[first] = array[second]
    array[second] = temp
}
func insertionSort(array: inout [String]){
    for i in 1..<array.count{
        for j in (1...i).reversed(){
            if array[j]<array[j-1]{
                swap(array: &array, first: j, second: j-1)
            }
        }
    }
}

//main
var unsorted = [String]()
while let line = readLine(){
    unsorted.append(line)
}
insertionSort(array: &unsorted)
print(unsorted)
