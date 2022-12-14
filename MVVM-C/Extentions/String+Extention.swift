//
//  String+Extention.swift
//  MVVM-C
//
//  Created by Veronica Rudiuk on 14.12.22.
//

import Foundation

extension String {
    struct EmailValidation {
        private static let firstpart = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
        private static let serverpart = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
        private static let emailRegex = firstpart + "@" + serverpart + "[A-Za-z]{2,8}"
        static let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
    }
    
    func isEmail() -> Bool {
        return EmailValidation.emailPredicate.evaluate(with: self)
    }
}
