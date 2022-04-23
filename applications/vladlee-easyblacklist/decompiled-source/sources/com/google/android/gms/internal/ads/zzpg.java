package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpg.class */
public final class zzpg {

    /* renamed from: a */
    private final zzddu f15313a;

    /* renamed from: b */
    private final zzpd f15314b;

    public zzpg(zzddu zzdduVar, zzpd zzpdVar) {
        this.f15313a = zzpdVar != null ? (zzddu) zzoc.checkNotNull(zzdduVar) : null;
        this.f15314b = zzpdVar;
    }

    public final void zzb(int i, int i2, int i3, float f) {
        if (this.f15314b != null) {
            this.f15313a.post(new aph(this, i, i2, i3, f));
        }
    }

    public final void zzb(Surface surface) {
        if (this.f15314b != null) {
            this.f15313a.post(new apk(this, surface));
        }
    }

    public final void zzb(String str, long j, long j2) {
        if (this.f15314b != null) {
            this.f15313a.post(new apg(this, str, j, j2));
        }
    }

    public final void zzc(zzgw zzgwVar) {
        if (this.f15314b != null) {
            this.f15313a.post(new apf(this, zzgwVar));
        }
    }

    public final void zzc(zzit zzitVar) {
        if (this.f15314b != null) {
            this.f15313a.post(new ape(this, zzitVar));
        }
    }

    public final void zzd(zzit zzitVar) {
        if (this.f15314b != null) {
            this.f15313a.post(new apj(this, zzitVar));
        }
    }

    public final void zzf(int i, long j) {
        if (this.f15314b != null) {
            this.f15313a.post(new RunnableC1742api(this, i, j));
        }
    }
}
