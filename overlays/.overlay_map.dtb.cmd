cmd_arch/arm/boot/dts/overlays/overlay_map.dtb := mkdir -p arch/arm/boot/dts/overlays/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/overlays/.overlay_map.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/overlays/.overlay_map.dtb.dts.tmp arch/arm/boot/dts/overlays/overlay_map.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/overlays/overlay_map.dtb -b 0 -iarch/arm/boot/dts/overlays/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-gpios_property -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm/boot/dts/overlays/.overlay_map.dtb.d.dtc.tmp arch/arm/boot/dts/overlays/.overlay_map.dtb.dts.tmp ; cat arch/arm/boot/dts/overlays/.overlay_map.dtb.d.pre.tmp arch/arm/boot/dts/overlays/.overlay_map.dtb.d.dtc.tmp > arch/arm/boot/dts/overlays/.overlay_map.dtb.d

source_arch/arm/boot/dts/overlays/overlay_map.dtb := arch/arm/boot/dts/overlays/overlay_map.dts

deps_arch/arm/boot/dts/overlays/overlay_map.dtb := \

arch/arm/boot/dts/overlays/overlay_map.dtb: $(deps_arch/arm/boot/dts/overlays/overlay_map.dtb)

$(deps_arch/arm/boot/dts/overlays/overlay_map.dtb):
