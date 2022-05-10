package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbaw.class */
public final class zzbaw {

    /* renamed from: a */
    public long f24718a;

    /* renamed from: b */
    public long f24719b = Long.MIN_VALUE;

    /* renamed from: c */
    public final Object f24720c = new Object();

    public zzbaw(long j) {
        this.f24718a = j;
    }

    /* renamed from: a */
    public final void m15930a(long j) {
        synchronized (this.f24720c) {
            this.f24718a = j;
        }
    }

    /* renamed from: a */
    public final boolean m15931a() {
        synchronized (this.f24720c) {
            long a = zzp.m17962j().mo17092a();
            if (this.f24719b + this.f24718a > a) {
                return false;
            }
            this.f24719b = a;
            return true;
        }
    }
}
