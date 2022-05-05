package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaya.class */
public final class zzaya {

    /* renamed from: a */
    private long f11519a;

    /* renamed from: b */
    private long f11520b = Long.MIN_VALUE;

    /* renamed from: c */
    private final Object f11521c = new Object();

    public zzaya(long j) {
        this.f11519a = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.f11521c) {
            long elapsedRealtime = zzq.zzkx().elapsedRealtime();
            if (this.f11520b + this.f11519a > elapsedRealtime) {
                return false;
            }
            this.f11520b = elapsedRealtime;
            return true;
        }
    }

    public final void zzfb(long j) {
        synchronized (this.f11521c) {
            this.f11519a = j;
        }
    }
}
