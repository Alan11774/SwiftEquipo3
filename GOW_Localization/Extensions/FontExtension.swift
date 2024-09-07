//
//  FontExtension.swift
//  GOW_Localization
//
//  Created by OYuuyuMP on 06/09/24.
//

import UIKit

extension UIFont {
    static func customFont(forTextStyle style: UIFont.TextStyle) -> UIFont {
        let defaultFontSize = UIFont.preferredFont(forTextStyle: style).pointSize
        guard let customFont = UIFont(name: "CGF Locust Resistance", size: defaultFontSize) else {
            return UIFont.preferredFont(forTextStyle: style) // Fuente del sistema si la personalizada no se carga
        }
        return UIFontMetrics(forTextStyle: style).scaledFont(for: customFont)
    }
}

