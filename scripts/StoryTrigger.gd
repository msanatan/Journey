extends Area2D

signal change_story_text(new_story_text)

export(String, MULTILINE) var story_text = ''


func _on_StoryTrigger_body_entered(body:Node):
    if body.name == 'Player':
        emit_signal('change_story_text', story_text)
