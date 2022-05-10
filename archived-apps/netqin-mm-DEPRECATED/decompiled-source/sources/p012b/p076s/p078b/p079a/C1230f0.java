package p012b.p076s.p078b.p079a;

import android.os.Handler;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.f0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/f0.class */
public final class C1230f0 {

    /* renamed from: a */
    public final AbstractC1232b f4917a;

    /* renamed from: b */
    public final AbstractC1231a f4918b;

    /* renamed from: c */
    public final AbstractC1252n0 f4919c;

    /* renamed from: d */
    public int f4920d;

    /* renamed from: e */
    public Object f4921e;

    /* renamed from: f */
    public Handler f4922f;

    /* renamed from: g */
    public int f4923g;

    /* renamed from: h */
    public long f4924h = -9223372036854775807L;

    /* renamed from: i */
    public boolean f4925i = true;

    /* renamed from: j */
    public boolean f4926j;

    /* renamed from: k */
    public boolean f4927k;

    /* renamed from: l */
    public boolean f4928l;

    /* renamed from: m */
    public boolean f4929m;

    /* renamed from: b.s.b.a.f0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/f0$a.class */
    public interface AbstractC1231a {
        /* renamed from: a */
        void mo33070a(C1230f0 f0Var);
    }

    /* renamed from: b.s.b.a.f0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/f0$b.class */
    public interface AbstractC1232b {
        /* renamed from: a */
        void mo33829a(int i, Object obj) throws ExoPlaybackException;
    }

    public C1230f0(AbstractC1231a aVar, AbstractC1232b bVar, AbstractC1252n0 n0Var, int i, Handler handler) {
        this.f4918b = aVar;
        this.f4917a = bVar;
        this.f4919c = n0Var;
        this.f4922f = handler;
        this.f4923g = i;
    }

    /* renamed from: a */
    public C1230f0 m34171a(int i) {
        C1160a.m34518b(!this.f4926j);
        this.f4920d = i;
        return this;
    }

    /* renamed from: a */
    public C1230f0 m34170a(Object obj) {
        C1160a.m34518b(!this.f4926j);
        this.f4921e = obj;
        return this;
    }

    /* renamed from: a */
    public void m34169a(boolean z) {
        synchronized (this) {
            this.f4927k = z | this.f4927k;
            this.f4928l = true;
            notifyAll();
        }
    }

    /* renamed from: a */
    public boolean m34172a() throws InterruptedException {
        boolean z;
        synchronized (this) {
            C1160a.m34518b(this.f4926j);
            C1160a.m34518b(this.f4922f.getLooper().getThread() != Thread.currentThread());
            while (!this.f4928l) {
                wait();
            }
            z = this.f4927k;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m34168b() {
        return this.f4925i;
    }

    /* renamed from: c */
    public Handler m34167c() {
        return this.f4922f;
    }

    /* renamed from: d */
    public Object m34166d() {
        return this.f4921e;
    }

    /* renamed from: e */
    public long m34165e() {
        return this.f4924h;
    }

    /* renamed from: f */
    public AbstractC1232b m34164f() {
        return this.f4917a;
    }

    /* renamed from: g */
    public AbstractC1252n0 m34163g() {
        return this.f4919c;
    }

    /* renamed from: h */
    public int m34162h() {
        return this.f4920d;
    }

    /* renamed from: i */
    public int m34161i() {
        return this.f4923g;
    }

    /* renamed from: j */
    public boolean m34160j() {
        boolean z;
        synchronized (this) {
            z = this.f4929m;
        }
        return z;
    }

    /* renamed from: k */
    public C1230f0 m34159k() {
        C1160a.m34518b(!this.f4926j);
        if (this.f4924h == -9223372036854775807L) {
            C1160a.m34520a(this.f4925i);
        }
        this.f4926j = true;
        this.f4918b.mo33070a(this);
        return this;
    }
}
