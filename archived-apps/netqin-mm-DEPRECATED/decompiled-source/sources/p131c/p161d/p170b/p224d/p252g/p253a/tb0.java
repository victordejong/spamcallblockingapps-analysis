package p131c.p161d.p170b.p224d.p252g.p253a;

import android.util.Log;
import com.google.android.gms.internal.ads.zzhs;
import com.google.android.gms.internal.ads.zzhw;
import com.google.android.gms.internal.ads.zzhx;
import com.google.android.gms.internal.ads.zzmx;
import com.google.android.gms.internal.ads.zzmz;
import com.google.android.gms.internal.ads.zznm;
import com.google.android.gms.internal.ads.zzod;
import com.google.android.gms.internal.ads.zzog;
import com.google.android.gms.internal.ads.zzoi;
import com.google.android.gms.internal.ads.zzoz;
/* renamed from: c.d.b.d.g.a.tb0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/tb0.class */
public final class tb0 {

    /* renamed from: a */
    public final zzmx f15372a;

    /* renamed from: b */
    public final Object f15373b;

    /* renamed from: c */
    public final int f15374c;

    /* renamed from: d */
    public final zznm[] f15375d;

    /* renamed from: e */
    public final boolean[] f15376e;

    /* renamed from: f */
    public final long f15377f;

    /* renamed from: g */
    public int f15378g;

    /* renamed from: h */
    public long f15379h;

    /* renamed from: i */
    public boolean f15380i;

    /* renamed from: j */
    public boolean f15381j;

    /* renamed from: k */
    public boolean f15382k;

    /* renamed from: l */
    public tb0 f15383l;

    /* renamed from: m */
    public zzoi f15384m;

    /* renamed from: n */
    public final zzhx[] f15385n;

    /* renamed from: o */
    public final zzhw[] f15386o;

    /* renamed from: p */
    public final zzog f15387p;

    /* renamed from: q */
    public final zzhs f15388q;

    /* renamed from: r */
    public final zzmz f15389r;

    /* renamed from: s */
    public zzoi f15390s;

    public tb0(zzhx[] zzhxVarArr, zzhw[] zzhwVarArr, long j, zzog zzogVar, zzhs zzhsVar, zzmz zzmzVar, Object obj, int i, int i2, boolean z, long j2) {
        this.f15385n = zzhxVarArr;
        this.f15386o = zzhwVarArr;
        this.f15377f = j;
        this.f15387p = zzogVar;
        this.f15388q = zzhsVar;
        this.f15389r = zzmzVar;
        zzoz.m11698a(obj);
        this.f15373b = obj;
        this.f15374c = i;
        this.f15378g = i2;
        this.f15380i = z;
        this.f15379h = j2;
        this.f15375d = new zznm[zzhxVarArr.length];
        this.f15376e = new boolean[zzhxVarArr.length];
        this.f15372a = zzmzVar.mo11792a(i2, zzhsVar.mo12018c());
    }

    /* renamed from: a */
    public final long m26322a(long j, boolean z) {
        return m26321a(j, false, new boolean[this.f15385n.length]);
    }

    /* renamed from: a */
    public final long m26321a(long j, boolean z, boolean[] zArr) {
        zzod zzodVar = this.f15384m.f28716b;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzodVar.f28709a) {
                break;
            }
            boolean[] zArr2 = this.f15376e;
            if (z || !this.f15384m.m11732a(this.f15390s, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long a = this.f15372a.mo11805a(zzodVar.m11740a(), this.f15376e, this.f15375d, zArr, j);
        this.f15390s = this.f15384m;
        this.f15382k = false;
        int i2 = 0;
        while (true) {
            zznm[] zznmVarArr = this.f15375d;
            if (i2 < zznmVarArr.length) {
                if (zznmVarArr[i2] != null) {
                    zzoz.m11694b(zzodVar.m11739a(i2) != null);
                    this.f15382k = true;
                } else {
                    zzoz.m11694b(zzodVar.m11739a(i2) == null);
                }
                i2++;
            } else {
                this.f15388q.mo12020a(this.f15385n, this.f15384m.f28715a, zzodVar);
                return a;
            }
        }
    }

    /* renamed from: a */
    public final void m26324a() {
        try {
            this.f15389r.mo11790a(this.f15372a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }

    /* renamed from: a */
    public final void m26323a(int i, boolean z) {
        this.f15378g = i;
        this.f15380i = z;
    }

    /* renamed from: b */
    public final long m26320b() {
        return this.f15377f - this.f15379h;
    }

    /* renamed from: c */
    public final boolean m26319c() {
        if (this.f15381j) {
            return !this.f15382k || this.f15372a.mo11803c() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m26318d() throws com.google.android.gms.internal.ads.zzhd {
        /*
            r4 = this;
            r0 = r4
            com.google.android.gms.internal.ads.zzog r0 = r0.f15387p
            r1 = r4
            com.google.android.gms.internal.ads.zzhw[] r1 = r1.f15386o
            r2 = r4
            com.google.android.gms.internal.ads.zzmx r2 = r2.f15372a
            com.google.android.gms.internal.ads.zznp r2 = r2.mo11799f()
            com.google.android.gms.internal.ads.zzoi r0 = r0.mo11734a(r1, r2)
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzoi r0 = r0.f15390s
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0023
        L_0x001e:
            r0 = 0
            r7 = r0
            goto L_0x0044
        L_0x0023:
            r0 = 0
            r7 = r0
        L_0x0025:
            r0 = r7
            r1 = r5
            com.google.android.gms.internal.ads.zzod r1 = r1.f28716b
            int r1 = r1.f28709a
            if (r0 >= r1) goto L_0x0042
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = r0.m11732a(r1, r2)
            if (r0 != 0) goto L_0x003c
            goto L_0x001e
        L_0x003c:
            int r7 = r7 + 1
            goto L_0x0025
        L_0x0042:
            r0 = 1
            r7 = r0
        L_0x0044:
            r0 = r7
            if (r0 == 0) goto L_0x004a
            r0 = 0
            return r0
        L_0x004a:
            r0 = r4
            r1 = r5
            r0.f15384m = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.tb0.m26318d():boolean");
    }
}
