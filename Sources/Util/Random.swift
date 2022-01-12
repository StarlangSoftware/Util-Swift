//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 12.01.2022.
//

import Foundation

public class Random{
    
    private var seed: Int = 0
    
    public init(seed: Int = 0){
        self.seed = seed
    }
    
    private func nextRandom(){
        self.seed = (1664525 * self.seed + 1013904223) % Int.max;
    }
    
    public func nextDouble(min: Double = 0.0, max: Double = 1.0) -> Double{
        self.nextRandom()
        return min + (Double(self.seed) / Double(Int.max)) * (max - min)
    }
    
    public func nextInt(maxRange: Int) -> Int{
        self.nextRandom()
        return self.seed % maxRange
    }
    
    public func shuffle(array: inout [Any]){
        for i in stride(from: array.count - 1, to: 0, by: -1){
            let randomIndex = self.nextInt(maxRange: i + 1)
            let tmp = array[i]
            array[i] = array[randomIndex]
            array[randomIndex] = tmp
        }
    }
}
