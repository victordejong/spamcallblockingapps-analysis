package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbly.class */
public final class zzbly implements zzbqb, zzps {

    /* renamed from: a */
    private final zzczl f12123a;

    /* renamed from: b */
    private final zzbpd f12124b;

    /* renamed from: c */
    private final zzbqf f12125c;

    /* renamed from: d */
    private final AtomicBoolean f12126d = new AtomicBoolean();

    /* renamed from: e */
    private final AtomicBoolean f12127e = new AtomicBoolean();

    public zzbly(zzczl zzczlVar, zzbpd zzbpdVar, zzbqf zzbqfVar) {
        this.f12123a = zzczlVar;
        this.f12124b = zzbpdVar;
        this.f12125c = zzbqfVar;
    }

    /* renamed from: a */
    private final void m4034a() {
        if (this.f12126d.compareAndSet(false, true)) {
            this.f12124b.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        synchronized (this) {
            if (this.f12123a.zzglj != 1) {
                m4034a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        if (this.f12123a.zzglj == 1 && zzptVar.zzbnq) {
            m4034a();
        }
        if (zzptVar.zzbnq && this.f12127e.compareAndSet(false, true)) {
            this.f12125c.zzahi();
        }
    }
}
