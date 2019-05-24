//
//  io_function.swift
//  L2Norm_ios
//
//  Created by 张斯祺 on 2019/5/24.
//  Copyright © 2019 张斯祺. All rights reserved.
//

import Foundation
import CoreML

func FileToMLMultiArrayFloat(path: String, target: MLMultiArray, length: Int)
{
    let input_data = NSData(contentsOfFile: path)
    let data_range = NSRange(location: 0, length: length * MemoryLayout<Float>.size)
    let ptr = UnsafeMutablePointer<Float>(OpaquePointer(target.dataPointer))
    input_data?.getBytes(ptr, range: data_range)
}
