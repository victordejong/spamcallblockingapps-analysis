package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3869o7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdp.class */
public final class zzbdp {

    /* renamed from: b */
    public long f24814b;

    /* renamed from: a */
    public final long f24813a = TimeUnit.MILLISECONDS.toNanos(((Long) zzwm.m11166e().m16921a(zzabb.f23899v)).longValue());

    /* renamed from: c */
    public boolean f24815c = true;

    /* renamed from: a */
    public final void m15767a() {
        this.f24815c = true;
    }

    /* renamed from: a */
    public final void m15766a(SurfaceTexture surfaceTexture, zzbdc zzbdcVar) {
        if (zzbdcVar != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (this.f24815c || Math.abs(timestamp - this.f24814b) >= this.f24813a) {
                this.f24815c = false;
                this.f24814b = timestamp;
                zzayu.f24665h.post(new RunnableC3869o7(this, zzbdcVar));
            }
        }
    }
}
