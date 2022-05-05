package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbaq.class */
public final class zzbaq {

    /* renamed from: b */
    private long f11601b;

    /* renamed from: a */
    private final long f11600a = TimeUnit.MILLISECONDS.toNanos(((Long) zzve.zzoy().zzd(zzzn.zzchd)).longValue());

    /* renamed from: c */
    private boolean f11602c = true;

    public final void zza(SurfaceTexture surfaceTexture, zzbah zzbahVar) {
        if (zzbahVar != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (this.f11602c || Math.abs(timestamp - this.f11601b) >= this.f11600a) {
                this.f11602c = false;
                this.f11601b = timestamp;
                zzawb.zzdsr.post(new RunnableC1914gy(zzbahVar));
            }
        }
    }

    public final void zzxu() {
        this.f11602c = true;
    }
}
