//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 12.08.2020.
//

import Foundation

class Interval {
    
    private var list: [Tuple]
    
    /// A constructor of Interval class which creates a new list.
    init(){
        self.list = []
    }

    /** The add method adds a new Tuple with given inputs to the list.

        - Parameters:
            - start : first element of Tuple.
            - end : second element of Tuple.
    */
    func add(start: Int, end: Int){
        self.list.append(Tuple(first:start, last:end))
    }

    /** The getFirst method returns the first element at the list list's given index.

        - Parameter index : to use at getting tuple from list.
     
        - Returns: the first element at the list list's given index.
    */
    func getFirst(index: Int) -> Int{
        return self.list[index].getFirst()
    }

    /** The getLast method returns the last element at the list list's given index.

        - Parameter index : to use at getting tuple from list.

        - Returns: the last element at the list list's given index.
    */
    func getLast(index: Int) -> Int{
        return self.list[index].getLast()
    }

    /** The size method returns the size of the list list.
    
        - Returns: size of the list list.
    */
    func size() -> Int{
        return self.list.count
    }

}
