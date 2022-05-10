package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p206s0.C2995q;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/m.class */
public final class C3166m implements AbstractC3168o {

    /* renamed from: b */
    public final String f11581b;

    /* renamed from: c */
    public String f11582c;

    /* renamed from: d */
    public AbstractC3054q f11583d;

    /* renamed from: f */
    public int f11585f;

    /* renamed from: g */
    public int f11586g;

    /* renamed from: h */
    public long f11587h;

    /* renamed from: i */
    public Format f11588i;

    /* renamed from: j */
    public int f11589j;

    /* renamed from: k */
    public long f11590k;

    /* renamed from: a */
    public final C2904v f11580a = new C2904v(new byte[18]);

    /* renamed from: e */
    public int f11584e = 0;

    public C3166m(String str) {
        this.f11581b = str;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11584e = 0;
        this.f11585f = 0;
        this.f11586g = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11590k = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        while (vVar.m28552a() > 0) {
            int i = this.f11584e;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(vVar.m28552a(), this.f11589j - this.f11585f);
                        this.f11583d.mo28036a(vVar, min);
                        int i2 = this.f11585f + min;
                        this.f11585f = i2;
                        int i3 = this.f11589j;
                        if (i2 == i3) {
                            this.f11583d.mo28037a(this.f11590k, 1, i3, 0, null);
                            this.f11590k += this.f11587h;
                            this.f11584e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (m27643a(vVar, this.f11580a.f10530a, 18)) {
                    m27641c();
                    this.f11580a.m28538e(0);
                    this.f11583d.mo28036a(this.f11580a, 18);
                    this.f11584e = 2;
                }
            } else if (m27642b(vVar)) {
                this.f11584e = 1;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11582c = dVar.m27683b();
        this.f11583d = iVar.mo28048a(dVar.m27682c(), 1);
    }

    /* renamed from: a */
    public final boolean m27643a(C2904v vVar, byte[] bArr, int i) {
        int min = Math.min(vVar.m28552a(), i - this.f11585f);
        vVar.m28546a(bArr, this.f11585f, min);
        int i2 = this.f11585f + min;
        this.f11585f = i2;
        return i2 == i;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: b */
    public final boolean m27642b(C2904v vVar) {
        while (vVar.m28552a() > 0) {
            int i = this.f11586g << 8;
            this.f11586g = i;
            int r = i | vVar.m28524r();
            this.f11586g = r;
            if (C2995q.m28243a(r)) {
                byte[] bArr = this.f11580a.f10530a;
                int i2 = this.f11586g;
                bArr[0] = (byte) ((i2 >> 24) & 255);
                bArr[1] = (byte) ((i2 >> 16) & 255);
                bArr[2] = (byte) ((i2 >> 8) & 255);
                bArr[3] = (byte) (i2 & 255);
                this.f11585f = 4;
                this.f11586g = 0;
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final void m27641c() {
        byte[] bArr = this.f11580a.f10530a;
        if (this.f11588i == null) {
            Format a = C2995q.m28240a(bArr, this.f11582c, this.f11581b, null);
            this.f11588i = a;
            this.f11583d.mo28034a(a);
        }
        this.f11589j = C2995q.m28241a(bArr);
        this.f11587h = (int) ((C2995q.m28237d(bArr) * 1000000) / this.f11588i.f21966w);
    }
}
