package androidx.media2.exoplayer.external.source.hls;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsMasterPlaylist;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsManifest.class */
public final class HlsManifest {
    public final HlsMasterPlaylist masterPlaylist;
    public final HlsMediaPlaylist mediaPlaylist;

    public HlsManifest(HlsMasterPlaylist hlsMasterPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        this.masterPlaylist = hlsMasterPlaylist;
        this.mediaPlaylist = hlsMediaPlaylist;
    }
}
