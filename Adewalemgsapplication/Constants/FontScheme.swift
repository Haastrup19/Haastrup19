import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kInriaSerifRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInriaSerifRegular, size: size)
    }

    static func kInriaSerifBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInriaSerifBold, size: size)
    }

    static func kRobotoRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanRegular, size: size)
    }

    static func kRobotoRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanMedium, size: size)
    }

    static func kRobotoRomanSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanSemiBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kInriaSerifRegular":
            result = self.kInriaSerifRegular(size: size)
        case "kInriaSerifBold":
            result = self.kInriaSerifBold(size: size)
        case "kRobotoRomanRegular":
            result = self.kRobotoRomanRegular(size: size)
        case "kRobotoRomanMedium":
            result = self.kRobotoRomanMedium(size: size)
        case "kRobotoRomanSemiBold":
            result = self.kRobotoRomanSemiBold(size: size)
        default:
            result = self.kInriaSerifRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kInriaSerifRegular: String = "InriaSerif-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kInriaSerifBold: String = "InriaSerif-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanRegular: String = "RobotoRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanMedium: String = "RobotoRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanSemiBold: String = "RobotoRoman-SemiBold"
    }
}
