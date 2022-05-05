package com.google.android.gms.internal.ads;

import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aee.class */
final class aee extends zzdih<zzdmg, zzdmk> {

    /* renamed from: a */
    private final /* synthetic */ zzdkc f7270a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aee(zzdkc zzdkcVar, Class cls) {
        super(cls);
        this.f7270a = zzdkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ void zzc(zzdmg zzdmgVar) {
        aeh.m5446a(zzdmgVar.zzauf());
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdmk zzd(zzdmg zzdmgVar) {
        zzdmg zzdmgVar2 = zzdmgVar;
        KeyPair zza = zzdov.zza(zzdov.zza(aeh.m5445a(zzdmgVar2.zzauf().zzauh().zzauu())));
        ECPublicKey eCPublicKey = (ECPublicKey) zza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) zza.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return (zzdmk) ((zzdrt) zzdmk.zzaun().zzej(0).zzb((zzdmn) ((zzdrt) zzdmn.zzaur().zzek(0).zzc(zzdmgVar2.zzauf()).zzaq(zzdqk.zzu(w.getAffineX().toByteArray())).zzar(zzdqk.zzu(w.getAffineY().toByteArray())).zzbaf())).zzam(zzdqk.zzu(eCPrivateKey.getS().toByteArray())).zzbaf());
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdmg zzq(zzdqk zzdqkVar) {
        return zzdmg.zzak(zzdqkVar);
    }
}
