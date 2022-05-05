package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbt.class */
public final class zzbbt implements zzha {

    /* renamed from: a */
    private final zznp f11696a;

    /* renamed from: b */
    private long f11697b;

    /* renamed from: c */
    private long f11698c;

    /* renamed from: d */
    private long f11699d;

    /* renamed from: e */
    private long f11700e;

    /* renamed from: f */
    private int f11701f;

    /* renamed from: g */
    private boolean f11702g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbt() {
        this((byte) 0);
    }

    private zzbbt(byte b) {
        this.f11696a = new zznp(true, 65536);
        this.f11697b = 15000000L;
        this.f11698c = 30000000L;
        this.f11699d = 2500000L;
        this.f11700e = 5000000L;
    }

    /* renamed from: a */
    private final void m4134a(boolean z) {
        this.f11701f = 0;
        this.f11702g = false;
        if (z) {
            this.f11696a.reset();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final void onStopped() {
        m4134a(true);
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final void zza(zzhf[] zzhfVarArr, zzmr zzmrVar, zzng zzngVar) {
        this.f11701f = 0;
        for (int i = 0; i < zzhfVarArr.length; i++) {
            if (zzngVar.zzay(i) != null) {
                this.f11701f += zzoq.zzbl(zzhfVarArr[i].getTrackType());
            }
        }
        this.f11696a.zzba(this.f11701f);
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final boolean zzc(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            long j2 = z ? this.f11700e : this.f11699d;
            z2 = j2 <= 0 || j >= j2;
        }
        return z2;
    }

    public final void zzcx(int i) {
        synchronized (this) {
            this.f11699d = i * 1000;
        }
    }

    public final void zzcy(int i) {
        synchronized (this) {
            this.f11700e = i * 1000;
        }
    }

    public final void zzdc(int i) {
        synchronized (this) {
            this.f11697b = i * 1000;
        }
    }

    public final void zzdd(int i) {
        synchronized (this) {
            this.f11698c = i * 1000;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        if (r12 == false) goto L_0x0063;
     */
    @Override // com.google.android.gms.internal.ads.zzha
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzdt(long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            long r0 = r0.f11698c     // Catch: all -> 0x0077
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = 0
            r11 = r0
            goto L_0x0028
        L_0x0016:
            r0 = r6
            r1 = r5
            long r1 = r1.f11697b     // Catch: all -> 0x0077
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = 2
            r11 = r0
            goto L_0x0028
        L_0x0025:
            r0 = 1
            r11 = r0
        L_0x0028:
            r0 = r5
            com.google.android.gms.internal.ads.zznp r0 = r0.f11696a     // Catch: all -> 0x0077
            int r0 = r0.zzii()     // Catch: all -> 0x0077
            r1 = r5
            int r1 = r1.f11701f     // Catch: all -> 0x0077
            if (r0 < r1) goto L_0x003c
            r0 = 1
            r12 = r0
            goto L_0x003f
        L_0x003c:
            r0 = 0
            r12 = r0
        L_0x003f:
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x0063
            r0 = r10
            r13 = r0
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L_0x0066
            r0 = r10
            r13 = r0
            r0 = r5
            boolean r0 = r0.f11702g     // Catch: all -> 0x0077
            if (r0 == 0) goto L_0x0066
            r0 = r10
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0066
        L_0x0063:
            r0 = 1
            r13 = r0
        L_0x0066:
            r0 = r5
            r1 = r13
            r0.f11702g = r1     // Catch: all -> 0x0077
            r0 = r5
            boolean r0 = r0.f11702g     // Catch: all -> 0x0077
            r13 = r0
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            return r0
        L_0x0077:
            r14 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbt.zzdt(long):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final void zzer() {
        m4134a(false);
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final void zzes() {
        m4134a(true);
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final zznj zzet() {
        return this.f11696a;
    }
}
