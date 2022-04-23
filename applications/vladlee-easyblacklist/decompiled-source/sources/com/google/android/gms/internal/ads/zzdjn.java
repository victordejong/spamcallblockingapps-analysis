package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjn.class */
public final class zzdjn extends zzdii<zzdlz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjn() {
        super(zzdlz.class, new adu(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdlz> zzasg() {
        return new adt(this, zzdma.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdlz zzdlzVar) {
        zzdlz zzdlzVar2 = zzdlzVar;
        zzdpo.zzx(zzdlzVar2.getVersion(), 0);
        if (zzdlzVar2.zzass().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdlz zzr(zzdqk zzdqkVar) {
        return zzdlz.zzah(zzdqkVar);
    }
}
