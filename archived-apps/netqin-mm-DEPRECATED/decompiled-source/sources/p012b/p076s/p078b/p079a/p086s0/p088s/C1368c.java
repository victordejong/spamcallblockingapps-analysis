package p012b.p076s.p078b.p079a.p086s0.p088s;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.s.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/s/c.class */
public final class C1368c implements AbstractC1350g {

    /* renamed from: f */
    public AbstractC1352i f5398f;

    /* renamed from: i */
    public int f5401i;

    /* renamed from: j */
    public int f5402j;

    /* renamed from: k */
    public int f5403k;

    /* renamed from: l */
    public long f5404l;

    /* renamed from: m */
    public boolean f5405m;

    /* renamed from: n */
    public C1366a f5406n;

    /* renamed from: o */
    public C1370e f5407o;

    /* renamed from: a */
    public final C1184p f5393a = new C1184p(4);

    /* renamed from: b */
    public final C1184p f5394b = new C1184p(9);

    /* renamed from: c */
    public final C1184p f5395c = new C1184p(11);

    /* renamed from: d */
    public final C1184p f5396d = new C1184p();

    /* renamed from: e */
    public final C1369d f5397e = new C1369d();

    /* renamed from: g */
    public int f5399g = 1;

    /* renamed from: h */
    public long f5400h = -9223372036854775807L;

    static {
        AbstractC1353j jVar = C1367b.f5392a;
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC1350g[] m33589c() {
        return new AbstractC1350g[]{new C1368c()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        while (true) {
            int i = this.f5399g;
            if (i != 1) {
                if (i == 2) {
                    m33585f(hVar);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    } else if (m33587d(hVar)) {
                        return 0;
                    }
                } else if (!m33586e(hVar)) {
                    return -1;
                }
            } else if (!m33588c(hVar)) {
                return -1;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5399g = 1;
        this.f5400h = -9223372036854775807L;
        this.f5401i = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5398f = iVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        boolean z = false;
        hVar.mo33619a(this.f5393a.f4738a, 0, 3);
        this.f5393a.m34358e(0);
        if (this.f5393a.m34341u() != 4607062) {
            return false;
        }
        hVar.mo33619a(this.f5393a.f4738a, 0, 2);
        this.f5393a.m34358e(0);
        if ((this.f5393a.m34338x() & 250) != 0) {
            return false;
        }
        hVar.mo33619a(this.f5393a.f4738a, 0, 4);
        this.f5393a.m34358e(0);
        int f = this.f5393a.m34357f();
        hVar.mo33614c();
        hVar.mo33621a(f);
        hVar.mo33619a(this.f5393a.f4738a, 0, 4);
        this.f5393a.m34358e(0);
        if (this.f5393a.m34357f() == 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final C1184p m33590b(AbstractC1351h hVar) throws IOException, InterruptedException {
        if (this.f5403k > this.f5396d.m34365b()) {
            C1184p pVar = this.f5396d;
            pVar.m34367a(new byte[Math.max(pVar.m34365b() * 2, this.f5403k)], 0);
        } else {
            this.f5396d.m34358e(0);
        }
        this.f5396d.m34360d(this.f5403k);
        hVar.readFully(this.f5396d.f4738a, 0, this.f5403k);
        return this.f5396d;
    }

    /* renamed from: b */
    public final void m33591b() {
        if (!this.f5405m) {
            this.f5398f.mo32656a(new AbstractC1358o.C1360b(-9223372036854775807L));
            this.f5405m = true;
        }
        if (this.f5400h == -9223372036854775807L) {
            this.f5400h = this.f5397e.m33584a() == -9223372036854775807L ? -this.f5404l : 0L;
        }
    }

    /* renamed from: c */
    public final boolean m33588c(AbstractC1351h hVar) throws IOException, InterruptedException {
        boolean z = false;
        if (!hVar.mo33618a(this.f5394b.f4738a, 0, 9, true)) {
            return false;
        }
        this.f5394b.m34358e(0);
        this.f5394b.m34356f(4);
        int r = this.f5394b.m34344r();
        boolean z2 = (r & 4) != 0;
        if ((r & 1) != 0) {
            z = true;
        }
        if (z2 && this.f5406n == null) {
            this.f5406n = new C1366a(this.f5398f.mo32666a(8, 1));
        }
        if (z && this.f5407o == null) {
            this.f5407o = new C1370e(this.f5398f.mo32666a(9, 2));
        }
        this.f5398f.mo32639e();
        this.f5401i = (this.f5394b.m34357f() - 9) + 4;
        this.f5399g = 2;
        return true;
    }

    /* renamed from: d */
    public final boolean m33587d(AbstractC1351h hVar) throws IOException, InterruptedException {
        boolean z;
        if (this.f5402j == 8 && this.f5406n != null) {
            m33591b();
            this.f5406n.m38091a(m33590b(hVar), this.f5400h + this.f5404l);
            z = true;
        } else if (this.f5402j == 9 && this.f5407o != null) {
            m33591b();
            this.f5407o.m38091a(m33590b(hVar), this.f5400h + this.f5404l);
            z = true;
        } else if (this.f5402j != 18 || this.f5405m) {
            hVar.mo33613c(this.f5403k);
            z = false;
        } else {
            this.f5397e.m38091a(m33590b(hVar), this.f5404l);
            long a = this.f5397e.m33584a();
            z = true;
            if (a != -9223372036854775807L) {
                this.f5398f.mo32656a(new AbstractC1358o.C1360b(a));
                this.f5405m = true;
                z = true;
            }
        }
        this.f5401i = 4;
        this.f5399g = 2;
        return z;
    }

    /* renamed from: e */
    public final boolean m33586e(AbstractC1351h hVar) throws IOException, InterruptedException {
        if (!hVar.mo33618a(this.f5395c.f4738a, 0, 11, true)) {
            return false;
        }
        this.f5395c.m34358e(0);
        this.f5402j = this.f5395c.m34344r();
        this.f5403k = this.f5395c.m34341u();
        this.f5404l = this.f5395c.m34341u();
        this.f5404l = ((this.f5395c.m34344r() << 24) | this.f5404l) * 1000;
        this.f5395c.m34356f(3);
        this.f5399g = 4;
        return true;
    }

    /* renamed from: f */
    public final void m33585f(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.mo33613c(this.f5401i);
        this.f5401i = 0;
        this.f5399g = 3;
    }
}
