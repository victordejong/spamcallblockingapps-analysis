package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzcty;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrk.class */
public final class zzcrk<S extends zzcty<?>> implements zzcub<S> {

    /* renamed from: a */
    private final AtomicReference<C2323wb<S>> f13785a = new AtomicReference<>();

    /* renamed from: b */
    private final Clock f13786b;

    /* renamed from: c */
    private final zzcub<S> f13787c;

    /* renamed from: d */
    private final long f13788d;

    public zzcrk(zzcub<S> zzcubVar, long j, Clock clock) {
        this.f13786b = clock;
        this.f13787c = zzcubVar;
        this.f13788d = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0.m4462a() != false) goto L_0x0018;
     */
    @Override // com.google.android.gms.internal.ads.zzcub
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzdhe<S> zzanc() {
        /*
            r7 = this;
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.wb<S extends com.google.android.gms.internal.ads.zzcty<?>>> r0 = r0.f13785a
            java.lang.Object r0 = r0.get()
            com.google.android.gms.internal.ads.wb r0 = (com.google.android.gms.internal.ads.C2323wb) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0018
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.m4462a()
            if (r0 == 0) goto L_0x0039
        L_0x0018:
            com.google.android.gms.internal.ads.wb r0 = new com.google.android.gms.internal.ads.wb
            r1 = r0
            r2 = r7
            com.google.android.gms.internal.ads.zzcub<S extends com.google.android.gms.internal.ads.zzcty<?>> r2 = r2.f13787c
            com.google.android.gms.internal.ads.zzdhe r2 = r2.zzanc()
            r3 = r7
            long r3 = r3.f13788d
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.f13786b
            r1.<init>(r2, r3, r4)
            r9 = r0
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.wb<S extends com.google.android.gms.internal.ads.zzcty<?>>> r0 = r0.f13785a
            r1 = r9
            r0.set(r1)
        L_0x0039:
            r0 = r9
            com.google.android.gms.internal.ads.zzdhe<S extends com.google.android.gms.internal.ads.zzcty<?>> r0 = r0.f10642a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcrk.zzanc():com.google.android.gms.internal.ads.zzdhe");
    }
}
