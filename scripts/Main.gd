extends Node

func _on_Goal_game_complete(game_complete_text:String):
    $Player.toggle_game_over()
    $Messages/StoryLabel.text = game_complete_text
    $Messages/GameOverLabel.visible = true

func _on_StoryTrigger01_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger02_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger03_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger04_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger05_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger06_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger07_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger08_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger09_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text


func _on_StoryTrigger10_change_story_text(new_story_text:String):
    $Messages/StoryLabel.text = new_story_text

