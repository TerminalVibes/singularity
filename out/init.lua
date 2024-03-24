-- Compiled with roblox-ts v2.3.0
--[[
	***********************************************************
	 * TYPES & INTERFACES
	 * Description: Types and interfaces for the package
	 * Last updated: Mar. 23, 2024
	 ***********************************************************
]]
--[[
	***********************************************************
	 * CONSTANTS
	 * Description: Constants for the package
	 * Last updated: Mar. 23, 2024
	 ***********************************************************
]]
local defaultTheme = {
	FontColor = Color3.fromRGB(255, 255, 255),
	MainColor = Color3.fromRGB(28, 28, 28),
	BackgroundColor = Color3.fromRGB(20, 20, 20),
	AccentColor = Color3.fromRGB(0, 85, 255),
	OutlineColor = Color3.fromRGB(50, 50, 50),
	RiskColor = Color3.fromRGB(255, 50, 50),
	Black = Color3.new(0, 0, 0),
}
--[[
	***********************************************************
	 * HANDLERS
	 * Description: Handlers for interface components
	 * Last updated: Mar. 23, 2024
	 ***********************************************************
]]
local ThemeHandler
do
	ThemeHandler = setmetatable({}, {
		__tostring = function()
			return "ThemeHandler"
		end,
	})
	ThemeHandler.__index = ThemeHandler
	function ThemeHandler.new(...)
		local self = setmetatable({}, ThemeHandler)
		return self:constructor(...) or self
	end
	function ThemeHandler:constructor()
		local _object = table.clone(defaultTheme)
		setmetatable(_object, nil)
		self.theme = _object
	end
	function ThemeHandler:setTheme(theme)
		local _object = table.clone(self.theme)
		setmetatable(_object, nil)
		for _k, _v in theme do
			_object[_k] = _v
		end
		self.theme = _object
	end
	function ThemeHandler:bind(obj, key, value)
		obj[key] = value
	end
end
--[[
	***********************************************************
	 * INSTANCES
	 * Description: Actual instances that are rendered
	 * Last updated: Mar. 23, 2024
	 ***********************************************************
]]
local WindowInstance
do
	WindowInstance = setmetatable({}, {
		__tostring = function()
			return "WindowInstance"
		end,
	})
	WindowInstance.__index = WindowInstance
	function WindowInstance.new(...)
		local self = setmetatable({}, WindowInstance)
		return self:constructor(...) or self
	end
	function WindowInstance:constructor(config)
		self.config = config
	end
	function WindowInstance:setTitle(title)
	end
end
local TabInstance
do
	TabInstance = setmetatable({}, {
		__tostring = function()
			return "TabInstance"
		end,
	})
	TabInstance.__index = TabInstance
	function TabInstance.new(...)
		local self = setmetatable({}, TabInstance)
		return self:constructor(...) or self
	end
	function TabInstance:constructor()
	end
end
local ContainerInstance
do
	ContainerInstance = setmetatable({}, {
		__tostring = function()
			return "ContainerInstance"
		end,
	})
	ContainerInstance.__index = ContainerInstance
	function ContainerInstance.new(...)
		local self = setmetatable({}, ContainerInstance)
		return self:constructor(...) or self
	end
	function ContainerInstance:constructor()
	end
end
local GroupInstance
do
	local super = ContainerInstance
	GroupInstance = setmetatable({}, {
		__tostring = function()
			return "GroupInstance"
		end,
		__index = super,
	})
	GroupInstance.__index = GroupInstance
	function GroupInstance.new(...)
		local self = setmetatable({}, GroupInstance)
		return self:constructor(...) or self
	end
	function GroupInstance:constructor(...)
		super.constructor(self, ...)
	end
end
local PanelInstance
do
	local super = ContainerInstance
	PanelInstance = setmetatable({}, {
		__tostring = function()
			return "PanelInstance"
		end,
		__index = super,
	})
	PanelInstance.__index = PanelInstance
	function PanelInstance.new(...)
		local self = setmetatable({}, PanelInstance)
		return self:constructor(...) or self
	end
	function PanelInstance:constructor(...)
		super.constructor(self, ...)
	end
end
local SectionInstance
do
	local super = ContainerInstance
	SectionInstance = setmetatable({}, {
		__tostring = function()
			return "SectionInstance"
		end,
		__index = super,
	})
	SectionInstance.__index = SectionInstance
	function SectionInstance.new(...)
		local self = setmetatable({}, SectionInstance)
		return self:constructor(...) or self
	end
	function SectionInstance:constructor(...)
		super.constructor(self, ...)
	end
