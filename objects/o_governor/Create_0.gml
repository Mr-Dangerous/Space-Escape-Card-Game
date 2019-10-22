//create the opposing factions in code, currently hardcoded in

//create bases

ds_list_add(base_list, base_left)
ds_list_add(base_list, base_right)
//create capital ships
var _capital_ship_left_far_top = instance_create_layer(288, 128, "Instances", base_left.capital_ship)
var _capital_ship_left_close_top = instance_create_layer(448, 128, "Instances", base_left.capital_ship)
var _capital_ship_left_far_bot = instance_create_layer(288, 512, "Instances", base_left.capital_ship)
var _capital_ship_left_close_bot = instance_create_layer(448, 512, "Instances", base_left.capital_ship)

var _capital_ship_right_far_top = instance_create_layer(992, 128, "Instances", base_right.capital_ship)
var _capital_ship_right_close_top = instance_create_layer(832, 128, "Instances", base_right.capital_ship)
var _capital_ship_right_far_bot = instance_create_layer(992, 512, "Instances", base_right.capital_ship)
var _capital_ship_right_close_bot = instance_create_layer(832, 512, "Instances", base_right.capital_ship)

//adjust variables for each

_capital_ship_left_far_top.lane = "top"
_capital_ship_left_close_top.lane = "top"
_capital_ship_left_far_bot.lane = "bot"
_capital_ship_left_close_bot.lane = "bot"
_capital_ship_right_close_top.lane = "top"
_capital_ship_right_far_bot.lane = "bot"
_capital_ship_right_close_bot.lane = "bot"
_capital_ship_right_far_top.lane = "top"


_capital_ship_left_far_top.position = "far"
_capital_ship_left_close_top.position = "close"
_capital_ship_left_far_bot.position = "far"
_capital_ship_left_close_bot.position = "close"
_capital_ship_right_far_top.position = "far"
_capital_ship_right_close_top.position = "close"
_capital_ship_right_far_bot.position = "far"
_capital_ship_right_close_bot.position = "close"

_capital_ship_left_far_top.team = "left"
_capital_ship_left_close_top.team = "left"
_capital_ship_left_far_bot.team = "left"
_capital_ship_left_close_bot.team = "left"
_capital_ship_right_far_top.team = "right"
_capital_ship_right_close_top.team = "right"
_capital_ship_right_far_bot.team = "right"
_capital_ship_right_close_bot.team = "right"



ds_list_add(capital_ship_list, _capital_ship_left_far_top)
ds_list_add(capital_ship_list, _capital_ship_left_close_top)
ds_list_add(capital_ship_list, _capital_ship_left_far_bot)
ds_list_add(capital_ship_list, _capital_ship_left_close_bot)
ds_list_add(capital_ship_list, _capital_ship_right_far_top)
ds_list_add(capital_ship_list, _capital_ship_right_close_top)
ds_list_add(capital_ship_list, _capital_ship_right_far_bot)
ds_list_add(capital_ship_list, _capital_ship_right_close_bot)


