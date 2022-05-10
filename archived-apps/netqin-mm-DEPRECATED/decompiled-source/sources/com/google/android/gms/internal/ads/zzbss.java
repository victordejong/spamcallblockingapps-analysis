package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbss.class */
public final class zzbss implements zzeoy<zzcab<zzp>> {

    /* renamed from: a */
    public final zzeph<zzbrh> f25467a;

    public zzbss(zzbsj zzbsjVar, zzeph<zzbrh> zzephVar) {
        this.f25467a = zzephVar;
    }

    /* renamed from: a */
    public static zzbss m15091a(zzbsj zzbsjVar, zzeph<zzbrh> zzephVar) {
        return new zzbss(zzbsjVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25467a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
