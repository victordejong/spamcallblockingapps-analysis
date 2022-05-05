package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjw.class */
public final class zzdjw extends zzdii<zzdns> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjw() {
        super(zzdns.class, new adx(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdns> zzasg() {
        return new ady(this, zzdnt.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdns zzdnsVar) {
        zzdpo.zzx(zzdnsVar.getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdns zzr(zzdqk zzdqkVar) {
        return zzdns.zzaz(zzdqkVar);
    }
}
