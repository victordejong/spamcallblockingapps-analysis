package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoo.class */
public final class zzoo implements zzog {

    /* renamed from: a */
    private boolean f15253a;

    /* renamed from: b */
    private long f15254b;

    /* renamed from: c */
    private long f15255c;

    /* renamed from: d */
    private zzhc f15256d = zzhc.zzagb;

    public final void start() {
        if (!this.f15253a) {
            this.f15255c = SystemClock.elapsedRealtime();
            this.f15253a = true;
        }
    }

    public final void stop() {
        if (this.f15253a) {
            zzel(zzfp());
            this.f15253a = false;
        }
    }

    public final void zza(zzog zzogVar) {
        zzel(zzogVar.zzfp());
        this.f15256d = zzogVar.zzfi();
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zzhc zzb(zzhc zzhcVar) {
        if (this.f15253a) {
            zzel(zzfp());
        }
        this.f15256d = zzhcVar;
        return zzhcVar;
    }

    public final void zzel(long j) {
        this.f15254b = j;
        if (this.f15253a) {
            this.f15255c = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zzhc zzfi() {
        return this.f15256d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzfp() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f15254b
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f15253a
            if (r0 == 0) goto L_0x0038
            long r0 = android.os.SystemClock.elapsedRealtime()
            r1 = r5
            long r1 = r1.f15255c
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzhc r0 = r0.f15256d
            float r0 = r0.zzagc
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002b
            r0 = r8
            long r0 = com.google.android.gms.internal.ads.zzgi.zzdn(r0)
            r8 = r0
            goto L_0x0034
        L_0x002b:
            r0 = r5
            com.google.android.gms.internal.ads.zzhc r0 = r0.f15256d
            r1 = r8
            long r0 = r0.zzdu(r1)
            r8 = r0
        L_0x0034:
            r0 = r6
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
        L_0x0038:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoo.zzfp():long");
    }
}
