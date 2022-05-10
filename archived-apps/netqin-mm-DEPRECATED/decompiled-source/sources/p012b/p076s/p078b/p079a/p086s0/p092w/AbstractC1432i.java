package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.w.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/i.class */
public abstract class AbstractC1432i {

    /* renamed from: a */
    public final C1428e f5773a = new C1428e();

    /* renamed from: b */
    public AbstractC1362q f5774b;

    /* renamed from: c */
    public AbstractC1352i f5775c;

    /* renamed from: d */
    public AbstractC1430g f5776d;

    /* renamed from: e */
    public long f5777e;

    /* renamed from: f */
    public long f5778f;

    /* renamed from: g */
    public long f5779g;

    /* renamed from: h */
    public int f5780h;

    /* renamed from: i */
    public int f5781i;

    /* renamed from: j */
    public C1434b f5782j;

    /* renamed from: k */
    public long f5783k;

    /* renamed from: l */
    public boolean f5784l;

    /* renamed from: m */
    public boolean f5785m;

    /* renamed from: b.s.b.a.s0.w.i$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/i$b.class */
    public static class C1434b {

        /* renamed from: a */
        public Format f5786a;

        /* renamed from: b */
        public AbstractC1430g f5787b;
    }

    /* renamed from: b.s.b.a.s0.w.i$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/i$c.class */
    public static final class C1435c implements AbstractC1430g {
        public C1435c() {
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
        /* renamed from: a */
        public long mo33321a(AbstractC1351h hVar) throws IOException, InterruptedException {
            return -1L;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
        /* renamed from: a */
        public AbstractC1358o mo33322a() {
            return new AbstractC1358o.C1360b(-9223372036854775807L);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
        /* renamed from: c */
        public long mo33320c(long j) {
            return 0L;
        }
    }

    /* renamed from: a */
    public final int m33327a(AbstractC1351h hVar) throws IOException, InterruptedException {
        boolean z = true;
        while (z) {
            if (!this.f5773a.m33338a(hVar)) {
                this.f5780h = 3;
                return -1;
            }
            this.f5783k = hVar.getPosition() - this.f5778f;
            boolean a = mo33310a(this.f5773a.m33337b(), this.f5778f, this.f5782j);
            z = a;
            if (a) {
                this.f5778f = hVar.getPosition();
                z = a;
            }
        }
        Format format = this.f5782j.f5786a;
        this.f5781i = format.f1576w;
        if (!this.f5785m) {
            this.f5774b.mo32623a(format);
            this.f5785m = true;
        }
        AbstractC1430g gVar = this.f5782j.f5787b;
        if (gVar != null) {
            this.f5776d = gVar;
        } else if (hVar.mo33622a() == -1) {
            this.f5776d = new C1435c();
        } else {
            C1429f a2 = this.f5773a.m33340a();
            this.f5776d = new C1421a(this.f5778f, hVar.mo33622a(), this, a2.f5767e + a2.f5768f, a2.f5765c, (a2.f5764b & 4) != 0);
        }
        this.f5782j = null;
        this.f5780h = 2;
        this.f5773a.m33335d();
        return 0;
    }

    /* renamed from: a */
    public final int m33326a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        int i = this.f5780h;
        if (i == 0) {
            return m33327a(hVar);
        }
        if (i == 1) {
            hVar.mo33613c((int) this.f5778f);
            this.f5780h = 2;
            return 0;
        } else if (i == 2) {
            return m33323b(hVar, nVar);
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public long m33329a(long j) {
        return (j * 1000000) / this.f5781i;
    }

    /* renamed from: a */
    public abstract long mo33312a(C1184p pVar);

    /* renamed from: a */
    public final void m33328a(long j, long j2) {
        this.f5773a.m33336c();
        if (j == 0) {
            mo33309a(!this.f5784l);
        } else if (this.f5780h != 0) {
            this.f5777e = this.f5776d.mo33320c(j2);
            this.f5780h = 2;
        }
    }

    /* renamed from: a */
    public void m33325a(AbstractC1352i iVar, AbstractC1362q qVar) {
        this.f5775c = iVar;
        this.f5774b = qVar;
        mo33309a(true);
    }

    /* renamed from: a */
    public void mo33309a(boolean z) {
        if (z) {
            this.f5782j = new C1434b();
            this.f5778f = 0L;
            this.f5780h = 0;
        } else {
            this.f5780h = 1;
        }
        this.f5777e = -1L;
        this.f5779g = 0L;
    }

    /* renamed from: a */
    public abstract boolean mo33310a(C1184p pVar, long j, C1434b bVar) throws IOException, InterruptedException;

    /* renamed from: b */
    public final int m33323b(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        long a = this.f5776d.mo33321a(hVar);
        if (a >= 0) {
            nVar.f5355a = a;
            return 1;
        }
        if (a < -1) {
            mo33307c(-(a + 2));
        }
        if (!this.f5784l) {
            this.f5775c.mo32656a(this.f5776d.mo33322a());
            this.f5784l = true;
        }
        if (this.f5783k > 0 || this.f5773a.m33338a(hVar)) {
            this.f5783k = 0L;
            C1184p b = this.f5773a.m33337b();
            long a2 = mo33312a(b);
            if (a2 >= 0) {
                long j = this.f5779g;
                if (j + a2 >= this.f5777e) {
                    long a3 = m33329a(j);
                    this.f5774b.mo32827a(b, b.m34361d());
                    this.f5774b.mo32832a(a3, 1, b.m34361d(), 0, null);
                    this.f5777e = -1L;
                }
            }
            this.f5779g += a2;
            return 0;
        }
        this.f5780h = 3;
        return -1;
    }

    /* renamed from: b */
    public long m33324b(long j) {
        return (this.f5781i * j) / 1000000;
    }

    /* renamed from: c */
    public void mo33307c(long j) {
        this.f5779g = j;
    }
}
