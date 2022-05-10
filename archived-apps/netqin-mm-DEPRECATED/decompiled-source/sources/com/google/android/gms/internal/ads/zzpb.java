package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpb.class */
public final class zzpb {

    /* renamed from: a */
    public boolean f28758a;

    /* renamed from: a */
    public final void m11689a() throws InterruptedException {
        synchronized (this) {
            while (!this.f28758a) {
                wait();
            }
        }
    }

    /* renamed from: b */
    public final boolean m11688b() {
        synchronized (this) {
            if (this.f28758a) {
                return false;
            }
            this.f28758a = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: c */
    public final boolean m11687c() {
        boolean z;
        synchronized (this) {
            z = this.f28758a;
            this.f28758a = false;
        }
        return z;
    }
}
