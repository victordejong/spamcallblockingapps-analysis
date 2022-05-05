package com.google.android.gms.internal.ads;

import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ane.class */
final class ane implements anf {

    /* renamed from: a */
    private final byte[] f7758a = new byte[8];

    /* renamed from: b */
    private final Stack<ang> f7759b = new Stack<>();

    /* renamed from: c */
    private final ann f7760c = new ann();

    /* renamed from: d */
    private anh f7761d;

    /* renamed from: e */
    private int f7762e;

    /* renamed from: f */
    private int f7763f;

    /* renamed from: g */
    private long f7764g;

    /* renamed from: a */
    private final long m4872a(zzjg zzjgVar, int i) {
        zzjgVar.readFully(this.f7758a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f7758a[i2] & 255);
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.anf
    /* renamed from: a */
    public final void mo4871a() {
        this.f7762e = 0;
        this.f7759b.clear();
        this.f7760c.m4848a();
    }

    @Override // com.google.android.gms.internal.ads.anf
    /* renamed from: a */
    public final void mo4870a(anh anhVar) {
        this.f7761d = anhVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [long] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.anf
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4869a(com.google.android.gms.internal.ads.zzjg r10) {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ane.mo4869a(com.google.android.gms.internal.ads.zzjg):boolean");
    }
}
