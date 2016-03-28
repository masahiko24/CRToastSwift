//
//  AnimationSpec.swift
//  CRToastSwiftTests
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

import XCTest
import Nimble
import Quick
@testable import CRToastSwift

class AnimationSpec: QuickSpec {
    
    override func spec() {
        
        var animation: Animation!
        
        describe("the static Linear animation value") {
            
            beforeEach {
                animation = .Linear
            }
            
            it("has linear in curve") {
                expect(animation.inCurve).to(equal(Animation.Curve.Linear))
            }
            
            it("has linear out curve") {
                expect(animation.outCurve).to(equal(Animation.Curve.Linear))
            }
            
        }
        
        describe("the static Spring animation value") {
            
            beforeEach {
                animation = .Spring
            }
            
            it("has spring in curve") {
                expect(animation.inCurve).to(equal(Animation.Curve.Spring))
            }
            
            it("has spring out curve") {
                expect(animation.outCurve).to(equal(Animation.Curve.Spring))
            }
            
        }
        
        describe("the static Gravity animation value") {
            
            beforeEach {
                animation = .Gravity
            }
            
            it("has gravity in curve") {
                expect(animation.inCurve).to(equal(Animation.Curve.Gravity))
            }
            
            it("has gravity out curve") {
                expect(animation.outCurve).to(equal(Animation.Curve.Gravity))
            }
            
        }
        
    }
    
}