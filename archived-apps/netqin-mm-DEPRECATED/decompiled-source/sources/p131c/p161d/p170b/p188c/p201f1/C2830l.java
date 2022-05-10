package p131c.p161d.p170b.p188c.p201f1;

import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.f1.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/l.class */
public final class C2830l implements AbstractC2821e {

    /* renamed from: a */
    public final boolean f10274a;

    /* renamed from: b */
    public final int f10275b;

    /* renamed from: c */
    public final byte[] f10276c;

    /* renamed from: d */
    public final C2820d[] f10277d;

    /* renamed from: e */
    public int f10278e;

    /* renamed from: f */
    public int f10279f;

    /* renamed from: g */
    public int f10280g;

    /* renamed from: h */
    public C2820d[] f10281h;

    public C2830l(boolean z, int i) {
        this(z, i, 0);
    }

    public C2830l(boolean z, int i, int i2) {
        C2877e.m28734a(i > 0);
        C2877e.m28734a(i2 >= 0);
        this.f10274a = z;
        this.f10275b = i;
        this.f10280g = i2;
        this.f10281h = new C2820d[i2 + 100];
        if (i2 > 0) {
            this.f10276c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f10281h[i3] = new C2820d(this.f10276c, i3 * i);
            }
        } else {
            this.f10276c = null;
        }
        this.f10277d = new C2820d[1];
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2821e
    /* renamed from: a */
    public C2820d mo28932a() {
        C2820d dVar;
        synchronized (this) {
            this.f10279f++;
            if (this.f10280g > 0) {
                C2820d[] dVarArr = this.f10281h;
                int i = this.f10280g - 1;
                this.f10280g = i;
                dVar = dVarArr[i];
                this.f10281h[i] = null;
            } else {
                dVar = new C2820d(new byte[this.f10275b], 0);
            }
        }
        return dVar;
    }

    /* renamed from: a */
    public void m28931a(int i) {
        synchronized (this) {
            boolean z = i < this.f10278e;
            this.f10278e = i;
            if (z) {
                mo28928b();
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2821e
    /* renamed from: a */
    public void mo28930a(C2820d dVar) {
        synchronized (this) {
            this.f10277d[0] = dVar;
            mo28929a(this.f10277d);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2821e
    /* renamed from: a */
    public void mo28929a(C2820d[] dVarArr) {
        synchronized (this) {
            if (this.f10280g + dVarArr.length >= this.f10281h.length) {
                this.f10281h = (C2820d[]) Arrays.copyOf(this.f10281h, Math.max(this.f10281h.length * 2, this.f10280g + dVarArr.length));
            }
            for (C2820d dVar : dVarArr) {
                C2820d[] dVarArr2 = this.f10281h;
                int i = this.f10280g;
                this.f10280g = i + 1;
                dVarArr2[i] = dVar;
            }
            this.f10279f -= dVarArr.length;
            notifyAll();
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2821e
    /* renamed from: b */
    public void mo28928b() {
        synchronized (this) {
            int i = 0;
            int max = Math.max(0, C2885h0.m28686a(this.f10278e, this.f10275b) - this.f10279f);
            if (max < this.f10280g) {
                int i2 = max;
                if (this.f10276c != null) {
                    int i3 = this.f10280g - 1;
                    while (i <= i3) {
                        C2820d dVar = this.f10281h[i];
                        if (dVar.f10259a == this.f10276c) {
                            i++;
                        } else {
                            C2820d dVar2 = this.f10281h[i3];
                            if (dVar2.f10259a != this.f10276c) {
                                i3--;
                            } else {
                                this.f10281h[i] = dVar2;
                                this.f10281h[i3] = dVar;
                                i3--;
                                i++;
                            }
                        }
                    }
                    int max2 = Math.max(max, i);
                    i2 = max2;
                    if (max2 >= this.f10280g) {
                        return;
                    }
                }
                Arrays.fill(this.f10281h, i2, this.f10280g, (Object) null);
                this.f10280g = i2;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2821e
    /* renamed from: c */
    public int mo28927c() {
        return this.f10275b;
    }

    /* renamed from: d */
    public int m28926d() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f10279f;
            i2 = this.f10275b;
        }
        return i * i2;
    }

    /* renamed from: e */
    public void m28925e() {
        synchronized (this) {
            if (this.f10274a) {
                m28931a(0);
            }
        }
    }
}
