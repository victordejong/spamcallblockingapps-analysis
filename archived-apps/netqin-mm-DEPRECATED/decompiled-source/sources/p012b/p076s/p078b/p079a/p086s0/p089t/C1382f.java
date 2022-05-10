package p012b.p076s.p078b.p079a.p086s0.p089t;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.t.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/f.class */
public final class C1382f {

    /* renamed from: a */
    public final C1184p f5536a = new C1184p(8);

    /* renamed from: b */
    public int f5537b;

    /* renamed from: a */
    public final long m33518a(AbstractC1351h hVar) throws IOException, InterruptedException {
        int i = 0;
        hVar.mo33619a(this.f5536a.f4738a, 0, 1);
        int i2 = this.f5536a.f4738a[0] & 255;
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
        hVar.mo33619a(this.f5536a.f4738a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f5536a.f4738a[i] & 255) + (i5 << 8);
        }
        this.f5537b += i4 + 1;
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m33517b(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p089t.C1382f.m33517b(b.s.b.a.s0.h):boolean");
    }
}
