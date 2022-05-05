package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aen.class */
final class aen extends zzdih<zzdmw, zzdmv> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public aen(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ void zzc(zzdmw zzdmwVar) {
        zzdmw zzdmwVar2 = zzdmwVar;
        if (zzdmwVar2.getKeySize() >= 16) {
            zzdkq.m3504b(zzdmwVar2.zzauz());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdmv zzd(zzdmw zzdmwVar) {
        zzdmw zzdmwVar2 = zzdmwVar;
        return (zzdmv) ((zzdrt) zzdmv.zzava().zzen(0).zzd(zzdmwVar2.zzauz()).zzau(zzdqk.zzu(zzdpn.zzey(zzdmwVar2.getKeySize()))).zzbaf());
    }

    @Override // com.google.android.gms.internal.ads.zzdih
    public final /* synthetic */ zzdmw zzq(zzdqk zzdqkVar) {
        return zzdmw.zzat(zzdqkVar);
    }
}
