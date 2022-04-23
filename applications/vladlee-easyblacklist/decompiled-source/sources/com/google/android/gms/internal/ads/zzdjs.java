package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjs.class */
public final class zzdjs extends zzdii<zzdno> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjs() {
        super(zzdno.class, new adv(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdno> zzasg() {
        return new adw(this, zzdnp.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdno zzdnoVar) {
        zzdpo.zzx(zzdnoVar.getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdno zzr(zzdqk zzdqkVar) {
        return zzdno.zzax(zzdqkVar);
    }
}
