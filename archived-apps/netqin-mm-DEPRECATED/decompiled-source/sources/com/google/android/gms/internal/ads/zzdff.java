package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdff.class */
public final class zzdff implements zzeoy<zzdey> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27227a;

    /* renamed from: b */
    public final zzeph<zzdok> f27228b;

    /* renamed from: c */
    public final zzeph<PackageInfo> f27229c;

    /* renamed from: d */
    public final zzeph<zzayr> f27230d;

    public zzdff(zzeph<zzdzb> zzephVar, zzeph<zzdok> zzephVar2, zzeph<PackageInfo> zzephVar3, zzeph<zzayr> zzephVar4) {
        this.f27227a = zzephVar;
        this.f27228b = zzephVar2;
        this.f27229c = zzephVar3;
        this.f27230d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdey(this.f27227a.get(), this.f27228b.get(), this.f27229c.get(), this.f27230d.get());
    }
}
