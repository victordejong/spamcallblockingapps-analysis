package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjc.class */
public final class zzdjc extends zzdii<zzdlf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjc() {
        super(zzdlf.class, new adm(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdlf> zzasg() {
        return new adl(this, zzdlg.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdlf zzdlfVar) {
        zzdpo.zzx(zzdlfVar.getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdlf zzr(zzdqk zzdqkVar) {
        return zzdlf.zzw(zzdqkVar);
    }
}
