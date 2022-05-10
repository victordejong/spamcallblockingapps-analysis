package p131c.p161d.p170b.p188c.p210w0;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
/* renamed from: c.d.b.c.w0.a */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a.class */
public abstract class AbstractC3029a {

    /* renamed from: a */
    public final C3030a f10919a;

    /* renamed from: b */
    public final AbstractC3036g f10920b;

    /* renamed from: c */
    public C3033d f10921c;

    /* renamed from: d */
    public final int f10922d;

    /* renamed from: c.d.b.c.w0.a$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$a.class */
    public static class C3030a implements AbstractC3050o {

        /* renamed from: a */
        public final AbstractC3034e f10923a;

        /* renamed from: b */
        public final long f10924b;

        /* renamed from: c */
        public final long f10925c;

        /* renamed from: d */
        public final long f10926d;

        /* renamed from: e */
        public final long f10927e;

        /* renamed from: f */
        public final long f10928f;

        /* renamed from: g */
        public final long f10929g;

        public C3030a(AbstractC3034e eVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f10923a = eVar;
            this.f10924b = j;
            this.f10925c = j2;
            this.f10926d = j3;
            this.f10927e = j4;
            this.f10928f = j5;
            this.f10929g = j6;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public AbstractC3050o.C3051a mo27544b(long j) {
            this.f10923a.mo28076a(j);
            return new AbstractC3050o.C3051a(new C3053p(j, C3033d.m28090a(j, this.f10925c, this.f10926d, this.f10927e, this.f10928f, this.f10929g)));
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public boolean mo27545b() {
            return true;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: c */
        public long mo27543c() {
            return this.f10924b;
        }

        /* renamed from: c */
        public long m28096c(long j) {
            this.f10923a.mo28076a(j);
            return j;
        }
    }

    /* renamed from: c.d.b.c.w0.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$b.class */
    public static final class C3031b implements AbstractC3034e {
        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.AbstractC3034e
        /* renamed from: a */
        public long mo28076a(long j) {
            return j;
        }
    }

    /* renamed from: c.d.b.c.w0.a$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$c.class */
    public static final class C3032c {
    }

    /* renamed from: c.d.b.c.w0.a$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$d.class */
    public static class C3033d {

        /* renamed from: a */
        public final long f10930a;

        /* renamed from: b */
        public final long f10931b;

        /* renamed from: c */
        public final long f10932c;

        /* renamed from: d */
        public long f10933d;

        /* renamed from: e */
        public long f10934e;

        /* renamed from: f */
        public long f10935f;

        /* renamed from: g */
        public long f10936g;

        /* renamed from: h */
        public long f10937h;

        public C3033d(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f10930a = j;
            this.f10931b = j2;
            this.f10933d = j3;
            this.f10934e = j4;
            this.f10935f = j5;
            this.f10936g = j6;
            this.f10932c = j7;
            this.f10937h = m28090a(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: a */
        public static long m28090a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C2885h0.m28649b(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* renamed from: a */
        public final long m28092a() {
            return this.f10936g;
        }

        /* renamed from: a */
        public final void m28091a(long j, long j2) {
            this.f10934e = j;
            this.f10936g = j2;
            m28077f();
        }

        /* renamed from: b */
        public final long m28087b() {
            return this.f10935f;
        }

        /* renamed from: b */
        public final void m28086b(long j, long j2) {
            this.f10933d = j;
            this.f10935f = j2;
            m28077f();
        }

        /* renamed from: c */
        public final long m28083c() {
            return this.f10937h;
        }

        /* renamed from: d */
        public final long m28081d() {
            return this.f10930a;
        }

        /* renamed from: e */
        public final long m28079e() {
            return this.f10931b;
        }

        /* renamed from: f */
        public final void m28077f() {
            this.f10937h = m28090a(this.f10931b, this.f10933d, this.f10934e, this.f10935f, this.f10936g, this.f10932c);
        }
    }

    /* renamed from: c.d.b.c.w0.a$e */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$e.class */
    public interface AbstractC3034e {
        /* renamed from: a */
        long mo28076a(long j);
    }

    /* renamed from: c.d.b.c.w0.a$f */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$f.class */
    public static final class C3035f {

        /* renamed from: d */
        public static final C3035f f10938d = new C3035f(-3, -9223372036854775807L, -1);

        /* renamed from: a */
        public final int f10939a;

        /* renamed from: b */
        public final long f10940b;

        /* renamed from: c */
        public final long f10941c;

        public C3035f(int i, long j, long j2) {
            this.f10939a = i;
            this.f10940b = j;
            this.f10941c = j2;
        }

        /* renamed from: a */
        public static C3035f m28075a(long j) {
            return new C3035f(0, -9223372036854775807L, j);
        }

        /* renamed from: a */
        public static C3035f m28074a(long j, long j2) {
            return new C3035f(-1, j, j2);
        }

        /* renamed from: b */
        public static C3035f m28072b(long j, long j2) {
            return new C3035f(-2, j, j2);
        }
    }

    /* renamed from: c.d.b.c.w0.a$g */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/a$g.class */
    public interface AbstractC3036g {
        /* renamed from: a */
        C3035f mo27574a(AbstractC3043h hVar, long j, C3032c cVar) throws IOException, InterruptedException;

        /* renamed from: a */
        void mo27577a();
    }

    public AbstractC3029a(AbstractC3034e eVar, AbstractC3036g gVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f10920b = gVar;
        this.f10922d = i;
        this.f10919a = new C3030a(eVar, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    public final int m28104a(AbstractC3043h hVar, long j, C3049n nVar) {
        if (j == hVar.getPosition()) {
            return 0;
        }
        nVar.f10989a = j;
        return 1;
    }

    /* renamed from: a */
    public int m28103a(AbstractC3043h hVar, C3049n nVar, C3032c cVar) throws InterruptedException, IOException {
        AbstractC3036g gVar = this.f10920b;
        C2877e.m28737a(gVar);
        AbstractC3036g gVar2 = gVar;
        while (true) {
            C3033d dVar = this.f10921c;
            C2877e.m28737a(dVar);
            C3033d dVar2 = dVar;
            long b = dVar2.m28087b();
            long a = dVar2.m28092a();
            long c = dVar2.m28083c();
            if (a - b <= this.f10922d) {
                m28102a(false, b);
                return m28104a(hVar, b, nVar);
            } else if (!m28105a(hVar, c)) {
                return m28104a(hVar, c, nVar);
            } else {
                hVar.mo28050c();
                C3035f a2 = gVar2.mo27574a(hVar, dVar2.m28079e(), cVar);
                int i = a2.f10939a;
                if (i == -3) {
                    m28102a(false, c);
                    return m28104a(hVar, c, nVar);
                } else if (i == -2) {
                    dVar2.m28086b(a2.f10940b, a2.f10941c);
                } else if (i == -1) {
                    dVar2.m28091a(a2.f10940b, a2.f10941c);
                } else if (i == 0) {
                    m28102a(true, a2.f10941c);
                    m28105a(hVar, a2.f10941c);
                    return m28104a(hVar, a2.f10941c, nVar);
                } else {
                    throw new IllegalStateException("Invalid case");
                }
            }
        }
    }

    /* renamed from: a */
    public C3033d m28106a(long j) {
        this.f10919a.m28096c(j);
        return new C3033d(j, j, this.f10919a.f10925c, this.f10919a.f10926d, this.f10919a.f10927e, this.f10919a.f10928f, this.f10919a.f10929g);
    }

    /* renamed from: a */
    public final AbstractC3050o m28107a() {
        return this.f10919a;
    }

    /* renamed from: a */
    public final void m28102a(boolean z, long j) {
        this.f10921c = null;
        this.f10920b.mo27577a();
        m28099b(z, j);
    }

    /* renamed from: a */
    public final boolean m28105a(AbstractC3043h hVar, long j) throws IOException, InterruptedException {
        long position = j - hVar.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        hVar.mo28049c((int) position);
        return true;
    }

    /* renamed from: b */
    public final void m28100b(long j) {
        C3033d dVar = this.f10921c;
        if (dVar == null || dVar.m28081d() != j) {
            this.f10921c = m28106a(j);
        }
    }

    /* renamed from: b */
    public void m28099b(boolean z, long j) {
    }

    /* renamed from: b */
    public final boolean m28101b() {
        return this.f10921c != null;
    }
}
