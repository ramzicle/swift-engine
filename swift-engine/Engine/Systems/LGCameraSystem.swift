//
//  LGCameraSystem.swift
//  swift-engine
//
//  Created by Luke Godfrey on 8/1/14.
//  Copyright (c) 2014 Luke Godfrey. All rights reserved.
//

class LGCameraSystem: LGSystem
{
	var scene: LGScene
	
	var cameraPosition: LGPosition!
	var camera: LGCamera!
	
	init(scene: LGScene)
	{
		self.scene = scene
		
		super.init()
		self.updatePhase = .Render
	}
	
	override func accepts(entity: LGEntity) -> Bool
	{
		return entity.has(LGPosition) && entity.has(LGCamera)
	}
	
	override func add(entity: LGEntity)
	{
		cameraPosition	= entity.get(LGPosition)
		camera			= entity.get(LGCamera)
	}
	
	override func update()
	{
		
	}
}
