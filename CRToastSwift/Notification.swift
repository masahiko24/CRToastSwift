//
//  Notification.swift
//  CRToastSwift
//
//  Copyright (c) 2015 Masahiko Tsujita <tsujitamasahiko.dev@icloud.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/// A type can be presented to user by CRToast.
public protocol NotificationType {
    
    /// Main text.
    var text: String { get }
    
    /// Subsidiary text. Ignored if the size of view is not large enough.
    var subtext: String? { get }
    
}

public extension NotificationType {
    
    public var subtext: String? { return nil }
    
}

/**
 Notification is a predefined notification type.
 A notification is initialized with and stores text and subtext.
 */
public struct Notification: NotificationType {
    
    public init(text: String, subtext: String? = nil) {
        self.text = text
        self.subtext = subtext
    }
    
    public var text: String
    
    public var subtext: String?
    
}

/**
 Add NotificationType protocol conformance to String.
 Provides self as its text and always nil as its subtext.
 */
extension String: NotificationType {
    
    public var text: String {
        return self
    }
    
}
