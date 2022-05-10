package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
public final class HlsPlaylistTracker$PlaylistResetException extends IOException {
    public final Uri url;

    public HlsPlaylistTracker$PlaylistResetException(Uri uri) {
        this.url = uri;
    }
}
