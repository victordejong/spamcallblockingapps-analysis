package p131c.p161d.p170b.p188c.p210w0.p215v;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.v.n */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/n.class */
public final class C3112n {

    /* renamed from: a */
    public C3097e f11347a;

    /* renamed from: b */
    public long f11348b;

    /* renamed from: c */
    public long f11349c;

    /* renamed from: d */
    public long f11350d;

    /* renamed from: e */
    public int f11351e;

    /* renamed from: f */
    public int f11352f;

    /* renamed from: g */
    public long[] f11353g;

    /* renamed from: h */
    public int[] f11354h;

    /* renamed from: i */
    public int[] f11355i;

    /* renamed from: j */
    public int[] f11356j;

    /* renamed from: k */
    public long[] f11357k;

    /* renamed from: l */
    public boolean[] f11358l;

    /* renamed from: m */
    public boolean f11359m;

    /* renamed from: n */
    public boolean[] f11360n;

    /* renamed from: o */
    public C3111m f11361o;

    /* renamed from: p */
    public int f11362p;

    /* renamed from: q */
    public C2904v f11363q;

    /* renamed from: r */
    public boolean f11364r;

    /* renamed from: s */
    public long f11365s;

    /* renamed from: a */
    public long m27797a(int i) {
        return this.f11357k[i] + this.f11356j[i];
    }

    /* renamed from: a */
    public void m27798a() {
        this.f11351e = 0;
        this.f11365s = 0L;
        this.f11359m = false;
        this.f11364r = false;
        this.f11361o = null;
    }

    /* renamed from: a */
    public void m27796a(int i, int i2) {
        this.f11351e = i;
        this.f11352f = i2;
        int[] iArr = this.f11354h;
        if (iArr == null || iArr.length < i) {
            this.f11353g = new long[i];
            this.f11354h = new int[i];
        }
        int[] iArr2 = this.f11355i;
        if (iArr2 == null || iArr2.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.f11355i = new int[i3];
            this.f11356j = new int[i3];
            this.f11357k = new long[i3];
            this.f11358l = new boolean[i3];
            this.f11360n = new boolean[i3];
        }
    }

    /* renamed from: a */
    public void m27795a(C2904v vVar) {
        vVar.m28546a(this.f11363q.f10530a, 0, this.f11362p);
        this.f11363q.m28538e(0);
        this.f11364r = false;
    }

    /* renamed from: a */
    public void m27794a(AbstractC3043h hVar) throws IOException, InterruptedException {
        hVar.readFully(this.f11363q.f10530a, 0, this.f11362p);
        this.f11363q.m28538e(0);
        this.f11364r = false;
    }

    /* renamed from: b */
    public void m27793b(int i) {
        C2904v vVar = this.f11363q;
        if (vVar == null || vVar.m28541d() < i) {
            this.f11363q = new C2904v(i);
        }
        this.f11362p = i;
        this.f11359m = true;
        this.f11364r = true;
    }

    /* renamed from: c */
    public boolean m27792c(int i) {
        return this.f11359m && this.f11360n[i];
    }
}
