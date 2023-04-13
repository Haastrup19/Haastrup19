//
//  AdewalemgsapplicationApp.swift
//  Adewalemgsapplication

import SwiftUI

@main
struct AdewalemgsapplicationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            IPhone13ProMaxThreeView()
        }
    }
}
