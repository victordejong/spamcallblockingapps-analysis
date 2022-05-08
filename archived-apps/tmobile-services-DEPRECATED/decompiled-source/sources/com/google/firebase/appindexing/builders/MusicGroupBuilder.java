package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/MusicGroupBuilder.class */
public final class MusicGroupBuilder extends IndexableBuilder<MusicGroupBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MusicGroupBuilder() {
        super("MusicGroup");
    }

    public final MusicGroupBuilder setAlbum(@NonNull MusicAlbumBuilder... musicAlbumBuilderArr) {
        return put("album", musicAlbumBuilderArr);
    }

    public final MusicGroupBuilder setGenre(@NonNull String str) {
        return put("genre", str);
    }

    public final MusicGroupBuilder setTrack(@NonNull MusicRecordingBuilder... musicRecordingBuilderArr) {
        return put("track", musicRecordingBuilderArr);
    }
}
