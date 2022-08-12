extends Node2D

signal game_complete(game_complete_text)

export(String, MULTILINE) var story_text = 'Finally becomes worth it.\n\nYou made it'

func _on_Area2D_body_entered(body:Node):
    if body.name == 'Player':
        emit_signal('game_complete', story_text)
