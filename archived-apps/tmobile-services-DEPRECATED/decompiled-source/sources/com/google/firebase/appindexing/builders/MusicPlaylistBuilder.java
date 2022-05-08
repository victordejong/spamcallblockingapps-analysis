package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/MusicPlaylistBuilder.class */
public class MusicPlaylistBuilder extends IndexableBuilder<MusicPlaylistBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MusicPlaylistBuilder() {
        super("MusicPlaylist");
    }

    public MusicPlaylistBuilder setNumTracks(int i) {
        return put("numTracks", i);
    }

    public MusicPlaylistBuilder setTrack(@NonNull MusicRecordingBuilder... musicRecordingBuilderArr) {
        return put("track", musicRecordingBuilderArr);
    }
}
