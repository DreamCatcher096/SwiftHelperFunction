//
//  io_function.swift
//  L2Norm_ios
//
//  Created by 张斯祺 on 2019/5/24.
//  Copyright © 2019 张斯祺. All rights reserved.
//

import Foundation
import CoreML

/// Read binary file (e.g. .bin files) to MLMultiArray as Float
/// - parameter path: Path to the binary file.
/// - parameter target: The target MLMultiArray object.
/// - parameter length: Length of binary file
func FileToMLMultiArrayFloat(path: String, target: MLMultiArray, length: Int)
{
    let input_data = NSData(contentsOfFile: path)
    let data_range = NSRange(location: 0, length: length * MemoryLayout<Float>.size)
    let ptr = UnsafeMutablePointer<Float>(OpaquePointer(target.dataPointer))
    input_data?.getBytes(ptr, range: data_range)
}
