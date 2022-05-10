package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1597d;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.AbstractC1628i;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1620e;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker.class */
public interface HlsPlaylistTracker {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a.class */
    public interface AbstractC0333a {
        /* renamed from: a */
        HlsPlaylistTracker mo32612a(AbstractC1597d dVar, AbstractC1700u uVar, AbstractC1628i iVar);
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b.class */
    public interface AbstractC0334b {
        /* renamed from: a */
        boolean mo32689a(Uri uri, long j);

        /* renamed from: c */
        void mo32682c();
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c.class */
    public interface AbstractC0335c {
        /* renamed from: a */
        void mo32679a(C1623f fVar);
    }

    /* renamed from: a */
    long mo32611a();

    /* renamed from: a */
    C1623f mo32606a(Uri uri, boolean z);

    /* renamed from: a */
    void mo32608a(Uri uri, AbstractC1533a0.C1534a aVar, AbstractC0335c cVar);

    /* renamed from: a */
    void mo32605a(AbstractC0334b bVar);

    /* renamed from: a */
    boolean mo32610a(Uri uri);

    /* renamed from: b */
    void mo32594b(Uri uri) throws IOException;

    /* renamed from: b */
    void mo32593b(AbstractC0334b bVar);

    /* renamed from: b */
    boolean mo32595b();

    /* renamed from: c */
    C1620e mo32590c();

    /* renamed from: c */
    void mo32589c(Uri uri);

    /* renamed from: d */
    void mo32586d() throws IOException;

    void stop();
}
