//
//  LGVector.swift
//  swift-engine
//
//  Created by Luke Godfrey on 7/14/14.
//  Copyright (c) 2014 Luke Godfrey. All rights reserved.
//

class LGVector
{
	var x = 0.0
	var y = 0.0
	
	init() {}
	
	convenience init(x: Double, y: Double)
	{
		self.init()
		self.x = x
		self.y = y
	}
}

@infix func + (left: LGVector, right: LGVector) -> LGVector
{
	return LGVector(x: left.x + right.x, y: left.y + right.y)
}

@infix func - (left: LGVector, right: LGVector) -> LGVector
{
	return LGVector(x: left.x - right.x, y: left.y - right.y)
}

@prefix func - (vector: LGVector) -> LGVector
{
	return LGVector(x: -vector.x, y: -vector.y)
}

@assignment func += (inout left: LGVector, right: LGVector)
{
	left = left + right
}
