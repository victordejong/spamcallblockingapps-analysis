package p012b.p076s.p078b.p079a.p086s0.p091v;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.s0.v.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/o.class */
public final class C1420o {

    /* renamed from: a */
    public final C1417l f5726a;

    /* renamed from: b */
    public final int f5727b;

    /* renamed from: c */
    public final long[] f5728c;

    /* renamed from: d */
    public final int[] f5729d;

    /* renamed from: e */
    public final int f5730e;

    /* renamed from: f */
    public final long[] f5731f;

    /* renamed from: g */
    public final int[] f5732g;

    /* renamed from: h */
    public final long f5733h;

    public C1420o(C1417l lVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z = false;
        C1160a.m34520a(iArr.length == jArr2.length);
        C1160a.m34520a(jArr.length == jArr2.length);
        C1160a.m34520a(iArr2.length == jArr2.length ? true : z);
        this.f5726a = lVar;
        this.f5728c = jArr;
        this.f5729d = iArr;
        this.f5730e = i;
        this.f5731f = jArr2;
        this.f5732g = iArr2;
        this.f5733h = j;
        this.f5727b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public int m33362a(long j) {
        for (int b = C1167d0.m34449b(this.f5731f, j, true, false); b >= 0; b--) {
            if ((this.f5732g[b] & 1) != 0) {
                return b;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m33361b(long j) {
        for (int a = C1167d0.m34464a(this.f5731f, j, true, false); a < this.f5731f.length; a++) {
            if ((this.f5732g[a] & 1) != 0) {
                return a;
            }
        }
        return -1;
    }
}
