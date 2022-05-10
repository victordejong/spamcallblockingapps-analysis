package p131c.p161d.p170b.p188c.p210w0.p216w;

import java.io.IOException;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.w.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/e.class */
public final class C3121e {

    /* renamed from: a */
    public final C3122f f11398a = new C3122f();

    /* renamed from: b */
    public final C2904v f11399b = new C2904v(new byte[65025], 0);

    /* renamed from: c */
    public int f11400c = -1;

    /* renamed from: d */
    public int f11401d;

    /* renamed from: e */
    public boolean f11402e;

    /* renamed from: a */
    public final int m27770a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f11401d = 0;
        do {
            int i5 = this.f11401d;
            C3122f fVar = this.f11398a;
            i2 = i4;
            if (i + i5 >= fVar.f11406d) {
                break;
            }
            int[] iArr = fVar.f11409g;
            this.f11401d = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: a */
    public C3122f m27771a() {
        return this.f11398a;
    }

    /* renamed from: a */
    public boolean m27769a(AbstractC3043h hVar) throws IOException, InterruptedException {
        int i;
        C2877e.m28731b(hVar != null);
        if (this.f11402e) {
            this.f11402e = false;
            this.f11399b.m28516z();
        }
        while (!this.f11402e) {
            if (this.f11400c < 0) {
                if (!this.f11398a.m27764a(hVar, true)) {
                    return false;
                }
                C3122f fVar = this.f11398a;
                int i2 = fVar.f11407e;
                if ((fVar.f11404b & 1) == 1 && this.f11399b.m28541d() == 0) {
                    i2 += m27770a(0);
                    i = this.f11401d + 0;
                } else {
                    i = 0;
                }
                hVar.mo28049c(i2);
                this.f11400c = i;
            }
            int a = m27770a(this.f11400c);
            int i3 = this.f11400c + this.f11401d;
            if (a > 0) {
                if (this.f11399b.m28545b() < this.f11399b.m28541d() + a) {
                    C2904v vVar = this.f11399b;
                    vVar.f10530a = Arrays.copyOf(vVar.f10530a, vVar.m28541d() + a);
                }
                C2904v vVar2 = this.f11399b;
                hVar.readFully(vVar2.f10530a, vVar2.m28541d(), a);
                C2904v vVar3 = this.f11399b;
                vVar3.m28540d(vVar3.m28541d() + a);
                this.f11402e = this.f11398a.f11409g[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f11398a.f11406d) {
                i4 = -1;
            }
            this.f11400c = i4;
        }
        return true;
    }

    /* renamed from: b */
    public C2904v m27768b() {
        return this.f11399b;
    }

    /* renamed from: c */
    public void m27767c() {
        this.f11398a.m27765a();
        this.f11399b.m28516z();
        this.f11400c = -1;
        this.f11402e = false;
    }

    /* renamed from: d */
    public void m27766d() {
        C2904v vVar = this.f11399b;
        byte[] bArr = vVar.f10530a;
        if (bArr.length != 65025) {
            vVar.f10530a = Arrays.copyOf(bArr, Math.max(65025, vVar.m28541d()));
        }
    }
}
