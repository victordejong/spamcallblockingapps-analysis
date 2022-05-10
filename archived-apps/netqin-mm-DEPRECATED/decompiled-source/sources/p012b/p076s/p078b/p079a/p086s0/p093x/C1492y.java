package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.ParserException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1337a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.y */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/y.class */
public final class C1492y implements AbstractC1350g {

    /* renamed from: a */
    public final C1196z f6123a;

    /* renamed from: b */
    public final SparseArray<C1493a> f6124b;

    /* renamed from: c */
    public final C1184p f6125c;

    /* renamed from: d */
    public final C1490w f6126d;

    /* renamed from: e */
    public boolean f6127e;

    /* renamed from: f */
    public boolean f6128f;

    /* renamed from: g */
    public boolean f6129g;

    /* renamed from: h */
    public long f6130h;

    /* renamed from: i */
    public C1487v f6131i;

    /* renamed from: j */
    public AbstractC1352i f6132j;

    /* renamed from: k */
    public boolean f6133k;

    /* renamed from: b.s.b.a.s0.x.y$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/y$a.class */
    public static final class C1493a {

        /* renamed from: a */
        public final AbstractC1473m f6134a;

        /* renamed from: b */
        public final C1196z f6135b;

        /* renamed from: c */
        public final C1183o f6136c = new C1183o(new byte[64]);

        /* renamed from: d */
        public boolean f6137d;

        /* renamed from: e */
        public boolean f6138e;

        /* renamed from: f */
        public boolean f6139f;

        /* renamed from: g */
        public int f6140g;

        /* renamed from: h */
        public long f6141h;

        public C1493a(AbstractC1473m mVar, C1196z zVar) {
            this.f6134a = mVar;
            this.f6135b = zVar;
        }

        /* renamed from: a */
        public final void m33129a() {
            this.f6136c.m34376c(8);
            this.f6137d = this.f6136c.m34374e();
            this.f6138e = this.f6136c.m34374e();
            this.f6136c.m34376c(6);
            this.f6140g = this.f6136c.m34385a(8);
        }

        /* renamed from: a */
        public void m33128a(C1184p pVar) throws ParserException {
            pVar.m34366a(this.f6136c.f4734a, 0, 3);
            this.f6136c.m34378b(0);
            m33129a();
            pVar.m34366a(this.f6136c.f4734a, 0, this.f6140g);
            this.f6136c.m34378b(0);
            m33127b();
            this.f6134a.mo33169a(this.f6141h, 4);
            this.f6134a.mo33168a(pVar);
            this.f6134a.mo33166b();
        }

        /* renamed from: b */
        public final void m33127b() {
            this.f6141h = 0L;
            if (this.f6137d) {
                this.f6136c.m34376c(4);
                long a = this.f6136c.m34385a(3);
                this.f6136c.m34376c(1);
                long a2 = this.f6136c.m34385a(15) << 15;
                this.f6136c.m34376c(1);
                long a3 = this.f6136c.m34385a(15);
                this.f6136c.m34376c(1);
                if (!this.f6139f && this.f6138e) {
                    this.f6136c.m34376c(4);
                    long a4 = this.f6136c.m34385a(3);
                    this.f6136c.m34376c(1);
                    long a5 = this.f6136c.m34385a(15) << 15;
                    this.f6136c.m34376c(1);
                    long a6 = this.f6136c.m34385a(15);
                    this.f6136c.m34376c(1);
                    this.f6135b.m34292b((a4 << 30) | a5 | a6);
                    this.f6139f = true;
                }
                this.f6141h = this.f6135b.m34292b((a << 30) | a2 | a3);
            }
        }

        /* renamed from: c */
        public void m33126c() {
            this.f6139f = false;
            this.f6134a.mo33170a();
        }
    }

    static {
        AbstractC1353j jVar = C1491x.f6122a;
    }

    public C1492y() {
        this(new C1196z(0L));
    }

