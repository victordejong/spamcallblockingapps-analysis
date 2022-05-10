package p131c.p161d.p170b.p188c;

import android.os.Handler;
import com.google.android.exoplayer2.ExoPlaybackException;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.l0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/l0.class */
public final class C2949l0 {

    /* renamed from: a */
    public final AbstractC2951b f10638a;

    /* renamed from: b */
    public final AbstractC2950a f10639b;

    /* renamed from: c */
    public final AbstractC2965r0 f10640c;

    /* renamed from: d */
    public int f10641d;

    /* renamed from: e */
    public Object f10642e;

    /* renamed from: f */
    public Handler f10643f;

    /* renamed from: g */
    public int f10644g;

    /* renamed from: h */
    public long f10645h = -9223372036854775807L;

    /* renamed from: i */
    public boolean f10646i = true;

    /* renamed from: j */
    public boolean f10647j;

    /* renamed from: k */
    public boolean f10648k;

    /* renamed from: l */
    public boolean f10649l;

    /* renamed from: c.d.b.c.l0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/l0$a.class */
    public interface AbstractC2950a {
        /* renamed from: a */
        void mo27393a(C2949l0 l0Var);
    }

    /* renamed from: c.d.b.c.l0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/l0$b.class */
    public interface AbstractC2951b {
        /* renamed from: a */
        void mo18219a(int i, Object obj) throws ExoPlaybackException;
    }

    public C2949l0(AbstractC2950a aVar, AbstractC2951b bVar, AbstractC2965r0 r0Var, int i, Handler handler) {
        this.f10639b = aVar;
        this.f10638a = bVar;
        this.f10640c = r0Var;
        this.f10643f = handler;
        this.f10644g = i;
    }

    /* renamed from: a */
    public C2949l0 m28409a(int i) {
        C2877e.m28731b(!this.f10647j);
        this.f10641d = i;
        return this;
    }

    /* renamed from: a */
    public C2949l0 m28408a(Object obj) {
        C2877e.m28731b(!this.f10647j);
        this.f10642e = obj;
        return this;
    }

    /* renamed from: a */
    public void m28407a(boolean z) {
        synchronized (this) {
            this.f10648k = z | this.f10648k;
            notifyAll();
        }
    }

    /* renamed from: a */
    public boolean m28410a() {
        return this.f10646i;
    }

    /* renamed from: b */
    public Handler m28406b() {
        return this.f10643f;
    }

    /* renamed from: c */
    public Object m28405c() {
        return this.f10642e;
    }

    /* renamed from: d */
    public long m28404d() {
        return this.f10645h;
    }

    /* renamed from: e */
    public AbstractC2951b m28403e() {
        return this.f10638a;
    }

    /* renamed from: f */
    public AbstractC2965r0 m28402f() {
        return this.f10640c;
    }

    /* renamed from: g */
    public int m28401g() {
        return this.f10641d;
    }

    /* renamed from: h */
    public int m28400h() {
        return this.f10644g;
    }

    /* renamed from: i */
    public boolean m28399i() {
        boolean z;
        synchronized (this) {
            z = this.f10649l;
        }
        return z;
    }

    /* renamed from: j */
    public C2949l0 m28398j() {
        C2877e.m28731b(!this.f10647j);
        if (this.f10645h == -9223372036854775807L) {
            C2877e.m28734a(this.f10646i);
        }
        this.f10647j = true;
        this.f10639b.mo27393a(this);
        return this;
    }
}
