package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclu.class */
public final class zzclu implements zzeoy<zzcln> {

    /* renamed from: a */
    public final zzeph<zzts> f26220a;

    /* renamed from: b */
    public final zzeph<zzdmd> f26221b;

    public zzclu(zzeph<zzts> zzephVar, zzeph<zzdmd> zzephVar2) {
        this.f26220a = zzephVar;
        this.f26221b = zzephVar2;
    }

    /* renamed from: a */
    public static zzclu m14075a(zzeph<zzts> zzephVar, zzeph<zzdmd> zzephVar2) {
        return new zzclu(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcln(this.f26220a.get(), this.f26221b.get());
    }
}
