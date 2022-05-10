package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpq;
/* renamed from: c.d.b.d.g.a.wd0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/wd0.class */
public final class wd0 {

    /* renamed from: a */
    public final int f15935a;

    /* renamed from: b */
    public final long[] f15936b;

    /* renamed from: c */
    public final int[] f15937c;

    /* renamed from: d */
    public final int f15938d;

    /* renamed from: e */
    public final long[] f15939e;

    /* renamed from: f */
    public final int[] f15940f;

    public wd0(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        boolean z = true;
        zzoz.m11696a(iArr.length == jArr2.length);
        zzoz.m11696a(jArr.length == jArr2.length);
        if (iArr2.length != jArr2.length) {
            z = false;
        }
        zzoz.m11696a(z);
        this.f15936b = jArr;
        this.f15937c = iArr;
        this.f15938d = i;
        this.f15939e = jArr2;
        this.f15940f = iArr2;
        this.f15935a = jArr.length;
    }

    /* renamed from: a */
    public final int m26174a(long j) {
        for (int a = zzpq.m11621a(this.f15939e, j, true, false); a >= 0; a--) {
            if ((this.f15940f[a] & 1) != 0) {
                return a;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public final int m26173b(long j) {
        for (int b = zzpq.m11616b(this.f15939e, j, true, false); b < this.f15939e.length; b++) {
            if ((this.f15940f[b] & 1) != 0) {
                return b;
            }
        }
        return -1;
    }
}
