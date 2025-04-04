//
//  TicTacToeUITestsLaunchTests.swift
//  TicTacToeUITests
//
//  Created by Erjon on 21.02.2025.
//
//  Copyright © 2025 Erjon. All rights reserved.
//
//  This software is protected by copyright law. Any use, reproduction,
//  modification, or distribution, in whole or in part, is strictly prohibited
//  without the prior written permission of the author.
//

import XCTest

final class TicTacToeUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()


        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
