package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpb.class */
public final class zzpb {

    /* renamed from: a */
    private final apd f15302a;

    /* renamed from: b */
    private final boolean f15303b;

    /* renamed from: c */
    private final long f15304c;

    /* renamed from: d */
    private final long f15305d;

    /* renamed from: e */
    private long f15306e;

    /* renamed from: f */
    private long f15307f;

    /* renamed from: g */
    private long f15308g;

    /* renamed from: h */
    private boolean f15309h;

    /* renamed from: i */
    private long f15310i;

    /* renamed from: j */
    private long f15311j;

    /* renamed from: k */
    private long f15312k;

    public zzpb() {
        this(-1.0d);
    }

    private zzpb(double d) {
        long j;
        this.f15303b = d != -1.0d;
        if (this.f15303b) {
            this.f15302a = apd.m4772a();
            this.f15304c = (long) (1.0E9d / d);
            j = (this.f15304c * 80) / 100;
        } else {
            this.f15302a = null;
            j = -1;
            this.f15304c = -1L;
        }
        this.f15305d = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzpb(android.content.Context r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "window"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            r5 = r0
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            if (r0 == 0) goto L_0x0021
            r0 = r5
            android.view.Display r0 = r0.getDefaultDisplay()
            float r0 = r0.getRefreshRate()
            double r0 = (double) r0
            r6 = r0
            goto L_0x0025
        L_0x0021:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r6 = r0
        L_0x0025:
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpb.<init>(android.content.Context):void");
    }

    /* renamed from: a */
    private final boolean m3129a(long j, long j2) {
        return Math.abs((j2 - this.f15310i) - (j - this.f15311j)) > 20000000;
    }

    public final void disable() {
        if (this.f15303b) {
            this.f15302a.m4770c();
        }
    }

    public final void enable() {
        this.f15309h = false;
        if (this.f15303b) {
            this.f15302a.m4771b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0072, code lost:
        if (m3129a(r0, r10) != false) goto L_0x0075;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0088  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3, types: [long] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.ads.zzpb] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzf(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpb.zzf(long, long):long");
    }
}
