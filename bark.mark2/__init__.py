from mycroft.skills import (
    MycroftSkill,
    intent_handler
)

class Bark(MycroftSkill):
    def __init__(self, skill_id: str):
        super().__init__(skill_id=skill_id, name="BarkSkill")

    @intent_handler('bark.intent')
    def handle_bark(self, message):
        dialog="bark"
        gui = None
        return self.end_session(dialog=dialog, gui=gui)

def create_skill(skill_id: str):
    return Bark(skill_id=skill_id)
