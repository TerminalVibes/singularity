/// <reference types="@rbxts/types" />
/// <reference types="@rbxts/types" />
/************************************************************
 * BUILDERS
 * Description: Builders for interface components
 * Last updated: Mar. 23, 2024
 ************************************************************/
declare class WindowBuilder {
    protected _title: string;
    protected _size: UDim2;
    protected _tabs: TabBuilder[];
    withTitle(title: string): this;
    withSize(size: UDim2): this;
    withTabs(tabs: TabBuilder[]): this;
    /** @hidden */
    build(): void;
}
declare class TabBuilder {
    protected _title: string;
    protected _containers: ContainerBuilder[];
}
declare class ContainerBuilder {
}
declare class GroupBuilder extends ContainerBuilder {
}
declare class PanelBuilder extends ContainerBuilder {
}
declare class SectionBuilder extends ContainerBuilder {
}
declare class PanelSectionBuilder {
}
/************************************************************
 * EXPORTS
 * Description: Exports everything in neat namespaces
 * Last updated: Mar. 23, 2024
 ************************************************************/
export declare namespace Singularity {
    const Window: typeof WindowBuilder;
    const Tab: typeof TabBuilder;
    const Container: typeof ContainerBuilder;
    const Group: typeof GroupBuilder;
    const Panel: typeof PanelBuilder;
    const Section: typeof SectionBuilder;
    const PanelSection: typeof PanelSectionBuilder;
}
export {};
