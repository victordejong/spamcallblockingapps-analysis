package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adp.class */
final class adp extends zzdih<zzdlr, zzdlo> {

    /* renamed from: a */
    private final /* synthetic */ zzdjh f7260a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public adp(zzdjh zzdjhVar, Class cls) {
        super(cls);
        this.f7260a = zzdjhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ void zzc(zzdlr zzdlrVar) {
        zzdlr zzdlrVar2 = zzdlrVar;
        zzdpo.zzez(zzdlrVar2.getKeySize());
        if (zzdlrVar2.zzatq().zzatn() != 12 && zzdlrVar2.zzatq().zzatn() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdlo zzd(zzdlr zzdlrVar) {
        zzdlr zzdlrVar2 = zzdlrVar;
        return (zzdlo) ((zzdrt) zzdlo.zzatr().zzac(zzdqk.zzu(zzdpn.zzey(zzdlrVar2.getKeySize()))).zzb(zzdlrVar2.zzatq()).zzef(0).zzbaf());
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdlr zzq(zzdqk zzdqkVar) {
        return zzdlr.zzad(zzdqkVar);
    }
}
