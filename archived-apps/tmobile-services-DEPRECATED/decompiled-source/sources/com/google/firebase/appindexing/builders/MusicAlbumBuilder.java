package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/MusicAlbumBuilder.class */
public final class MusicAlbumBuilder extends IndexableBuilder<MusicAlbumBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MusicAlbumBuilder() {
        super("MusicAlbum");
    }

    public final MusicAlbumBuilder setByArtist(@NonNull MusicGroupBuilder musicGroupBuilder) {
        return put("byArtist", musicGroupBuilder);
    }

    public final MusicAlbumBuilder setNumTracks(int i) {
        return put("numTracks", i);
    }

    public final MusicAlbumBuilder setTrack(@NonNull MusicRecordingBuilder... musicRecordingBuilderArr) {
        return put("track", musicRecordingBuilderArr);
    }
}
