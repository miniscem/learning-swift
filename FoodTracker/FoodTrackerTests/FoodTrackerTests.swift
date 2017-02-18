//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Minisce, Mark on 2/8/17.
//
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal class tests
    
    //methods prefixed with 'test' are tested by XCode's testing framework (XCTest)
    func testMealInitializationSucceeds(){
        let zeroRatingMeal = Meal.init(name: "Zero", rating: 0, photo: nil)
        XCTAssertNotNil(zeroRatingMeal)
        
        let highestRatingMeal = Meal.init(name: "Positive", rating: 5, photo: nil)
        XCTAssertNotNil(highestRatingMeal)
    }
    
    func testMealInitializationFails(){
        
        //all these tests should be correct
        let negativeMealRating = Meal.init(name: "Negative", rating: -1, photo: nil)
        XCTAssertNil(negativeMealRating)
        
        let emptyStringMeal = Meal.init(name: "", rating: 1, photo: nil)
        XCTAssertNil(emptyStringMeal)
        
        let emptyAndNegativeMeal = Meal.init(name: "", rating: -4, photo: nil)
        XCTAssertNil(emptyAndNegativeMeal)
        
        
        //this test will fail
        let largeRatingMeal = Meal.init(name: "largeRatingMeal", rating: 6, photo: nil)
        XCTAssertNil(largeRatingMeal)
        
    }
    
    
}
