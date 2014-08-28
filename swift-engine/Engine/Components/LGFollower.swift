//
//  LGFollower.swift
//  swift-engine
//
//  Created by Luke Godfrey on 8/2/14.
//  Copyright (c) 2014 Luke Godfrey. See LICENSE.
//

public class LGFollower: LGComponent
{
	public class func type() -> String
	{
		return "LGFollower"
	}
	
	public func type() -> String
	{
		return LGFollower.type()
	}
	
	weak var following: LGEntity?
	var axis: LGAxis
	var followerType: LGFollowerType
	
	public init(following: LGEntity, axis: LGAxis, followerType: LGFollowerType)
	{
		self.following		= following
		self.axis			= axis
		self.followerType	= followerType
	}
	
	public convenience init(following: LGEntity, axis: LGAxis)
	{
		self.init(following: following, axis: axis, followerType: .Velocity)
	}
	
	public convenience init(following: LGEntity)
	{
		self.init(following: following, axis: .Both)
	}
	
	public enum LGFollowerType
	{
		case Velocity, Position(LGVector)
	}
}
