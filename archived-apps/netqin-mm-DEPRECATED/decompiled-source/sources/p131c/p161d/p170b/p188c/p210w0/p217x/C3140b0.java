package p131c.p161d.p170b.p188c.p210w0.p217x;

import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.b0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/b0.class */
public final class C3140b0 implements AbstractC3155h0 {

    /* renamed from: a */
    public final AbstractC3138a0 f11450a;

    /* renamed from: b */
    public final C2904v f11451b = new C2904v(32);

    /* renamed from: c */
    public int f11452c;

    /* renamed from: d */
    public int f11453d;

    /* renamed from: e */
    public boolean f11454e;

    /* renamed from: f */
    public boolean f11455f;

    public C3140b0(AbstractC3138a0 a0Var) {
        this.f11450a = a0Var;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0
    /* renamed from: a */
    public void mo27586a() {
        this.f11455f = true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0
    /* renamed from: a */
    public void mo27584a(C2881f0 f0Var, AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        this.f11450a.mo27688a(f0Var, iVar, dVar);
        this.f11455f = true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0
    /* renamed from: a */
    public void mo27583a(C2904v vVar, int i) {
        boolean z = (i & 1) != 0;
        int c = z ? vVar.m28543c() + vVar.m28524r() : -1;
        if (this.f11455f) {
            if (z) {
                this.f11455f = false;
                vVar.m28538e(c);
                this.f11453d = 0;
            } else {
                return;
            }
        }
        while (vVar.m28552a() > 0) {
            int i2 = this.f11453d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int r = vVar.m28524r();
                    vVar.m28538e(vVar.m28543c() - 1);
                    if (r == 255) {
                        this.f11455f = true;
                        return;
                    }
                }
                int min = Math.min(vVar.m28552a(), 3 - this.f11453d);
                vVar.m28546a(this.f11451b.f10530a, this.f11453d, min);
                int i3 = this.f11453d + min;
                this.f11453d = i3;
                if (i3 == 3) {
                    this.f11451b.m28542c(3);
                    this.f11451b.m28536f(1);
                    int r2 = this.f11451b.m28524r();
                    int r3 = this.f11451b.m28524r();
                    this.f11454e = (r2 & 128) != 0;
                    this.f11452c = (((r2 & 15) << 8) | r3) + 3;
                    int b = this.f11451b.m28545b();
                    int i4 = this.f11452c;
                    if (b < i4) {
                        C2904v vVar2 = this.f11451b;
                        byte[] bArr = vVar2.f10530a;
                        vVar2.m28542c(Math.min(4098, Math.max(i4, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f11451b.f10530a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(vVar.m28552a(), this.f11452c - this.f11453d);
                vVar.m28546a(this.f11451b.f10530a, this.f11453d, min2);
                int i5 = this.f11453d + min2;
                this.f11453d = i5;
                int i6 = this.f11452c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f11454e) {
                        this.f11451b.m28542c(i6);
                    } else if (C2885h0.m28659a(this.f11451b.f10530a, 0, i6, -1) != 0) {
                        this.f11455f = true;
                        return;
                    } else {
                        this.f11451b.m28542c(this.f11452c - 4);
                    }
                    this.f11450a.mo27687a(this.f11451b);
                    this.f11453d = 0;
                }
            }
        }
    }
}
