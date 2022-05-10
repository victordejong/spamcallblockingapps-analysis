package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsz.class */
public final class zzcsz<DelegateT, AdapterT> implements zzcta<AdapterT> {
    @VisibleForTesting

    /* renamed from: a */
    public final zzcta<DelegateT> f26494a;

    /* renamed from: b */
    public final zzdvu<DelegateT, AdapterT> f26495b;

    public zzcsz(zzcta<DelegateT> zzctaVar, zzdvu<DelegateT, AdapterT> zzdvuVar) {
        this.f26494a = zzctaVar;
        this.f26495b = zzdvuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        return this.f26494a.mo13770a(zzdogVar, zzdnvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<AdapterT> mo13769b(zzdog zzdogVar, zzdnv zzdnvVar) {
        return zzdyq.m12993a(this.f26494a.mo13769b(zzdogVar, zzdnvVar), this.f26495b, zzbbz.f24764a);
    }
}
