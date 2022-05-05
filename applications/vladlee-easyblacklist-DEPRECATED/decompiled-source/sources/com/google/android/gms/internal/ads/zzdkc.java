package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkc.class */
public final class zzdkc extends zzdiu<zzdmk, zzdmn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdkc() {
        super(zzdmk.class, zzdmn.class, new aec(zzdib.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<zzdmg, zzdmk> zzasg() {
        return new aee(this, zzdmg.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdte zzdteVar) {
        zzdmk zzdmkVar = (zzdmk) zzdteVar;
        if (!zzdmkVar.zzass().isEmpty()) {
            zzdpo.zzx(zzdmkVar.getVersion(), 0);
            aeh.m5446a(zzdmkVar.zzaum().zzauf());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdte zzr(zzdqk zzdqkVar) {
        return zzdmk.zzal(zzdqkVar);
    }
}
