package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxw.class */
public final class zzaxw {

    /* renamed from: a */
    private HandlerThread f11512a = null;

    /* renamed from: b */
    private Handler f11513b = null;

    /* renamed from: c */
    private int f11514c = 0;

    /* renamed from: d */
    private final Object f11515d = new Object();

    public final Handler getHandler() {
        return this.f11513b;
    }

    public final Looper zzxb() {
        Looper looper;
        synchronized (this.f11515d) {
            if (this.f11514c != 0) {
                Preconditions.checkNotNull(this.f11512a, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.f11512a == null) {
                zzavs.zzed("Starting the looper thread.");
                this.f11512a = new HandlerThread("LooperProvider");
                this.f11512a.start();
                this.f11513b = new zzddu(this.f11512a.getLooper());
                zzavs.zzed("Looper thread started.");
            } else {
                zzavs.zzed("Resuming the looper thread");
                this.f11515d.notifyAll();
            }
            this.f11514c++;
            looper = this.f11512a.getLooper();
        }
        return looper;
    }
}
