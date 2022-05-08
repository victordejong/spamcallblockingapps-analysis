package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alv.class */
public final class alv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f7585a;

    /* renamed from: b */
    private final /* synthetic */ boolean f7586b;

    /* renamed from: c */
    private final /* synthetic */ zzei f7587c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alv(zzei zzeiVar, int i, boolean z) {
        this.f7587c = zzeiVar;
        this.f7585a = i;
        this.f7586b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbs.zza b = this.f7587c.m3284b(this.f7585a, this.f7586b);
        this.f7587c.f14736k = b;
        if (zzei.m3292a(this.f7585a, b)) {
            this.f7587c.m3291a(this.f7585a + 1, this.f7586b);
        }
    }
}
