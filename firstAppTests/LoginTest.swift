//
//  LoginTest.swift
//  firstAppTests
//
//  Created by Sanjeet Kumar on 23/08/21.
//

import XCTest
@testable import firstApp

class LoginTest: XCTestCase {
    
    var loginVC: LoginVC?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        loginVC = LoginVC()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        loginVC = nil
    }
    
    func testValidUserName() {
        var userName = "Sanjeet1"
        
        var isValidUserName = loginVC?.checkValidUserName(username: userName)
        XCTAssertEqual(isValidUserName, false)
        
        userName = "Sanjeet1@"
        
        isValidUserName = loginVC?.checkValidUserName(username: userName)
        XCTAssertEqual(isValidUserName, true)
    }

}
