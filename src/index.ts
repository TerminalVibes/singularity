/************************************************************
 * TYPES & INTERFACES
 * Description: Types and interfaces for the package
 * Last updated: Mar. 23, 2024
 ************************************************************/
type ColorTheme = {
	FontColor: Color3;
	MainColor: Color3;
	BackgroundColor: Color3;
	AccentColor: Color3;
	OutlineColor: Color3;
	RiskColor: Color3;
	Black: Color3;
};

namespace Configs {
	export type Window = {
		title: string;
		size: UDim2;
	};
}

/************************************************************
 * CONSTANTS
 * Description: Constants for the package
 * Last updated: Mar. 23, 2024
 ************************************************************/
const defaultTheme: ColorTheme = {
	FontColor: Color3.fromRGB(255, 255, 255),
	MainColor: Color3.fromRGB(28, 28, 28),
	BackgroundColor: Color3.fromRGB(20, 20, 20),
	AccentColor: Color3.fromRGB(0, 85, 255),
	OutlineColor: Color3.fromRGB(50, 50, 50),
	RiskColor: Color3.fromRGB(255, 50, 50),
	Black: new Color3(0, 0, 0),
};

/************************************************************
 * HANDLERS
 * Description: Handlers for interface components
 * Last updated: Mar. 23, 2024
 ************************************************************/
class ThemeHandler {
	protected theme: ColorTheme = { ...defaultTheme };

	public setTheme(theme: Partial<ColorTheme>) {
		this.theme = { ...this.theme, ...theme };
	}
}

/************************************************************
 * INSTANCES
 * Description: Actual instances that are rendered
 * Last updated: Mar. 23, 2024
 ************************************************************/
class WindowInstance {
	private config: Configs.Window;

	constructor(config: Configs.Window) {
		this.config = config;
	}

	public setTitle(title: string) {}
}

class TabInstance {}

class ContainerInstance {}

class GroupInstance extends ContainerInstance {}

class PanelInstance extends ContainerInstance {}

class SectionInstance extends ContainerInstance {}

class PanelSectionInstance {}

/************************************************************
 * BUILDERS
 * Description: Builders for interface components
 * Last updated: Mar. 23, 2024
 ************************************************************/
class WindowBuilder {
	protected _title: string = "Window";
	protected _size: UDim2 = UDim2.fromOffset(550, 600);
	protected _tabs: TabBuilder[] = [];

	public withTitle(title: string) {
		this._title = title;
		return this;
	}

	public withSize(size: UDim2) {
		this._size = size;
		return this;
	}

	public withTabs(tabs: TabBuilder[]) {
		this._tabs = tabs;
		return this;
	}

	/** @hidden */
	public build() {
		const window = new WindowInstance({
			title: this._title,
			size: this._size,
		});
	}
}

class TabBuilder {
	protected _title: string = "Tab";
	protected _containers: ContainerBuilder[] = [];
}

class ContainerBuilder {}

class GroupBuilder extends ContainerBuilder {}

class PanelBuilder extends ContainerBuilder {}

class SectionBuilder extends ContainerBuilder {}

class PanelSectionBuilder {}

/************************************************************
 * EXPORTS
 * Description: Exports everything in neat namespaces
 * Last updated: Mar. 23, 2024
 ************************************************************/
export namespace Singularity {
	export const Window = WindowBuilder;
	export const Tab = TabBuilder;
	export const Container = ContainerBuilder;
	export const Group = GroupBuilder;
	export const Panel = PanelBuilder;
	export const Section = SectionBuilder;
	export const PanelSection = PanelSectionBuilder;
}
