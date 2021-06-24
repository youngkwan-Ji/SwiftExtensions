//
//  UIApplicationExtensions.swift
//
//  Created by youngkwanji on 2021/06/24.
//

import Foundation

 
extension UIApplication {
  var currentKeyWindow: UIWindow? {
    UIApplication.shared.connectedScenes
      .filter { $0.activationState == .foregroundActive }
      .map { $0 as? UIWindowScene }
      .compactMap { $0 }
      .first?.windows
      .filter { $0.isKeyWindow }
      .first
  }
    
    // SwiftUI에서 RootViewController<UIHostingController>에 접근
  var rootViewController: UIViewController? {
    currentKeyWindow?.rootViewController
  }
}
