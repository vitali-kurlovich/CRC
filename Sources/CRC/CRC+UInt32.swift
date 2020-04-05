//
//  File.swift
//
//
//  Created by Vitali Kurlovich on 4/5/20.
//

import Foundation

extension CRC {
    // TODO: it's must be internal extension
    public mutating
    func update(_ b: UInt32) {
        let new = UInt8(0x0000_00FF & b)
        update(new)
    }
}
