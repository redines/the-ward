extends Resource
class_name ItemResource

export var name : String
enum ItemType {QUEST, GENERIC, CONSUMABLE}
export(ItemType) var type
export var texture : Texture
