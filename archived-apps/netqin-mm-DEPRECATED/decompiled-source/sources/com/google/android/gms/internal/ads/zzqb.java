package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.df0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqb.class */
public final class zzqb {

    /* renamed from: a */
    public final df0 f28845a;

    /* renamed from: b */
    public final boolean f28846b;

    /* renamed from: c */
    public final long f28847c;

    /* renamed from: d */
    public final long f28848d;

    /* renamed from: e */
    public long f28849e;

    /* renamed from: f */
    public long f28850f;

    /* renamed from: g */
    public long f28851g;

    /* renamed from: h */
    public boolean f28852h;

    /* renamed from: i */
    public long f28853i;

    /* renamed from: j */
    public long f28854j;

    /* renamed from: k */
    public long f28855k;

    public zzqb() {
        this(-1.0d);
    }

    public zzqb(double d) {
        boolean z = d != -1.0d;
        this.f28846b = z;
        if (z) {
            this.f28845a = df0.m27065c();
            long j = (long) (1.0E9d / d);
            this.f28847c = j;
            this.f28848d = (j * 80) / 100;
            return;
        }
        this.f28845a = null;
        this.f28847c = -1L;
        this.f28848d = -1L;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzqb(android.content.Context r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqb.<init>(android.content.Context):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.ads.zzqb] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 6 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m11571a(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqb.m11571a(long, long):long");
    }

    /* renamed from: a */
    public final void m11572a() {
        if (this.f28846b) {
            this.f28845a.m27066b();
        }
    }

    /* renamed from: b */
    public final void m11570b() {
        this.f28852h = false;
        if (this.f28846b) {
            this.f28845a.m27067a();
        }
    }

    /* renamed from: b */
    public final boolean m11569b(long j, long j2) {
        return Math.abs((j2 - this.f28853i) - (j - this.f28854j)) > 20000000;
    }
}
