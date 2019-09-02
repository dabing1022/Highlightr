//
//  HighlightrUserDefaults.swift
//  Highlightr-iOS
//
//  Created by ChildhoodAndy on 2019/9/2.
//  Copyright © 2019 Illanes, Juan Pablo. All rights reserved.
//

import Foundation

class HighlightrUserDefaults {
    static let key_code_font = "key_code_font"
    static let key_code_font_size = "key_code_font_size"
    static let key_code_theme = "key_code_theme"
    
    // MARK : key_code_font
    class func saveCodeFont(font: String) {
        UserDefaults.standard.set(font, forKey: key_code_font)
        UserDefaults.standard.synchronize()
    }
    
    class func codeFont() -> String {
        return UserDefaults.standard.string(forKey: key_code_font) ?? "Courier"
    }
    
    // MARK : key_code_font_size
    class func saveCodeFontSize(size: Int) {
        if (size <= 0) {
            return
        }
        UserDefaults.standard.set(size, forKey: key_code_font_size)
        UserDefaults.standard.synchronize()
    }
    
    class func codeFontSize() -> Int {
        var size: Int = UserDefaults.standard.integer(forKey: key_code_font_size)
        if (size <= 0) {
            size = 14
        }
        return size
    }
    
    // MARK : key_code_theme
    class func saveCodeTheme(theme: String) {
        UserDefaults.standard.set(theme, forKey: key_code_theme)
        UserDefaults.standard.synchronize()
    }
    
    class func codeTheme() -> String {
        return UserDefaults.standard.string(forKey: key_code_theme) ?? "Pojoaque"
    }
}
