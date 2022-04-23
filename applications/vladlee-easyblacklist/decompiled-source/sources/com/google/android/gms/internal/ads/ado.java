package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ado.class */
final class ado extends zzdih<zzdlk, zzdlj> {

    /* renamed from: a */
    private final /* synthetic */ zzdjg f7259a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ado(zzdjg zzdjgVar, Class cls) {
        super(cls);
        this.f7259a = zzdjgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ void zzc(zzdlk zzdlkVar) {
        zzdlk zzdlkVar2 = zzdlkVar;
        zzdpo.zzez(zzdlkVar2.getKeySize());
        zzdjg.m3510b(zzdlkVar2.zzath());
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdlj zzd(zzdlk zzdlkVar) {
        zzdlk zzdlkVar2 = zzdlkVar;
        return (zzdlj) ((zzdrt) zzdlj.zzati().zzc(zzdlkVar2.zzath()).zzaa(zzdqk.zzu(zzdpn.zzey(zzdlkVar2.getKeySize()))).zzee(0).zzbaf());
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdlk zzq(zzdqk zzdqkVar) {
        return zzdlk.zzz(zzdqkVar);
    }
}
