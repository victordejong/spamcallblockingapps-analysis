package p131c.p161d.p170b.p188c.p210w0.p213t;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.t.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/t/f.class */
public final class C3074f {

    /* renamed from: a */
    public final C2904v f11173a = new C2904v(8);

    /* renamed from: b */
    public int f11174b;

    /* renamed from: a */
    public final long m27946a(AbstractC3043h hVar) throws IOException, InterruptedException {
        int i = 0;
        hVar.mo28055a(this.f11173a.f10530a, 0, 1);
        int i2 = this.f11173a.f10530a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        hVar.mo28055a(this.f11173a.f10530a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f11173a.f10530a[i] & 255) + (i5 << 8);
        }
        this.f11174b += i4 + 1;
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27945b(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p213t.C3074f.m27945b(c.d.b.c.w0.h):boolean");
    }
}
