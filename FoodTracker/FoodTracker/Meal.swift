//
//  Meal.swift
//  FoodTracker
//
//  Created by Minisce, Mark on 2/18/17.
//
//

import UIKit

class Meal{
    //MARK: properties
    
    //var defines variable: value can change throughout object lifetime
    //let defines constant: value cannot change throughout object lifetime
    var name: String
    var rating: Int
    var photo: UIImage?
    
    //MARK: initialization
    
    init?(name: String, rating: Int, photo: UIImage?){
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.rating = rating
        self.photo = photo
    }
}
