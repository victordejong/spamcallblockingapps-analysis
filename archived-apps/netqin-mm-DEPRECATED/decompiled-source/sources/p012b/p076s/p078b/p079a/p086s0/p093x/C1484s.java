package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1356m;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.s */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/s.class */
public final class C1484s implements AbstractC1473m {

    /* renamed from: a */
    public final C1184p f6083a;

    /* renamed from: b */
    public final C1356m f6084b;

    /* renamed from: c */
    public final String f6085c;

    /* renamed from: d */
    public String f6086d;

    /* renamed from: e */
    public AbstractC1362q f6087e;

    /* renamed from: f */
    public int f6088f;

    /* renamed from: g */
    public int f6089g;

    /* renamed from: h */
    public boolean f6090h;

    /* renamed from: i */
    public boolean f6091i;

    /* renamed from: j */
    public long f6092j;

    /* renamed from: k */
    public int f6093k;

    /* renamed from: l */
    public long f6094l;

    public C1484s() {
        this(null);
    }

    public C1484s(String str) {
        this.f6088f = 0;
        C1184p pVar = new C1184p(4);
        this.f6083a = pVar;
        pVar.f4738a[0] = (byte) (-1);
        this.f6084b = new C1356m();
        this.f6085c = str;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f6088f = 0;
        this.f6089g = 0;
        this.f6091i = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f6094l = j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        while (pVar.m34372a() > 0) {
            int i = this.f6088f;
            if (i == 0) {
                m33165b(pVar);
            } else if (i == 1) {
                m33163d(pVar);
            } else if (i == 2) {
                m33164c(pVar);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f6086d = dVar.m33245b();
        this.f6087e = iVar.mo32666a(dVar.m33244c(), 1);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: b */
    public final void m33165b(C1184p pVar) {
        byte[] bArr = pVar.f4738a;
        int d = pVar.m34361d();
        for (int c = pVar.m34363c(); c < d; c++) {
            boolean z = (bArr[c] & 255) == 255;
            boolean z2 = this.f6091i && (bArr[c] & 224) == 224;
            this.f6091i = z;
            if (z2) {
                pVar.m34358e(c + 1);
                this.f6091i = false;
                this.f6083a.f4738a[1] = bArr[c];
                this.f6089g = 2;
                this.f6088f = 1;
                return;
            }
        }
        pVar.m34358e(d);
    }

    /* renamed from: c */
    public final void m33164c(C1184p pVar) {
        int min = Math.min(pVar.m34372a(), this.f6093k - this.f6089g);
        this.f6087e.mo32827a(pVar, min);
        int i = this.f6089g + min;
        this.f6089g = i;
        int i2 = this.f6093k;
        if (i >= i2) {
            this.f6087e.mo32832a(this.f6094l, 1, i2, 0, null);
            this.f6094l += this.f6092j;
            this.f6089g = 0;
            this.f6088f = 0;
        }
    }

    /* renamed from: d */
    public final void m33163d(C1184p pVar) {
        int min = Math.min(pVar.m34372a(), 4 - this.f6089g);
        pVar.m34366a(this.f6083a.f4738a, this.f6089g, min);
        int i = this.f6089g + min;
        this.f6089g = i;
        if (i >= 4) {
            this.f6083a.m34358e(0);
            if (!C1356m.m33606a(this.f6083a.m34357f(), this.f6084b)) {
                this.f6089g = 0;
                this.f6088f = 1;
                return;
            }
            C1356m mVar = this.f6084b;
            this.f6093k = mVar.f5350c;
            if (!this.f6090h) {
                long j = mVar.f5354g;
                int i2 = mVar.f5351d;
                this.f6092j = (j * 1000000) / i2;
                this.f6087e.mo32623a(Format.m38180a(this.f6086d, mVar.f5349b, (String) null, -1, 4096, mVar.f5352e, i2, (List<byte[]>) null, (DrmInitData) null, 0, this.f6085c));
                this.f6090h = true;
            }
            this.f6083a.m34358e(0);
            this.f6087e.mo32827a(this.f6083a, 4);
            this.f6088f = 2;
        }
    }
}
