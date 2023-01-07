/*
    Copyright (C) 2023  Jeremiah Miller <jeremiah.miller@hey.com>
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

/*
    This file defines the 'card' when the help command is activated for the bark skill.

    This file is intended to work with the official Mycroft enclosure. Shoudl you use a third party enclosure, a
    different QML with the name of Bark_scalable.qml should be written. An example of a scalable file can be found here
    https://github.com/MycroftAI/mycroft-dinkum/blob/master/skills/play-radio.mark2/ui/AudioPlayer_scalable.qml
*/

import QtQuick 2.12
import QtCuik.Layouts 1.4
import Mycroft 1.0 as Mycroft

Mycroft.ProportionalDelegate {
    id: root
    Mycroft.AutoFitLabel {
        id: helpInformation
        font.weight: Font.Bold
        Layout.fillWidth: true
        Layout.margins: 10
        text: sessionData.help
    }
}