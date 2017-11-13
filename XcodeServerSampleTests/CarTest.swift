//
//  CarTest.swift
//  XcodeServerSampleTests
//
//  Created by Administrator on 11/13/17.
//  Copyright © 2017 Pratibha. All rights reserved.
//

import XCTest

@testable import XcodeServerSample

class CarTest: XCTestCase {
    
    var ferrari:Car!
    var jeep:Car!
    var honda:Car!
    
    override func setUp() {
        super.setUp()
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSportFasterThanJeep(){
        let minutes = 60
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
}
