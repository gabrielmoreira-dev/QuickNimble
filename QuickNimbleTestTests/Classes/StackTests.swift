import Quick
import Nimble
@testable import QuickNimbleTest

final class StackTests: QuickSpec {
    override class func spec() {
        describe("Integer Stack") {
            context("When empty") {
                var sut = Stack<Int>()

                it("Does not contain items") {
                    expect(sut.count).to(equal(0))
                }

                it("Does not pop value") {
                    expect(sut.pop()).to(beNil())
                }
            }

            context("When push two values") {
                var sut = Stack<Int>()
                sut.push(10)
                sut.push(20)

                it("Has two items") {
                    expect(sut.count).to(equal(2))
                }

                it("Sets correctly first item") {
                    expect(sut[safe: 0]).to(equal(10))
                }

                it("Sets correctly second item") {
                    expect(sut[safe: 1]).to(equal(20))
                }
            }

            context("When pop a value") {
                var sut = Stack<Int>()
                sut.push(10)
                sut.push(20)
                let value = sut.pop()

                it("Has one item") {
                    expect(sut.count).to(equal(1))
                }

                it("Returns value") {
                    expect(value).to(equal(20))
                }
            }
        }
    }
}
