#!/usr/bin/env python

__author__ = 'Zach Seifts <zach.seifts@gmail.com>'
__version__ = '1.0'

import os
import time

from random import choice
from datetime import datetime
from appscript import *

cmd = 'osascript -e "set Volume %d"'

class NoPlaylistExists(Exception): pass

class Playlist(object):
    ''' Represents a iTunes playlist. '''
    
    def __init__(self, **kwargs):
        os.system('open -a iTunes')
        self.playlist_title = kwargs.get('playlist_title', 'Live @')
        self.get_playlist_by_title()
        self.play()

    def get_playlist_by_title(self):
        ''' Sets the playlist and tracks according to the title. '''
        playlists = [a for a in app('iTunes').playlists()]
        for l in playlists:
            if l.name() == self.playlist_title:
                self.playlist = l
                self.tracks = l.tracks()
                break
        if not hasattr(self, 'playlist'):
            raise NoPlaylistExists

    def _get_random_song(self):
        return choice(self.tracks)
    random_song = property(_get_random_song)

    def play(self):
        song = self.random_song()
        song.play()


def main():
    start_time = datetime.now()
    min_volume = 0
    max_volume = 10
    snooze = 20

    os.system(cmd % min_volume)
    pl = Playlist()

    for i in range(max_volume):
        os.system(cmd % (i,))
        time.sleep(snooze)

if __name__ == '__main__':
    main()