end
local PanelSectionInstance
do
	PanelSectionInstance = setmetatable({}, {
		__tostring = function()
			return "PanelSectionInstance"
		end,
	})
	PanelSectionInstance.__index = PanelSectionInstance
	function PanelSectionInstance.new(...)
		local self = setmetatable({}, PanelSectionInstance)
		return self:constructor(...) or self
	end
	function PanelSectionInstance:constructor()
	end
end
--[[
	***********************************************************
	 * BUILDERS
	 * Description: Builders for interface components
	 * Last updated: Mar. 23, 2024
	 ***********************************************************
]]
local WindowBuilder
do
	WindowBuilder = setmetatable({}, {
		__tostring = function()
			return "WindowBuilder"
		end,
	})
	WindowBuilder.__index = WindowBuilder
	function WindowBuilder.new(...)
		local self = setmetatable({}, WindowBuilder)
		return self:constructor(...) or self
	end
	function WindowBuilder:constructor()
		self._title = "Window"
		self._size = UDim2.fromOffset(550, 600)
		self._tabs = {}
	end
	function WindowBuilder:withTitle(title)
		self._title = title
		return self
	end
	function WindowBuilder:withSize(size)
		self._size = size
		return self
	end
	function WindowBuilder:withTabs(tabs)
		self._tabs = tabs
		return self
	end
	function WindowBuilder:build()
		local window = WindowInstance.new({
			title = self._title,
			size = self._size,
		})
	end
end
local TabBuilder
do
	TabBuilder = setmetatable({}, {
		__tostring = function()
			return "TabBuilder"
		end,
	})
	TabBuilder.__index = TabBuilder
	function TabBuilder.new(...)
		local self = setmetatable({}, TabBuilder)
		return self:constructor(...) or self
	end
	function TabBuilder:constructor()
		self._title = "Tab"
		self._containers = {}
	end
end
local ContainerBuilder
do
	ContainerBuilder = setmetatable({}, {
		__tostring = function()
			return "ContainerBuilder"
		end,
	})
	ContainerBuilder.__index = ContainerBuilder
	function ContainerBuilder.new(...)
		local self = setmetatable({}, ContainerBuilder)
		return self:constructor(...) or self
	end
	function ContainerBuilder:constructor()
	end
end
local GroupBuilder
do
	local super = ContainerBuilder
	GroupBuilder = setmetatable({}, {
		__tostring = function()
			return "GroupBuilder"
		end,
		__index = super,
	})
	GroupBuilder.__index = GroupBuilder
	function GroupBuilder.new(...)
		local self = setmetatable({}, GroupBuilder)
		return self:constructor(...) or self
	end
	function GroupBuilder:constructor(...)
		super.constructor(self, ...)
	end
end
local PanelBuilder
do
	local super = ContainerBuilder
	PanelBuilder = setmetatable({}, {
		__tostring = function()
			return "PanelBuilder"
		end,
		__index = super,
	})
	PanelBuilder.__index = PanelBuilder
	function PanelBuilder.new(...)
		local self = setmetatable({}, PanelBuilder)
		return self:constructor(...) or self
	end
	function PanelBuilder:constructor(...)
		super.constructor(self, ...)
	end
end
local SectionBuilder
do
	local super = ContainerBuilder
	SectionBuilder = setmetatable({}, {
		__tostring = function()
			return "SectionBuilder"
		end,
		__index = super,
	})
	SectionBuilder.__index = SectionBuilder
	function SectionBuilder.new(...)
		local self = setmetatable({}, SectionBuilder)
		return self:constructor(...) or self
	end
	function SectionBuilder:constructor(...)
		super.constructor(self, ...)
	end
end
local PanelSectionBuilder
do
	PanelSectionBuilder = setmetatable({}, {
		__tostring = function()
			return "PanelSectionBuilder"
		end,
	})
	PanelSectionBuilder.__index = PanelSectionBuilder
	function PanelSectionBuilder.new(...)
		local self = setmetatable({}, PanelSectionBuilder)
		return self:constructor(...) or self
	end
	function PanelSectionBuilder:constructor()
	end
end
--[[
	***********************************************************
	 * EXPORTS
	 * Description: Exports everything in neat namespaces
	 * Last updated: Mar. 23, 2024
	 ***********************************************************
]]
local Singularity = {}
do
	local _container = Singularity
	local Window = WindowBuilder
	_container.Window = Window
	local Tab = TabBuilder
	_container.Tab = Tab
	local Container = ContainerBuilder
	_container.Container = Container
	local Group = GroupBuilder
	_container.Group = Group
	local Panel = PanelBuilder
	_container.Panel = Panel
	local Section = SectionBuilder
	_container.Section = Section
	local PanelSection = PanelSectionBuilder
	_container.PanelSection = PanelSection
end
return {
	Singularity = Singularity,
}
