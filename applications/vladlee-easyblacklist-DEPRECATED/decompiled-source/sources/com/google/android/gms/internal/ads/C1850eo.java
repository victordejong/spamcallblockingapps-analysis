package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.eo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eo.class */
public final class C1850eo {

    /* renamed from: a */
    private final Object f8432a;

    /* renamed from: b */
    private volatile int f8433b;

    /* renamed from: c */
    private volatile long f8434c;

    private C1850eo() {
        this.f8432a = new Object();
        this.f8433b = C1849en.f8428a;
        this.f8434c = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1850eo(byte b) {
        this();
    }

    /* renamed from: a */
    public final void m4728a() {
        long currentTimeMillis = zzq.zzkx().currentTimeMillis();
        synchronized (this.f8432a) {
            if (this.f8433b == C1849en.f8430c) {
                if (this.f8434c + ((Long) zzve.zzoy().zzd(zzzn.zzcpq)).longValue() <= currentTimeMillis) {
                    this.f8433b = C1849en.f8428a;
                }
            }
        }
        long currentTimeMillis2 = zzq.zzkx().currentTimeMillis();
        synchronized (this.f8432a) {
            if (this.f8433b == 2) {
                this.f8433b = 3;
                if (this.f8433b == C1849en.f8430c) {
                    this.f8434c = currentTimeMillis2;
                }
            }
        }
    }
}
