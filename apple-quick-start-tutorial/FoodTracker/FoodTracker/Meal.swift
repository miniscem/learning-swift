//
//  Meal.swift
//  FoodTracker
//
//  Created by Minisce, Mark on 2/18/17.
//
//

import UIKit
import os.log

class Meal: NSObject, NSCoding{
    //MARK: properties
    
    //var defines variable: value can change throughout object lifetime
    //let defines constant: value cannot change throughout object lifetime
    var name: String
    var rating: Int
    var photo: UIImage?
    
    //MARK: types
    struct PropertyKey{
        static let name = "name"
        static let rating = "rating"
        static let photo = "photo"
        
    }
    
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
    
    //MARK: NSCoding
    func encode(with aCoder: NSCoder){
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(rating, forKey: PropertyKey.rating)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        // The name is required. If we cannot decode a name string, the initializer should fail.
        //guard unwraps and downcasts the object.
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        //no need for guard here, UIImage is optional.
        let photo = aDecoder.decodeObject(forKey: PropertyKey.photo) as? UIImage

        //no need for downcasting using as? here, rating is an Int, there is no optional to unwrap either.
        let rating = aDecoder.decodeInteger(forKey: PropertyKey.rating)
        
        self.init(name: name, rating: rating, photo: photo)

    }
    
    //MARK: Archiving Paths
    //FileManager provides a space to save data for the user. .first will always contain at least 1 item
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    
    //create a URL to save the app's data
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("meals")
    
}
