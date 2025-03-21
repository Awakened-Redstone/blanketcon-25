local Registries = require("net.minecraft.registry.Registries")
local Registry = require("net.minecraft.registry.Registry")
local Identifier = require("net.minecraft.util.Identifier")
local BlockItem = require("net.minecraft.item.BlockItem")
local AbstractBlockSettings = require("net.minecraft.block.AbstractBlock$Settings")
local Block = require("net.minecraft.block.Block")
local Item = require("net.minecraft.item.Item")
local ItemSettings = require("net.minecraft.item.Item$Settings")
local MapColor = require("net.minecraft.block.MapColor")

Registry.register(Registries.ITEM, Identifier.of("fancy_items_mod", "cherry_blossom_cake"), Item(ItemSettings()))
Registry.register(Registries.ITEM, Identifier.of("fancy_items_mod", "blossom_dust"), Item(ItemSettings()))

local cauldron = Block(AbstractBlockSettings.create():mapColor(MapColor.STONE_GRAY):requiresTool():strength(2.0):nonOpaque())
Registry.register(Registries.BLOCK, Identifier.of("fancy_items_mod", "cauldron"), cauldron)
Registry.register(Registries.ITEM, Identifier.of("fancy_items_mod", "cauldron"), BlockItem(cauldron, ItemSettings()))
