class Bark(MycroftSkill):
    def __init__(self, skill_id: str):
        super().__init__(skill_id=skill_id, name="BarkSkill")

    @intent_file_handler('bark.intent')
    def handle_bark(self, message):
        dialog="bark"
        gui = None
        return self.end_session(dialog=dialog, gui=gui)

    @intent_file_handler('bark.intent')
    def handle_bark(self, message):
        dialog="bark help"
        gui = None
        return self.end_session(dialog=dialog, gui=gui)

    def gui_show(self, help):
        return ("bark_mark_ii.qml", "help", help)

def create_skill(skill_id: str):
    return Bark(skill_id=skill_id)
