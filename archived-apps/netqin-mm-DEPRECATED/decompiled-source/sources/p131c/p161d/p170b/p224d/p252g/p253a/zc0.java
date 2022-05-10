package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzjy;
import com.google.android.gms.internal.ads.zzpk;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.zc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zc0.class */
public final class zc0 {

    /* renamed from: a */
    public final zzpk f16432a = new zzpk(8);

    /* renamed from: b */
    public int f16433b;

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m26013a(com.google.android.gms.internal.ads.zzjy r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.zc0.m26013a(com.google.android.gms.internal.ads.zzjy):boolean");
    }

    /* renamed from: b */
    public final long m26012b(zzjy zzjyVar) throws IOException, InterruptedException {
        int i = 0;
        zzjyVar.mo11886a(this.f16432a.f28779a, 0, 1);
        int i2 = this.f16432a.f28779a[0] & 255;
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
        zzjyVar.mo11886a(this.f16432a.f28779a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f16432a.f28779a[i] & 255) + (i5 << 8);
        }
        this.f16433b += i4 + 1;
        return i5;
    }
}
