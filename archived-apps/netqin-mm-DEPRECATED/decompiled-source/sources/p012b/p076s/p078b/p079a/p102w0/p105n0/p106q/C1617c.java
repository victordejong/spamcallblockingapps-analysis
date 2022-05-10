package p012b.p076s.p078b.p079a.p102w0.p105n0.p106q;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1597d;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1620e;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
import p012b.p076s.p078b.p079a.p111z0.C1701v;
/* renamed from: b.s.b.a.w0.n0.q.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/c.class */
public final class C1617c implements HlsPlaylistTracker, Loader.AbstractC0348b<C1701v<AbstractC1625g>> {

    /* renamed from: q */
    public static final HlsPlaylistTracker.AbstractC0333a f6635q = C1616b.f6634a;

    /* renamed from: a */
    public final AbstractC1597d f6636a;

    /* renamed from: b */
    public final AbstractC1628i f6637b;

    /* renamed from: c */
    public final AbstractC1700u f6638c;

    /* renamed from: d */
    public final HashMap<Uri, RunnableC1618a> f6639d;

    /* renamed from: e */
    public final List<HlsPlaylistTracker.AbstractC0334b> f6640e;

    /* renamed from: f */
    public final double f6641f;

    /* renamed from: g */
    public C1701v.AbstractC1702a<AbstractC1625g> f6642g;

    /* renamed from: h */
    public AbstractC1533a0.C1534a f6643h;

    /* renamed from: i */
    public Loader f6644i;

    /* renamed from: j */
    public Handler f6645j;

    /* renamed from: k */
    public HlsPlaylistTracker.AbstractC0335c f6646k;

    /* renamed from: l */
    public C1620e f6647l;

    /* renamed from: m */
    public Uri f6648m;

    /* renamed from: n */
    public C1623f f6649n;

    /* renamed from: o */
    public boolean f6650o;

    /* renamed from: p */
    public long f6651p;

    /* renamed from: b.s.b.a.w0.n0.q.c$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/c$a.class */
    public final class RunnableC1618a implements Loader.AbstractC0348b<C1701v<AbstractC1625g>>, Runnable {

        /* renamed from: a */
        public final Uri f6652a;

        /* renamed from: b */
        public final Loader f6653b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: c */
        public final C1701v<AbstractC1625g> f6654c;

        /* renamed from: d */
        public C1623f f6655d;

        /* renamed from: e */
        public long f6656e;

        /* renamed from: f */
        public long f6657f;

        /* renamed from: g */
        public long f6658g;

        /* renamed from: h */
        public long f6659h;

        /* renamed from: i */
        public boolean f6660i;

        /* renamed from: j */
        public IOException f6661j;

