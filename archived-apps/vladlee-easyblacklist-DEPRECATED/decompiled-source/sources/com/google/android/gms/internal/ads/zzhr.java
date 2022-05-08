package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhr.class */
public final class zzhr {

    /* renamed from: a */
    private final zzddu f14849a;

    /* renamed from: b */
    private final zzho f14850b;

    public zzhr(zzddu zzdduVar, zzho zzhoVar) {
        this.f14849a = zzhoVar != null ? (zzddu) zzoc.checkNotNull(zzdduVar) : null;
        this.f14850b = zzhoVar;
    }

    public final void zzb(int i, long j, long j2) {
        if (this.f14850b != null) {
            this.f14849a.post(new amp(this, i, j, j2));
        }
    }

    public final void zzb(String str, long j, long j2) {
        if (this.f14850b != null) {
            this.f14849a.post(new amn(this, str, j, j2));
        }
    }

    public final void zzc(zzgw zzgwVar) {
        if (this.f14850b != null) {
            this.f14849a.post(new amm(this, zzgwVar));
        }
    }

    public final void zzc(zzit zzitVar) {
        if (this.f14850b != null) {
            this.f14849a.post(new aml(this, zzitVar));
        }
    }

    public final void zzd(zzit zzitVar) {
        if (this.f14850b != null) {
            this.f14849a.post(new amo(this, zzitVar));
        }
    }

    public final void zzs(int i) {
        if (this.f14850b != null) {
            this.f14849a.post(new amq(this, i));
        }
    }
}
