package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcin.class */
public final class zzcin<DelegateT, AdapterT> implements zzcio<AdapterT> {

    /* renamed from: a */
    private final zzcio<DelegateT> f13187a;

    /* renamed from: b */
    private final zzded<DelegateT, AdapterT> f13188b;

    public zzcin(zzcio<DelegateT> zzcioVar, zzded<DelegateT, AdapterT> zzdedVar) {
        this.f13187a = zzcioVar;
        this.f13188b = zzdedVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return this.f13187a.zza(zzcztVar, zzczlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<AdapterT> zzb(zzczt zzcztVar, zzczl zzczlVar) {
        return zzdgs.zzb(this.f13187a.zzb(zzcztVar, zzczlVar), this.f13188b, zzazd.zzdwe);
    }
}
