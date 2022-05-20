//
//  What_Taylor_Swift_Song_Are_You_UITestsLaunchTests.swift
//  What Taylor Swift Song Are You?UITests
//
//  Created by Janice on 09/05/22.
//

import XCTest

class What_Taylor_Swift_Song_Are_You_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
