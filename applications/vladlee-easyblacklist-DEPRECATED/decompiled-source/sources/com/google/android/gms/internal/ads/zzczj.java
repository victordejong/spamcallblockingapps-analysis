package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczj.class */
public final class zzczj {

    /* renamed from: a */
    private final Clock f14085a;

    /* renamed from: b */
    private final Object f14086b = new Object();

    /* renamed from: c */
    private volatile int f14087c = C2421zs.f10772a;

    /* renamed from: d */
    private volatile long f14088d = 0;

    public zzczj(Clock clock) {
        this.f14085a = clock;
    }

    /* renamed from: a */
    private final void m3648a() {
        long currentTimeMillis = this.f14085a.currentTimeMillis();
        synchronized (this.f14086b) {
            if (this.f14087c == C2421zs.f10774c) {
                if (this.f14088d + ((Long) zzve.zzoy().zzd(zzzn.zzcpq)).longValue() <= currentTimeMillis) {
                    this.f14087c = C2421zs.f10772a;
                }
            }
        }
    }

    /* renamed from: a */
    private final void m3647a(int i, int i2) {
        m3648a();
        long currentTimeMillis = this.f14085a.currentTimeMillis();
        synchronized (this.f14086b) {
            if (this.f14087c == i) {
                this.f14087c = i2;
                if (this.f14087c == C2421zs.f10774c) {
                    this.f14088d = currentTimeMillis;
                }
            }
        }
    }

    public final boolean zzaom() {
        boolean z;
        synchronized (this.f14086b) {
            m3648a();
            z = this.f14087c == C2421zs.f10773b;
        }
        return z;
    }

    public final boolean zzaon() {
        boolean z;
        synchronized (this.f14086b) {
            m3648a();
            z = this.f14087c == C2421zs.f10774c;
        }
        return z;
    }

    public final void zzbl(boolean z) {
        int i;
        int i2;
        if (z) {
            i = C2421zs.f10772a;
            i2 = C2421zs.f10773b;
        } else {
            i = C2421zs.f10773b;
            i2 = C2421zs.f10772a;
        }
        m3647a(i, i2);
    }

    public final void zzvb() {
        m3647a(C2421zs.f10773b, C2421zs.f10774c);
    }
}
