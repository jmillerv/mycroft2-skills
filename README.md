# Mycroft II Converted Skills

All the skills in the master branch of this library have
been ported and tested on a Mycroft II. 

## Resources 
It looks like a predecessor community attempted to get off the ground: https://community.mycroft.ai/t/united-skill-writers-draft/5490
There's a pretty much inactive [mattermost](https://mycroft.cloud.mattermost.com/community/channels/united_skill_writers) here. 

[Mycroft Forums](https://community.mycroft.ai/)



## Usage 

Prerequisites: 

[SSH has been setup on your mycroft](https://mycroft-ai.gitbook.io/mark-ii/advanced/ssh-access). 

### Steps 

*cd into /opt*

`cd /opt`

*clone this repo*  

`git clone https://github.com/jmillerv/mycroft2-skills` 

*Change directory to the dinkum skills directory*

`cd /opt/mycroft-dinkum/skills`


*create a symbolic link to the skill you want*

`ln -s /opt/converted-skills/bark.mark2`

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

## Development Recommendation
To avoid problems when restarting, I've found that setting mycroft to a reserved IP address on my router provides stability between reboots. At the very least it'll prevent you from trying to SSH into an IP address that isn't assigned after a lease expiration. 