    public C1492y(C1196z zVar) {
        this.f6123a = zVar;
        this.f6125c = new C1184p(4096);
        this.f6124b = new SparseArray<>();
        this.f6126d = new C1490w();
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33130b() {
        return new AbstractC1350g[]{new C1492y()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        long a = hVar.mo33622a();
        if ((a != -1) && !this.f6126d.m33134c()) {
            return this.f6126d.m33141a(hVar, nVar);
        }
        m33131a(a);
        C1487v vVar = this.f6131i;
        AbstractC1473m mVar = null;
        if (vVar != null && vVar.m33666b()) {
            return this.f6131i.m33668a(hVar, nVar, (AbstractC1337a.C1340c) null);
        }
        hVar.mo33614c();
        long b = a != -1 ? a - hVar.mo33617b() : -1L;
        if ((b != -1 && b < 4) || !hVar.mo33615b(this.f6125c.f4738a, 0, 4, true)) {
            return -1;
        }
        this.f6125c.m34358e(0);
        int f = this.f6125c.m34357f();
        if (f == 441) {
            return -1;
        }
        if (f == 442) {
            hVar.mo33619a(this.f6125c.f4738a, 0, 10);
            this.f6125c.m34358e(9);
            hVar.mo33613c((this.f6125c.m34344r() & 7) + 14);
            return 0;
        } else if (f == 443) {
            hVar.mo33619a(this.f6125c.f4738a, 0, 2);
            this.f6125c.m34358e(0);
            hVar.mo33613c(this.f6125c.m34338x() + 6);
            return 0;
        } else if (((f & (-256)) >> 8) != 1) {
            hVar.mo33613c(1);
            return 0;
        } else {
            int i = f & 255;
            C1493a aVar = this.f6124b.get(i);
            C1493a aVar2 = aVar;
            if (!this.f6127e) {
                C1493a aVar3 = aVar;
                if (aVar == null) {
                    if (i == 189) {
                        mVar = new C1448c();
                        this.f6128f = true;
                        this.f6130h = hVar.getPosition();
                    } else if ((i & 224) == 192) {
                        mVar = new C1484s();
                        this.f6128f = true;
                        this.f6130h = hVar.getPosition();
                    } else if ((i & 240) == 224) {
                        mVar = new C1474n();
                        this.f6129g = true;
                        this.f6130h = hVar.getPosition();
                    }
                    aVar3 = aVar;
                    if (mVar != null) {
                        mVar.mo33167a(this.f6132j, new AbstractC1462h0.C1466d(i, 256));
                        aVar3 = new C1493a(mVar, this.f6123a);
                        this.f6124b.put(i, aVar3);
                    }
                }
                aVar2 = aVar3;
                if (hVar.getPosition() > ((!this.f6128f || !this.f6129g) ? 1048576L : this.f6130h + 8192)) {
                    this.f6127e = true;
                    this.f6132j.mo32639e();
                    aVar2 = aVar3;
                }
            }
            hVar.mo33619a(this.f6125c.f4738a, 0, 2);
            this.f6125c.m34358e(0);
            int x = this.f6125c.m34338x() + 6;
            if (aVar2 == null) {
                hVar.mo33613c(x);
                return 0;
            }
            this.f6125c.m34362c(x);
            hVar.readFully(this.f6125c.f4738a, 0, x);
            this.f6125c.m34358e(6);
            aVar2.m33128a(this.f6125c);
            C1184p pVar = this.f6125c;
            pVar.m34360d(pVar.m34365b());
            return 0;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    /* renamed from: a */
    public final void m33131a(long j) {
        if (!this.f6133k) {
            this.f6133k = true;
            if (this.f6126d.m33144a() != -9223372036854775807L) {
                C1487v vVar = new C1487v(this.f6126d.m33138b(), this.f6126d.m33144a(), j);
                this.f6131i = vVar;
                this.f6132j.mo32656a(vVar.m33672a());
                return;
            }
            this.f6132j.mo32656a(new AbstractC1358o.C1360b(this.f6126d.m33144a()));
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        if ((this.f6123a.m34291c() == -9223372036854775807L) || !(this.f6123a.m34295a() == 0 || this.f6123a.m34295a() == j2)) {
            this.f6123a.m34289d();
            this.f6123a.m34290c(j2);
        }
        C1487v vVar = this.f6131i;
        int i = 0;
        if (vVar != null) {
            vVar.m33665b(j2);
            i = 0;
        }
        while (i < this.f6124b.size()) {
            this.f6124b.valueAt(i).m33126c();
            i++;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f6132j = iVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        boolean z = false;
        hVar.mo33619a(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        hVar.mo33621a(bArr[13] & 7);
        hVar.mo33619a(bArr, 0, 3);
        if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
            z = true;
        }
        return z;
    }
}
