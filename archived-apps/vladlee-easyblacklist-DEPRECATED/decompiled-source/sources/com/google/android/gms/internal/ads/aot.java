package com.google.android.gms.internal.ads;

import java.util.IdentityHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aot.class */
final class aot implements zzlz, zzmc {

    /* renamed from: a */
    public final zzlz[] f8048a;

    /* renamed from: b */
    private final IdentityHashMap<zzmo, Integer> f8049b = new IdentityHashMap<>();

    /* renamed from: c */
    private zzmc f8050c;

    /* renamed from: d */
    private int f8051d;

    /* renamed from: e */
    private zzmr f8052e;

    /* renamed from: f */
    private zzlz[] f8053f;

    /* renamed from: g */
    private zzmn f8054g;

    public aot(zzlz... zzlzVarArr) {
        this.f8048a = zzlzVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzlz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzne[] r9, boolean[] r10, com.google.android.gms.internal.ads.zzmo[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aot.zza(com.google.android.gms.internal.ads.zzne[], boolean[], com.google.android.gms.internal.ads.zzmo[], boolean[], long):long");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzmc
    public final void zza(zzlz zzlzVar) {
        int i = this.f8051d - 1;
        this.f8051d = i;
        if (i <= 0) {
            int i2 = 0;
            for (zzlz zzlzVar2 : this.f8048a) {
                i2 += zzlzVar2.zzhg().length;
            }
            zzms[] zzmsVarArr = new zzms[i2];
            int i3 = 0;
            for (zzlz zzlzVar3 : this.f8048a) {
                zzmr zzhg = zzlzVar3.zzhg();
                int i4 = zzhg.length;
                int i5 = 0;
                while (i5 < i4) {
                    zzmsVarArr[i3] = zzhg.zzav(i5);
                    i5++;
                    i3++;
                }
            }
            this.f8052e = new zzmr(zzmsVarArr);
            this.f8050c.zza((zzlz) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zza(zzmc zzmcVar, long j) {
        this.f8050c = zzmcVar;
        zzlz[] zzlzVarArr = this.f8048a;
        this.f8051d = zzlzVarArr.length;
        for (zzlz zzlzVar : zzlzVarArr) {
            zzlzVar.zza(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmq
    public final /* synthetic */ void zza(zzlz zzlzVar) {
        if (this.f8052e != null) {
            this.f8050c.zza((zzmc) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzee(long j) {
        for (zzlz zzlzVar : this.f8053f) {
            zzlzVar.zzee(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmn
    public final boolean zzef(long j) {
        return this.f8054g.zzef(j);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final long zzeg(long j) {
        long zzeg = this.f8053f[0].zzeg(j);
        int i = 1;
        while (true) {
            zzlz[] zzlzVarArr = this.f8053f;
            if (i >= zzlzVarArr.length) {
                return zzeg;
            }
            if (zzlzVarArr[i].zzeg(zzeg) == zzeg) {
                i++;
            } else {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzhf() {
        for (zzlz zzlzVar : this.f8048a) {
            zzlzVar.zzhf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final zzmr zzhg() {
        return this.f8052e;
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmn
    public final long zzhh() {
        return this.f8054g.zzhh();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final long zzhi() {
        zzlz[] zzlzVarArr;
        long zzhi = this.f8048a[0].zzhi();
        int i = 1;
        while (true) {
            zzlz[] zzlzVarArr2 = this.f8048a;
            if (i >= zzlzVarArr2.length) {
                if (zzhi != -9223372036854775807L) {
                    for (zzlz zzlzVar : this.f8053f) {
                        if (zzlzVar != this.f8048a[0] && zzlzVar.zzeg(zzhi) != zzhi) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzhi;
            } else if (zzlzVarArr2[i].zzhi() == -9223372036854775807L) {
                i++;
            } else {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzlz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzhj() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.zzlz[] r0 = r0.f8053f
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
            long r0 = r0.zzhj()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aot.zzhj():long");
    }
}
