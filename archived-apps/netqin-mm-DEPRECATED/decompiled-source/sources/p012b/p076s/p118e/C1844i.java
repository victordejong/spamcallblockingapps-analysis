package p012b.p076s.p118e;

import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import p012b.p076s.p077a.AbstractC1154a;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* renamed from: b.s.e.i */
/* loaded from: classes-dex2jar.jar:b/s/e/i.class */
public class C1844i {

    /* renamed from: a */
    public final MediaController f7360a;

    /* renamed from: b */
    public final SessionPlayer f7361b;

    /* renamed from: c */
    public final Executor f7362c;

    /* renamed from: d */
    public final AbstractC1846b f7363d;

    /* renamed from: e */
    public final C1845a f7364e;

    /* renamed from: f */
    public final C1847c f7365f;

    /* renamed from: g */
    public boolean f7366g;

    /* renamed from: h */
    public int f7367h = 0;

    /* renamed from: i */
    public SessionCommandGroup f7368i;

    /* renamed from: j */
    public MediaMetadata f7369j;

    /* renamed from: k */
    public final SessionCommandGroup f7370k;

    /* renamed from: b.s.e.i$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/i$a.class */
    public class C1845a extends MediaController.AbstractC0421a {
        public C1845a(C1844i iVar) {
        }
    }

    /* renamed from: b.s.e.i$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/i$b.class */
    public static abstract class AbstractC1846b {
        /* renamed from: a */
        public void mo31907a(C1844i iVar) {
        }

        /* renamed from: a */
        public void mo31906a(C1844i iVar, float f) {
        }

        /* renamed from: a */
        public abstract void mo31905a(C1844i iVar, int i);

        /* renamed from: a */
        public void mo31904a(C1844i iVar, long j) {
        }

        /* renamed from: a */
        public abstract void mo31903a(C1844i iVar, MediaItem mediaItem);

