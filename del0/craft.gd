extends Button

@onready var count: Control = $count
func _ready() -> void:
	count.del_update.connect(update0)

func update0():
	craft_count = count.del_count * (1000 ** count.del_power)

var craft_count: int = 0
var del0count: int = 1
var del1count: int = 0
var del2count: int = 0
func _on_craft_pressed() -> void:
	match AsasManager.hold_item_id:
# plant ################################################################
# fert ################################################################
# ect ################################################################
		AaaaGlobal.id_shovel:
			if AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count * craft_count and AsdaInventory.stone >= 8 * craft_count * craft_count:
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count * craft_count)
				AsdaInventory.add_stone(-1 * 8 * craft_count * craft_count)
				AsdaInventory.add_shovel(1 * craft_count * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_axe:
			if AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count and AsdaInventory.stone >= 18 * craft_count:
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_stone(-1 * 18 * craft_count)
				AsdaInventory.add_axe(1 * craft_count)
			else:
				craft_max()
				return
# fish ################################################################
		AaaaGlobal.id_bait:
			if AsdaInventory.fish >= 1 * craft_count:
				AsdaInventory.add_fish(-1 * 1 * craft_count)
				AsdaInventory.add_bait(6 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_fish_rod:
			if AsdaInventory.wood >= 18 * craft_count:
				AsdaInventory.add_wood(-1 * 18 * craft_count)
				AsdaInventory.add_fish_rod(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_crab_pot:
			if AsdaInventory.wood >= 15 * craft_count and AsdaInventory.bait >= 10 * craft_count:
				AsdaInventory.add_wood(-1 * 15 * craft_count)
				AsdaInventory.add_bait(-1 * 10 * craft_count)
				AsdaInventory.add_crab_pot(1 * craft_count)
			else:
				craft_max()
				return
# mineral ################################################################
		AaaaGlobal.id_cese_pick:
			if AsdaInventory.cese >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_cese(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_cese_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_cese_knife:
			if AsdaInventory.cese >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_cese(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_cese_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_cese_shield:
			if AsdaInventory.cese >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_cese(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_cese_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_lowaral_pick:
			if AsdaInventory.lowaral >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_lowaral(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_lowaral_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_lowaral_knife:
			if AsdaInventory.lowaral >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_lowaral(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_lowaral_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_lowaral_shield:
			if AsdaInventory.lowaral >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_lowaral(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_lowaral_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_iena_pick:
			if AsdaInventory.iena >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_iena(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_iena_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_iena_knife:
			if AsdaInventory.iena >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_iena(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_iena_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_iena_shield:
			if AsdaInventory.iena >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_iena(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_iena_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_midaral_pick:
			if AsdaInventory.midaral >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_midaral(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_midaral_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_midaral_knife:
			if AsdaInventory.midaral >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_midaral(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_midaral_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_midaral_shield:
			if AsdaInventory.midaral >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_midaral(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_midaral_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_graize_pick:
			if AsdaInventory.graize >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_graize(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_graize_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_graize_knife:
			if AsdaInventory.graize >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_graize(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_graize_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_graize_shield:
			if AsdaInventory.graize >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_graize(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_graize_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_higaral_pick:
			if AsdaInventory.higaral >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_higaral(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_higaral_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_higaral_knife:
			if AsdaInventory.higaral >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_higaral(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_higaral_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_higaral_shield:
			if AsdaInventory.higaral >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_higaral(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_higaral_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_adanto_pick:
			if AsdaInventory.adanto >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_adanto(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_adanto_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_adanto_knife:
			if AsdaInventory.adanto >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_adanto(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_adanto_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_adanto_shield:
			if AsdaInventory.adanto >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_adanto(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_adanto_shield(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_maxaral_pick:
			if AsdaInventory.maxaral >= AaaaGlobal.recipe_pick_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count0 * craft_count:
				AsdaInventory.add_maxaral(-1 * AaaaGlobal.recipe_pick_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count0 * craft_count)
				AsdaInventory.add_maxaral_pick(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_maxaral_knife:
			if AsdaInventory.maxaral >= AaaaGlobal.recipe_knife_count * craft_count and AsdaInventory.wood >= AaaaGlobal.recipe_wood_count1 * craft_count:
				AsdaInventory.add_maxaral(-1 * AaaaGlobal.recipe_knife_count * craft_count)
				AsdaInventory.add_wood(-1 * AaaaGlobal.recipe_wood_count1 * craft_count)
				AsdaInventory.add_maxaral_knife(1 * craft_count)
			else:
				craft_max()
				return
		AaaaGlobal.id_maxaral_shield:
			if AsdaInventory.maxaral >= AaaaGlobal.recipe_shield_count * craft_count:
				AsdaInventory.add_maxaral(-1 * AaaaGlobal.recipe_shield_count * craft_count)
				AsdaInventory.add_maxaral_shield(1 * craft_count)
			else:
				craft_max()
				return
	update0()

func craft_max():
	match AsasManager.hold_item_id:
# plant ################################################################
# fert ################################################################
# ect ################################################################
		AaaaGlobal.id_shovel:
			del1count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			del2count = AsdaInventory.stone / 8
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_axe:
			del1count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0 
			del2count = AsdaInventory.stone / 18
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
# fish ################################################################
		AaaaGlobal.id_bait:
			del1count = AsdaInventory.fish / 1
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_fish_rod:
			del1count = AsdaInventory.wood / 18
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_crab_pot:
			del1count = AsdaInventory.wood / 15 
			del2count = AsdaInventory.bait / 10
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
# mineral ################################################################
		AaaaGlobal.id_cese_pick:
			del1count = AsdaInventory.cese / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_cese_knife:
			del1count = AsdaInventory.cese / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_cese_shield:
			del1count = AsdaInventory.cese / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_lowaral_pick:
			del1count = AsdaInventory.lowaral / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_lowaral_knife:
			del1count = AsdaInventory.lowaral / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_lowaral_shield:
			del1count = AsdaInventory.lowaral / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_iena_pick:
			del1count = AsdaInventory.iena / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_iena_knife:
			del1count = AsdaInventory.iena / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_iena_shield:
			del1count = AsdaInventory.iena / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_midaral_pick:
			del1count = AsdaInventory.midaral / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_midaral_knife:
			del1count = AsdaInventory.midaral / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_midaral_shield:
			del1count = AsdaInventory.midaral / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_graize_pick:
			del1count = AsdaInventory.graize / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_graize_knife:
			del1count = AsdaInventory.graize / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_graize_shield:
			del1count = AsdaInventory.graize / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_higaral_pick:
			del1count = AsdaInventory.higaral / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_higaral_knife:
			del1count = AsdaInventory.higaral / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_higaral_shield:
			del1count = AsdaInventory.higaral / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_adanto_pick:
			del1count = AsdaInventory.adanto / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_adanto_knife:
			del1count = AsdaInventory.adanto / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_adanto_shield:
			del1count = AsdaInventory.adanto / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_maxaral_pick:
			del1count = AsdaInventory.maxaral / AaaaGlobal.recipe_pick_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count0
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_maxaral_knife:
			del1count = AsdaInventory.maxaral / AaaaGlobal.recipe_knife_count 
			del2count = AsdaInventory.wood / AaaaGlobal.recipe_wood_count1
			craft_count = min(del1count, del2count)
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
		AaaaGlobal.id_maxaral_shield:
			del1count = AsdaInventory.maxaral / AaaaGlobal.recipe_shield_count
			craft_count = del1count
			if craft_count == 0:
				update0()
				return
			_on_craft_pressed()
