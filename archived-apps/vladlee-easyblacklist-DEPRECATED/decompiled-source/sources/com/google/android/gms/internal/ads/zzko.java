package com.google.android.gms.internal.ads;

import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzko.class */
public final class zzko implements zzjd, zzjm {

    /* renamed from: a */
    private static final zzji f15024a = new any();

    /* renamed from: b */
    private static final int f15025b = zzoq.zzbn("qt  ");

    /* renamed from: g */
    private int f15030g;

    /* renamed from: h */
    private int f15031h;

    /* renamed from: i */
    private long f15032i;

    /* renamed from: j */
    private int f15033j;

    /* renamed from: k */
    private zzoj f15034k;

    /* renamed from: l */
    private int f15035l;

    /* renamed from: m */
    private int f15036m;

    /* renamed from: n */
    private zzjf f15037n;

    /* renamed from: o */
    private aoa[] f15038o;

    /* renamed from: p */
    private long f15039p;

    /* renamed from: q */
    private boolean f15040q;

    /* renamed from: e */
    private final zzoj f15028e = new zzoj(16);

    /* renamed from: f */
    private final Stack<anp> f15029f = new Stack<>();

    /* renamed from: c */
    private final zzoj f15026c = new zzoj(zzoi.zzbga);

    /* renamed from: d */
    private final zzoj f15027d = new zzoj(4);

    /* renamed from: a */
    private final void m3202a() {
        this.f15030g = 0;
        this.f15033j = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v93 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m3201a(long r9) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.m3201a(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzjm
    public final long getDurationUs() {
        return this.f15039p;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void release() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:158:0x033f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0524 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.ads.zzjd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzjg r9, com.google.android.gms.internal.ads.zzjj r10) {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zza(com.google.android.gms.internal.ads.zzjg, com.google.android.gms.internal.ads.zzjj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zza(zzjf zzjfVar) {
        this.f15037n = zzjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final boolean zza(zzjg zzjgVar) {
        return anz.m4823a(zzjgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zzc(long j, long j2) {
        this.f15029f.clear();
        this.f15033j = 0;
        this.f15035l = 0;
        this.f15036m = 0;
        if (j == 0) {
            m3202a();
            return;
        }
        aoa[] aoaVarArr = this.f15038o;
        if (aoaVarArr != null) {
            for (aoa aoaVar : aoaVarArr) {
                aob aobVar = aoaVar.f7979b;
                int a = aobVar.m4822a(j2);
                int i = a;
                if (a == -1) {
                    i = aobVar.m4821b(j2);
                }
                aoaVar.f7981d = i;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzjm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzdz(long r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.aoa[] r0 = r0.f15038o
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x0011:
            r0 = r12
            r1 = r9
            if (r0 >= r1) goto L_0x005f
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            com.google.android.gms.internal.ads.aob r0 = r0.f7979b
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = r0.m4822a(r1)
            r14 = r0
            r0 = r14
            r15 = r0
            r0 = r14
            r1 = -1
            if (r0 != r1) goto L_0x003b
            r0 = r13
            r1 = r6
            int r0 = r0.m4821b(r1)
            r15 = r0
        L_0x003b:
            r0 = r13
            long[] r0 = r0.f7983b
            r1 = r15
            r0 = r0[r1]
            r16 = r0
            r0 = r10
            r18 = r0
            r0 = r16
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0055
            r0 = r16
            r18 = r0
        L_0x0055:
            int r12 = r12 + 1
            r0 = r18
            r10 = r0
            goto L_0x0011
        L_0x005f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzko.zzdz(long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzjm
    public final boolean zzgh() {
        return true;
    }
}