        /* renamed from: a */
        public void mo31902a(C1844i iVar, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* renamed from: a */
        public abstract void mo31901a(C1844i iVar, MediaItem mediaItem, VideoSize videoSize);

        /* renamed from: a */
        public abstract void mo31900a(C1844i iVar, SessionPlayer.TrackInfo trackInfo);

        /* renamed from: a */
        public void mo31899a(C1844i iVar, SessionCommandGroup sessionCommandGroup) {
        }

        /* renamed from: a */
        public abstract void mo31898a(C1844i iVar, List<SessionPlayer.TrackInfo> list);

        /* renamed from: a */
        public void mo31897a(C1844i iVar, List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        /* renamed from: b */
        public abstract void mo31896b(C1844i iVar, SessionPlayer.TrackInfo trackInfo);
    }

    /* renamed from: b.s.e.i$c */
    /* loaded from: classes-dex2jar.jar:b/s/e/i$c.class */
    public class C1847c extends SessionPlayer.AbstractC0277a {
        public C1847c() {
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, MediaItem mediaItem) {
            C1844i.this.f7369j = mediaItem == null ? null : mediaItem.m38232i();
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31903a(iVar, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31907a(iVar);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onPlaybackSpeedChanged(SessionPlayer sessionPlayer, float f) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31906a(iVar, f);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
            C1844i iVar = C1844i.this;
            if (iVar.f7367h != i) {
                iVar.f7367h = i;
                iVar.f7363d.mo31905a(iVar, i);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onPlaylistChanged(SessionPlayer sessionPlayer, List<MediaItem> list, MediaMetadata mediaMetadata) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31897a(iVar, list, mediaMetadata);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31904a(iVar, j);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onSubtitleData(SessionPlayer sessionPlayer, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31902a(iVar, mediaItem, trackInfo, subtitleData);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onTrackDeselected(SessionPlayer sessionPlayer, SessionPlayer.TrackInfo trackInfo) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31900a(iVar, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onTrackInfoChanged(SessionPlayer sessionPlayer, List<SessionPlayer.TrackInfo> list) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31898a(iVar, list);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onTrackSelected(SessionPlayer sessionPlayer, SessionPlayer.TrackInfo trackInfo) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31896b(iVar, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onVideoSizeChangedInternal(SessionPlayer sessionPlayer, MediaItem mediaItem, VideoSize videoSize) {
            C1844i iVar = C1844i.this;
            iVar.f7363d.mo31901a(iVar, mediaItem, videoSize);
        }
    }

    public C1844i(SessionPlayer sessionPlayer, Executor executor, AbstractC1846b bVar) {
        if (sessionPlayer == null) {
            throw new NullPointerException("player must not be null");
        } else if (executor == null) {
            throw new NullPointerException("executor must not be null");
        } else if (bVar != null) {
            this.f7361b = sessionPlayer;
            this.f7362c = executor;
            this.f7363d = bVar;
            this.f7365f = new C1847c();
            this.f7360a = null;
            this.f7364e = null;
            SessionCommandGroup.C0431a aVar = new SessionCommandGroup.C0431a();
            aVar.m37718e(1);
            this.f7370k = aVar.m37726a();
        } else {
            throw new NullPointerException("callback must not be null");
        }
    }

    public C1844i(MediaController mediaController, Executor executor, AbstractC1846b bVar) {
        if (mediaController == null) {
            throw new NullPointerException("controller must not be null");
        } else if (executor == null) {
            throw new NullPointerException("executor must not be null");
        } else if (bVar != null) {
            this.f7360a = mediaController;
            this.f7362c = executor;
            this.f7363d = bVar;
            this.f7364e = new C1845a(this);
            this.f7361b = null;
            this.f7365f = null;
            this.f7370k = null;
        } else {
            throw new NullPointerException("callback must not be null");
        }
    }

    /* renamed from: A */
    public void m31943A() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37832m();
                return;
            }
            return;
        }
        mediaController.m37755n();
        throw null;
    }

    /* renamed from: B */
    public void m31942B() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37831n();
                return;
            }
            return;
        }
        mediaController.m37754p();
        throw null;
    }

    /* renamed from: C */
    public void m31941C() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37830p();
                return;
            }
            return;
        }
        mediaController.m37753q();
        throw null;
    }

    /* renamed from: D */
    public void m31940D() {
        boolean z;
        int r = m31916r();
        boolean z2 = true;
        if (this.f7367h != r) {
            this.f7367h = r;
            z = true;
        } else {
            z = false;
        }
        SessionCommandGroup j = m31924j();
        if (this.f7368i != j) {
            this.f7368i = j;
        } else {
            z2 = false;
        }
        MediaItem m = m31921m();
        this.f7369j = m == null ? null : m.m38232i();
        if (z) {
            this.f7363d.mo31905a(this, r);
        }
        if (j != null && z2) {
            this.f7363d.mo31899a(this, j);
        }
        this.f7363d.mo31903a(this, m);
        m31909y();
    }

    /* renamed from: a */
    public SessionPlayer.TrackInfo m31937a(int i) {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37877a(i);
            }
            return null;
        }
        mediaController.m37774a(i);
        throw null;
    }

    /* renamed from: a */
    public AbstractFutureC5108l<? extends AbstractC1154a> m31935a(Surface surface) {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37872a(surface);
            }
            return null;
        }
        mediaController.m37773a(surface);
        throw null;
    }

    /* renamed from: a */
    public void m31939a() {
        if (!this.f7366g) {
            MediaController mediaController = this.f7360a;
            if (mediaController == null) {
                SessionPlayer sessionPlayer = this.f7361b;
                if (sessionPlayer != null) {
                    sessionPlayer.m38218a(this.f7362c, this.f7365f);
                }
                m31940D();
                this.f7366g = true;
                return;
            }
            mediaController.m37770a(this.f7362c, this.f7364e);
            throw null;
        }
    }

    /* renamed from: a */
    public void m31938a(float f) {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37878a(f);
                return;
            }
            return;
        }
        mediaController.m37775a(f);
        throw null;
    }

    /* renamed from: a */
    public void m31936a(long j) {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37843d(j);
                return;
            }
            return;
        }
        mediaController.m37765d(j);
        throw null;
    }

    /* renamed from: a */
    public void m31934a(SessionPlayer.TrackInfo trackInfo) {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37867a(trackInfo);
                return;
            }
            return;
        }
        mediaController.m37772a(trackInfo);
        throw null;
    }

    /* renamed from: b */
    public void m31932b(SessionPlayer.TrackInfo trackInfo) {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37853b(trackInfo);
                return;
            }
            return;
        }
        mediaController.m37768b(trackInfo);
        throw null;
    }

    /* renamed from: b */
    public boolean m31933b() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(10001);
    }

    /* renamed from: c */
    public boolean m31931c() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(40001);
    }

    /* renamed from: d */
    public boolean m31930d() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(40000);
    }

    /* renamed from: e */
    public boolean m31929e() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(10003);
    }

    /* renamed from: f */
    public boolean m31928f() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(11001) && this.f7368i.m37727a(11002);
    }

    /* renamed from: g */
    public boolean m31927g() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(10009);
    }

    /* renamed from: h */
    public boolean m31926h() {
        SessionCommandGroup sessionCommandGroup = this.f7368i;
        return sessionCommandGroup != null && sessionCommandGroup.m37727a(10008);
    }

    /* renamed from: i */
    public void m31925i() {
        if (this.f7366g) {
            MediaController mediaController = this.f7360a;
            if (mediaController == null) {
                SessionPlayer sessionPlayer = this.f7361b;
                if (sessionPlayer != null) {
                    sessionPlayer.m38219a(this.f7365f);
                }
                this.f7366g = false;
                return;
            }
            mediaController.m37771a(this.f7364e);
            throw null;
        }
    }

    /* renamed from: j */
    public final SessionCommandGroup m31924j() {
        MediaController mediaController = this.f7360a;
        if (mediaController != null) {
            mediaController.m37776a();
            throw null;
        } else if (this.f7361b != null) {
            return this.f7370k;
        } else {
            return null;
        }
    }

    /* renamed from: k */
    public CharSequence m31923k() {
        MediaMetadata mediaMetadata = this.f7369j;
        if (mediaMetadata == null || !mediaMetadata.m38230a("android.media.metadata.ARTIST")) {
            return null;
        }
        return this.f7369j.m38226e("android.media.metadata.ARTIST");
    }

    /* renamed from: l */
    public long m31922l() {
        long j = 0;
        if (this.f7367h == 0) {
            return 0L;
        }
        long o = m31919o();
        if (o == 0) {
            return 0L;
        }
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            long a = sessionPlayer != null ? sessionPlayer.mo37879a() : 0L;
            if (a >= 0) {
                j = (a * 100) / o;
            }
            return j;
        }
        mediaController.m37769b();
        throw null;
    }

    /* renamed from: m */
    public MediaItem m31921m() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37851c();
            }
            return null;
        }
        mediaController.m37767c();
        throw null;
    }

    /* renamed from: n */
    public long m31920n() {
        long d = 0;
        if (this.f7367h == 0) {
            return 0L;
        }
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            d = sessionPlayer != null ? sessionPlayer.mo37845d() : 0L;
            if (d < 0) {
            }
            return d;
        }
        mediaController.m37766d();
        throw null;
    }

    /* renamed from: o */
    public long m31919o() {
        long e = 0;
        if (this.f7367h == 0) {
            return 0L;
        }
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            e = sessionPlayer != null ? sessionPlayer.mo37842e() : 0L;
            if (e < 0) {
            }
            return e;
        }
        mediaController.m37764e();
        throw null;
    }

    /* renamed from: p */
    public int m31918p() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37840f();
            }
            return -1;
        }
        mediaController.m37763f();
        throw null;
    }

    /* renamed from: q */
    public final float m31917q() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37839g();
            }
            return 1.0f;
        }
        mediaController.m37762g();
        throw null;
    }

    /* renamed from: r */
    public int m31916r() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37837h();
            }
            return 0;
        }
        mediaController.m37761h();
        throw null;
    }

    /* renamed from: s */
    public int m31915s() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                return sessionPlayer.mo37836i();
            }
            return -1;
        }
        mediaController.m37760i();
        throw null;
    }

    /* renamed from: t */
    public CharSequence m31914t() {
        MediaMetadata mediaMetadata = this.f7369j;
        if (mediaMetadata == null || !mediaMetadata.m38230a("android.media.metadata.TITLE")) {
            return null;
        }
        return this.f7369j.m38226e("android.media.metadata.TITLE");
    }

    /* renamed from: u */
    public List<SessionPlayer.TrackInfo> m31913u() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            return sessionPlayer != null ? sessionPlayer.mo37835j() : Collections.emptyList();
        }
        mediaController.m37759j();
        throw null;
    }

    /* renamed from: v */
    public VideoSize m31912v() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            return sessionPlayer != null ? sessionPlayer.mo37834k() : new VideoSize(0, 0);
        }
        mediaController.m37758k();
        throw null;
    }

    /* renamed from: w */
    public boolean m31911w() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            return false;
        }
        mediaController.m37757l();
        throw null;
    }

    /* renamed from: x */
    public boolean m31910x() {
        return this.f7367h == 2;
    }

    /* renamed from: y */
    public final void m31909y() {
        this.f7363d.mo31906a(this, m31917q());
        List<SessionPlayer.TrackInfo> u = m31913u();
        if (u != null) {
            this.f7363d.mo31898a(this, u);
        }
        MediaItem m = m31921m();
        if (m != null) {
            this.f7363d.mo31901a(this, m, m31912v());
        }
    }

    /* renamed from: z */
    public void m31908z() {
        MediaController mediaController = this.f7360a;
        if (mediaController == null) {
            SessionPlayer sessionPlayer = this.f7361b;
            if (sessionPlayer != null) {
                sessionPlayer.mo37833l();
                return;
            }
            return;
        }
        mediaController.m37756m();
        throw null;
    }
}