        public RunnableC1618a(Uri uri) {
            this.f6652a = uri;
            this.f6654c = new C1701v<>(C1617c.this.f6636a.mo32703a(4), uri, 4, C1617c.this.f6642g);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Loader.C0349c mo32573a(C1701v<AbstractC1625g> vVar, long j, long j2, IOException iOException, int i) {
            Loader.C0349c cVar;
            long b = C1617c.this.f6638c.mo32335b(vVar.f6960b, j2, iOException, i);
            boolean z = b != -9223372036854775807L;
            boolean z2 = C1617c.this.m32609a(this.f6652a, b) || !z;
            boolean z3 = z2;
            if (z) {
                z3 = z2 | m32575a(b);
            }
            if (z3) {
                long a = C1617c.this.f6638c.mo32336a(vVar.f6960b, j2, iOException, i);
                cVar = a != -9223372036854775807L ? Loader.m37914a(false, a) : Loader.f1986e;
            } else {
                cVar = Loader.f1985d;
            }
            C1617c.this.f6643h.m32936a(vVar.f6959a, vVar.m32329f(), vVar.m32331d(), 4, j, j2, vVar.m32332c(), iOException, !cVar.m37909a());
            return cVar;
        }

        /* renamed from: a */
        public C1623f m32576a() {
            return this.f6655d;
        }

        /* renamed from: a */
        public final void m32569a(C1623f fVar, long j) {
            C1623f fVar2 = this.f6655d;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f6656e = elapsedRealtime;
            C1623f a = C1617c.this.m32600a(fVar2, fVar);
            this.f6655d = a;
            if (a != fVar2) {
                this.f6661j = null;
                this.f6657f = elapsedRealtime;
                C1617c.this.m32607a(this.f6652a, a);
            } else if (!a.f6691l) {
                long j2 = fVar.f6688i;
                long size = fVar.f6694o.size();
                C1623f fVar3 = this.f6655d;
                if (j2 + size < fVar3.f6688i) {
                    this.f6661j = new HlsPlaylistTracker.PlaylistResetException(this.f6652a);
                    C1617c.this.m32609a(this.f6652a, -9223372036854775807L);
                } else {
                    double d = elapsedRealtime - this.f6657f;
                    double b = C1220c.m34195b(fVar3.f6690k);
                    double d2 = C1617c.this.f6641f;
                    Double.isNaN(b);
                    if (d > b * d2) {
                        this.f6661j = new HlsPlaylistTracker.PlaylistStuckException(this.f6652a);
                        long b2 = C1617c.this.f6638c.mo32335b(4, j, this.f6661j, 1);
                        C1617c.this.m32609a(this.f6652a, b2);
                        if (b2 != -9223372036854775807L) {
                            m32575a(b2);
                        }
                    }
                }
            }
            C1623f fVar4 = this.f6655d;
            this.f6658g = elapsedRealtime + C1220c.m34195b(fVar4 != fVar2 ? fVar4.f6690k : fVar4.f6690k / 2);
            if (this.f6652a.equals(C1617c.this.f6648m) && !this.f6655d.f6691l) {
                m32563c();
            }
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo32574a(C1701v<AbstractC1625g> vVar, long j, long j2) {
            AbstractC1625g e = vVar.m32330e();
            if (e instanceof C1623f) {
                m32569a((C1623f) e, j2);
                C1617c.this.f6643h.m32930b(vVar.f6959a, vVar.m32329f(), vVar.m32331d(), 4, j, j2, vVar.m32332c());
                return;
            }
            this.f6661j = new ParserException("Loaded playlist has unexpected type.");
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo32572a(C1701v<AbstractC1625g> vVar, long j, long j2, boolean z) {
            C1617c.this.f6643h.m32937a(vVar.f6959a, vVar.m32329f(), vVar.m32331d(), 4, j, j2, vVar.m32332c());
        }

        /* renamed from: a */
        public final boolean m32575a(long j) {
            this.f6659h = SystemClock.elapsedRealtime() + j;
            return this.f6652a.equals(C1617c.this.f6648m) && !C1617c.this.m32582e();
        }

        /* renamed from: b */
        public boolean m32565b() {
            int i;
            boolean z = false;
            if (this.f6655d == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000L, C1220c.m34195b(this.f6655d.f6695p));
            C1623f fVar = this.f6655d;
            if (fVar.f6691l || (i = fVar.f6683d) == 2 || i == 1 || this.f6656e + max > elapsedRealtime) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        public void m32563c() {
            this.f6659h = 0L;
            if (!this.f6660i && !this.f6653b.m37913b()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime < this.f6658g) {
                    this.f6660i = true;
                    C1617c.this.f6645j.postDelayed(this, this.f6658g - elapsedRealtime);
                    return;
                }
                m32562d();
            }
        }

        /* renamed from: d */
        public final void m32562d() {
            long a = this.f6653b.m37919a(this.f6654c, this, C1617c.this.f6638c.mo32337a(this.f6654c.f6960b));
            AbstractC1533a0.C1534a aVar = C1617c.this.f6643h;
            C1701v<AbstractC1625g> vVar = this.f6654c;
            aVar.m32940a(vVar.f6959a, vVar.f6960b, a);
        }

        /* renamed from: e */
        public void m32561e() throws IOException {
            this.f6653b.m37911c();
            IOException iOException = this.f6661j;
            if (iOException != null) {
                throw iOException;
            }
        }

        /* renamed from: f */
        public void m32560f() {
            this.f6653b.m37910d();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6660i = false;
            m32562d();
        }
    }

    public C1617c(AbstractC1597d dVar, AbstractC1700u uVar, AbstractC1628i iVar) {
        this(dVar, uVar, iVar, 3.5d);
    }

    public C1617c(AbstractC1597d dVar, AbstractC1700u uVar, AbstractC1628i iVar, double d) {
        this.f6636a = dVar;
        this.f6637b = iVar;
        this.f6638c = uVar;
        this.f6641f = d;
        this.f6640e = new ArrayList();
        this.f6639d = new HashMap<>();
        this.f6651p = -9223372036854775807L;
    }

    /* renamed from: d */
    public static C1623f.C1624a m32583d(C1623f fVar, C1623f fVar2) {
        int i = (int) (fVar2.f6688i - fVar.f6688i);
        List<C1623f.C1624a> list = fVar.f6694o;
        return i < list.size() ? list.get(i) : null;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public long mo32611a() {
        return this.f6651p;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Loader.C0349c mo32573a(C1701v<AbstractC1625g> vVar, long j, long j2, IOException iOException, int i) {
        long a = this.f6638c.mo32336a(vVar.f6960b, j2, iOException, i);
        boolean z = a == -9223372036854775807L;
        this.f6643h.m32936a(vVar.f6959a, vVar.m32329f(), vVar.m32331d(), 4, j, j2, vVar.m32332c(), iOException, z);
        return z ? Loader.f1986e : Loader.m37914a(false, a);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public C1623f mo32606a(Uri uri, boolean z) {
        C1623f a = this.f6639d.get(uri).m32576a();
        if (a != null && z) {
            m32581e(uri);
        }
        return a;
    }

    /* renamed from: a */
    public final C1623f m32600a(C1623f fVar, C1623f fVar2) {
        if (fVar2.m32551a(fVar)) {
            return fVar2.m32552a(m32587c(fVar, fVar2), m32591b(fVar, fVar2));
        }
        C1623f fVar3 = fVar;
        if (fVar2.f6691l) {
            fVar3 = fVar.m32553a();
        }
        return fVar3;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public void mo32608a(Uri uri, AbstractC1533a0.C1534a aVar, HlsPlaylistTracker.AbstractC0335c cVar) {
        this.f6645j = new Handler();
        this.f6643h = aVar;
        this.f6646k = cVar;
        C1701v vVar = new C1701v(this.f6636a.mo32703a(4), uri, 4, this.f6637b.mo32525a());
        C1160a.m34518b(this.f6644i == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        this.f6644i = loader;
        aVar.m32940a(vVar.f6959a, vVar.f6960b, loader.m37919a(vVar, this, this.f6638c.mo32337a(vVar.f6960b)));
    }

    /* renamed from: a */
    public final void m32607a(Uri uri, C1623f fVar) {
        if (uri.equals(this.f6648m)) {
            if (this.f6649n == null) {
                this.f6650o = !fVar.f6691l;
                this.f6651p = fVar.f6685f;
            }
            this.f6649n = fVar;
            this.f6646k.mo32679a(fVar);
        }
        int size = this.f6640e.size();
        for (int i = 0; i < size; i++) {
            this.f6640e.get(i).mo32682c();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public void mo32605a(HlsPlaylistTracker.AbstractC0334b bVar) {
        this.f6640e.add(bVar);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32574a(C1701v<AbstractC1625g> vVar, long j, long j2) {
        AbstractC1625g e = vVar.m32330e();
        boolean z = e instanceof C1623f;
        C1620e a = z ? C1620e.m32559a(e.f6707a) : (C1620e) e;
        this.f6647l = a;
        this.f6642g = this.f6637b.mo32524a(a);
        this.f6648m = a.f6667e.get(0).f6677a;
        m32596a(a.f6666d);
        RunnableC1618a aVar = this.f6639d.get(this.f6648m);
        if (z) {
            aVar.m32569a((C1623f) e, j2);
        } else {
            aVar.m32563c();
        }
        this.f6643h.m32930b(vVar.f6959a, vVar.m32329f(), vVar.m32331d(), 4, j, j2, vVar.m32332c());
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32572a(C1701v<AbstractC1625g> vVar, long j, long j2, boolean z) {
        this.f6643h.m32937a(vVar.f6959a, vVar.m32329f(), vVar.m32331d(), 4, j, j2, vVar.m32332c());
    }

    /* renamed from: a */
    public final void m32596a(List<Uri> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Uri uri = list.get(i);
            this.f6639d.put(uri, new RunnableC1618a(uri));
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public boolean mo32610a(Uri uri) {
        return this.f6639d.get(uri).m32565b();
    }

    /* renamed from: a */
    public final boolean m32609a(Uri uri, long j) {
        int size = this.f6640e.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z |= !this.f6640e.get(i).mo32689a(uri, j);
        }
        return z;
    }

    /* renamed from: b */
    public final int m32591b(C1623f fVar, C1623f fVar2) {
        C1623f.C1624a d;
        if (fVar2.f6686g) {
            return fVar2.f6687h;
        }
        C1623f fVar3 = this.f6649n;
        int i = fVar3 != null ? fVar3.f6687h : 0;
        if (!(fVar == null || (d = m32583d(fVar, fVar2)) == null)) {
            return (fVar.f6687h + d.f6699d) - fVar2.f6694o.get(0).f6699d;
        }
        return i;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public void mo32594b(Uri uri) throws IOException {
        this.f6639d.get(uri).m32561e();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public void mo32593b(HlsPlaylistTracker.AbstractC0334b bVar) {
        this.f6640e.remove(bVar);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public boolean mo32595b() {
        return this.f6650o;
    }

    /* renamed from: c */
    public final long m32587c(C1623f fVar, C1623f fVar2) {
        if (fVar2.f6692m) {
            return fVar2.f6685f;
        }
        C1623f fVar3 = this.f6649n;
        long j = fVar3 != null ? fVar3.f6685f : 0L;
        if (fVar == null) {
            return j;
        }
        int size = fVar.f6694o.size();
        C1623f.C1624a d = m32583d(fVar, fVar2);
        return d != null ? fVar.f6685f + d.f6700e : ((long) size) == fVar2.f6688i - fVar.f6688i ? fVar.m32549b() : j;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: c */
    public C1620e mo32590c() {
        return this.f6647l;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: c */
    public void mo32589c(Uri uri) {
        this.f6639d.get(uri).m32563c();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: d */
    public void mo32586d() throws IOException {
        Loader loader = this.f6644i;
        if (loader != null) {
            loader.m37911c();
        }
        Uri uri = this.f6648m;
        if (uri != null) {
            mo32594b(uri);
        }
    }

    /* renamed from: d */
    public final boolean m32585d(Uri uri) {
        List<C1620e.C1622b> list = this.f6647l.f6667e;
        for (int i = 0; i < list.size(); i++) {
            if (uri.equals(list.get(i).f6677a)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final void m32581e(Uri uri) {
        if (!uri.equals(this.f6648m) && m32585d(uri)) {
            C1623f fVar = this.f6649n;
            if (fVar == null || !fVar.f6691l) {
                this.f6648m = uri;
                this.f6639d.get(uri).m32563c();
            }
        }
    }

    /* renamed from: e */
    public final boolean m32582e() {
        List<C1620e.C1622b> list = this.f6647l.f6667e;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            RunnableC1618a aVar = this.f6639d.get(list.get(i).f6677a);
            if (elapsedRealtime > aVar.f6659h) {
                this.f6648m = aVar.f6652a;
                aVar.m32563c();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.f6648m = null;
        this.f6649n = null;
        this.f6647l = null;
        this.f6651p = -9223372036854775807L;
        this.f6644i.m37910d();
        this.f6644i = null;
        for (RunnableC1618a aVar : this.f6639d.values()) {
            aVar.m32560f();
        }
        this.f6645j.removeCallbacksAndMessages(null);
        this.f6645j = null;
        this.f6639d.clear();
    }
}
