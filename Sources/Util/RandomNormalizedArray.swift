//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 12.08.2020.
//

import Foundation

public class RandomNormalizedArray{
    
    private var array: [Double]

    /**
    The constructor of RandomNormalizedArray class gets an integer itemCount as an input. Creates a list of
    size itemCount and loops through each element of the list and initializes them with a random number by using
    random. Then, accumulates each element of the list and at the end divides each element with the resulting sum.

     - Parameters itemCount : input representing array size.
    */
    public init(itemCount: Int){
        var total = 0.0
        self.array = []
        for i in 0..<itemCount{
            self.array.append(Double.random(in: 0 ..< 1))
            total += self.array[i]
        }
        for i in 0..<itemCount{
            self.array[i] /= total
        }
    }

    /**
    Getter for the double list.

    - Returns: the double list.
    */
    public func get() -> [Double]{
        return self.array
    }
}
