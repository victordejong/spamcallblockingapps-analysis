package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlq.class */
public final class zzlq implements zzmn {

    /* renamed from: a */
    private final zzmn[] f15108a;

    public zzlq(zzmn[] zzmnVarArr) {
        this.f15108a = zzmnVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzmn
    public final boolean zzef(long j) {
        boolean z;
        zzmn[] zzmnVarArr;
        boolean z2;
        boolean z3 = false;
        do {
            long zzhh = zzhh();
            z = z3;
            if (zzhh == Long.MIN_VALUE) {
                break;
            }
            z2 = false;
            for (zzmn zzmnVar : this.f15108a) {
                z2 = z2;
                if (zzmnVar.zzhh() == zzhh) {
                    z2 |= zzmnVar.zzef(j);
                }
            }
            z = z3 | z2;
            z3 = z;
        } while (z2);
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzmn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzhh() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.zzmn[] r0 = r0.f15108a
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.zzhh()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004b
            r0 = -9223372036854775808
            return r0
        L_0x004b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlq.zzhh():long");
    }
}
