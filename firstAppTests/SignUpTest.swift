//
//  SignUpTest.swift
//  firstAppTests
//
//  Created by Sanjeet Kumar on 23/08/21.
//

import XCTest
@testable import firstApp

class SignUpTest: XCTestCase {
    
    var signUpVC: SignUpVC?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        signUpVC = SignUpVC()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        signUpVC = nil
    }
    
    func testValidUserName() {
        var userName = "Sanjeet1"
        
        var isValidUserName = signUpVC?.checkValidUserName(username: userName)
        XCTAssertEqual(isValidUserName, false)
        
        userName = "Sanjeet1@"
        
        isValidUserName = signUpVC?.checkValidUserName(username: userName)
        XCTAssertEqual(isValidUserName, true)
    }
    
    func testValidEmail() {
        var email = "sanjeet@gmail.com"
        
        var isValidEmail = signUpVC?.isValidEmail(email)
        XCTAssertEqual(isValidEmail, true)
        
        email = "Sanjeet@1"
        isValidEmail = signUpVC?.isValidEmail(email)
        XCTAssertEqual(isValidEmail, false)
        
    }
    
    func testValidPassword() {
        var password = "sanjeet"
        
        var isValidPassword = signUpVC?.isValidPassword(password)
        XCTAssertEqual(isValidPassword, true)
        
        password = "raj"
        isValidPassword = signUpVC?.isValidPassword(password)
        XCTAssertEqual(isValidPassword, false)
    }

}
