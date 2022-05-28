//
//  AllConstants.swift
//
//  Created by Edson Lima da Silva on 28/05/2022.
//

import SwiftUI

/**
 An enum with a group of Date Formats for the func inFormat.
 */
public enum DateFormat: String {
    case ddmmyyhhmm = "dd/MM/yy kk:mm"
    case dmy = "dd/MMM/yy"
    case dayMonthYear = "d 'de' MMMM 'de' yyyy"
    case dateTime = "dd/MMM/yy kk:mm"
    case dateTimeLong = "dd/MMM/yyyy - kk:mm"
    case dayHour = "dd - kk:mm"
    case hour = "hh:mm"
    case hourMin = "kk:mm"
    case monthLong = "MMMM"
    case monthShort = "MMM"
    case monthLetter = "MMMMM"
    case monthNumber = "M"
    case monthYearLong = "MMMM 'de' yyyy"
    case week = "W, MMMM, yyyy"
    case dayMonthYearLong = "EEEE, d MMMM yyyy"
    case day = "d"
    case month = "MM"
    case year = "yyyy"
    case weekDay = "EEEEEE"
}

extension Date {
    /**
    A func that return a Date in format String in a specific layout
     - Parameters:
       - format: One of the formats of enum DateFormmats
     - Returns: Date in format String
     */
    public func inFormat(_ format: DateFormat) -> String {
        let dateFormatter = DateFormatter.init()
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.locale = Locale.init(identifier: "pt_TL")
        let dateString = dateFormatter.string(from: self)
        return dateString.capitalized
    }
}

/**
Constants used in design of views
 *Types*

`Spacing:` Used to define default spacing.
 `VerticalAlignment:` Used to define default  vertical alignment.
 `Padding:` Used to define default  padding.
 */
public struct DesignConstant {
    
    public struct Spacing {
        public static let bigSpacing: CGFloat = 48
        public static let smallSpacing: CGFloat = 16
        public static let minimalSpacing: CGFloat = 2
    }
    
    public struct VerticalAlignment {
        public static let icon: CGFloat = 11
    }
    
    public struct Padding {
        // default SwiftUI padding value = 16
        public static let topPadding: CGFloat = 16
        public static let bottomPadding: CGFloat = 16
        public static let leadingPadding: CGFloat = 16
        public static let trailingPadding: CGFloat = 16
    }
    
}

/**
Apply default paddings in views
 *Types*

`All:` top, bottom, leading and trailing padding
 
    - Example:  .modifier(AllPadding())
 */
public struct AllPadding: ViewModifier {
    public init() {}
    public func body(content: Content) -> some View {
        content
            .padding(.top, DesignConstant.Padding.topPadding)
            .padding(.bottom, DesignConstant.Padding.bottomPadding)
            .padding(.leading, DesignConstant.Padding.leadingPadding)
            .padding(.trailing, DesignConstant.Padding.trailingPadding)
    }
}

/**
 An enum to define a group of sizes for all  porpose.
 */
public enum Size: CGFloat, CaseIterable {
    case small = 28
    case medium = 40
    case large = 64
    case extralarge = 100
}

