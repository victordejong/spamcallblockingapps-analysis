package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoe.class */
public final class zzoe {

    /* renamed from: a */
    private boolean f15232a;

    public final void block() {
        synchronized (this) {
            while (!this.f15232a) {
                wait();
            }
        }
    }

    public final boolean open() {
        synchronized (this) {
            if (this.f15232a) {
                return false;
            }
            this.f15232a = true;
            notifyAll();
            return true;
        }
    }

    public final boolean zzim() {
        boolean z;
        synchronized (this) {
            z = this.f15232a;
            this.f15232a = false;
        }
        return z;
    }
}
