# Mycroft II Converted Skills

All the skills in the master branch of this library have
been ported and tested on a Mycroft II. 

## Resources 
It looks like a predecessor community attempted to get off the ground: https://community.mycroft.ai/t/united-skill-writers-draft/5490/9
There's a pretty much inactive [mattermost](https://mycroft.cloud.mattermost.com/community/channels/united_skill_writers) here. 

[Mycroft Forums](https://community.mycroft.ai/)


## Usage 

Prerequisites: 

[SSH has been setup on your mycroft](https://mycroft-ai.gitbook.io/mark-ii/advanced/ssh-access). 

### Steps 

*cd into the skills directory*

`cd /opt/mycroft-dinkum/skills` 

*create a directory for the skill*  

`mkdir bark.mark2` 

*clone this repo*  

`git clone https://github.com/jmillerv/converted-skills` 

*copy the skill you want into the folder you created*  

`cp -r converted-skill/* bark.mark2/` 

*Add skill to skills.json*  

`/opt/mycroft-dinkum/services/enclosure/service/skills.json` 

`{ "name": "Bark Skill", "skill_gid": "bark.mark2" }`

*Add skill to service*   

`/etc/systemd/system/dinkum-skills.service` 

`--skill /opt/mycroft-dinkum/skills/bark.mark2`

*Reload settings*   

`sudo systemctl daemon-reload`

*Restart Dinkum Skills*   

`sudo systemctl restart dinkum-skills.service`

## Troubleshooting 
The most useful log so far has been `journalctl -u dinkum-skills.service -f`
