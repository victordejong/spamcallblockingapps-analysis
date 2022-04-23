package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhg.class */
public abstract class zzhg {
    public static final zzhg zzagf = new amk();

    public final boolean isEmpty() {
        return zzev() == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if ((zzev() - 1) == 0) goto L_0x003f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(int r6, com.google.android.gms.internal.ads.zzhi r7, com.google.android.gms.internal.ads.zzhl r8, int r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = 0
            com.google.android.gms.internal.ads.zzhi r0 = r0.zza(r1, r2, r3)
            r0 = r5
            r1 = 0
            r2 = r8
            r3 = 0
            com.google.android.gms.internal.ads.zzhl r0 = r0.zza(r1, r2, r3)
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0063
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x003f
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L_0x0037
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.zzev()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L_0x0052
            goto L_0x003f
        L_0x0037:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x003f:
            r0 = 0
            r6 = r0
            goto L_0x0052
        L_0x0044:
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.zzev()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L_0x0052
            r0 = -1
            r6 = r0
        L_0x0052:
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L_0x0059
            r0 = -1
            return r0
        L_0x0059:
            r0 = r5
            r1 = r6
            r2 = r8
            r3 = 0
            com.google.android.gms.internal.ads.zzhl r0 = r0.zza(r1, r2, r3)
            r0 = 0
            return r0
        L_0x0063:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhg.zza(int, com.google.android.gms.internal.ads.zzhi, com.google.android.gms.internal.ads.zzhl, int):int");
    }

    public abstract zzhi zza(int i, zzhi zzhiVar, boolean z);

    public final zzhl zza(int i, zzhl zzhlVar, boolean z) {
        return zza(i, zzhlVar, false, 0L);
    }

    public abstract zzhl zza(int i, zzhl zzhlVar, boolean z, long j);

    public abstract int zzc(Object obj);

    public abstract int zzev();

    public abstract int zzew();
}
