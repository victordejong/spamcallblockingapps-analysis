package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
public final class HlsPlaylistTracker$PlaylistStuckException extends IOException {
    public final Uri url;

    public HlsPlaylistTracker$PlaylistStuckException(Uri uri) {
        this.url = uri;
    }
}
