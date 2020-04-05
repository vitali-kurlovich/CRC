@testable import CRC
import XCTest

final class CRCTests: XCTestCase {
    func testCRC() {
        var crc = CRC()

        XCTAssertEqual(crc.getDigest(), 0x0)

        crc.update([0x20])

        XCTAssertEqual(crc.getDigest(), 0xE96C_CF45)

        crc.update([0x22, 0x1F])
        XCTAssertEqual(crc.getDigest(), 0xEDB6_D427)

        crc.update([0x12, 0x2F, 0x0F, 0x21, 0x65, 0x00, 0x11, 0x32, 0x43, 0x55, 0x33, 0x12, 0x00, 0x54, 0x43, 0x32])
        XCTAssertEqual(crc.getDigest(), 0xBE26_6657)

        crc.update(UInt32(0x4344_5579))
        XCTAssertEqual(crc.getDigest(), 0xE6AC424)
    }

    static var allTests = [
        ("testCRC", testCRC),
    ]
}
