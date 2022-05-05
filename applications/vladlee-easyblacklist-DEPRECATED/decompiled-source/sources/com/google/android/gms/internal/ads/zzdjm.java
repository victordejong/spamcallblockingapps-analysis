package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjm.class */
public final class zzdjm extends zzdii<zzdlv> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjm() {
        super(zzdlv.class, new adr(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdlv> zzasg() {
        return new C1724ads(this, zzdlw.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdlv zzdlvVar) {
        zzdlv zzdlvVar2 = zzdlvVar;
        zzdpo.zzx(zzdlvVar2.getVersion(), 0);
        zzdpo.zzez(zzdlvVar2.zzass().size());
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdlv zzr(zzdqk zzdqkVar) {
        return zzdlv.zzae(zzdqkVar);
    }
}
