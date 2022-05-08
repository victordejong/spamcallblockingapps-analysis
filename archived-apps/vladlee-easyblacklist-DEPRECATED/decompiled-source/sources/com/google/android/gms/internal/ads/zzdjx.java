package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjx.class */
public final class zzdjx extends zzdii<zzdnz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjx() {
        super(zzdnz.class, new aeb(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdnz> zzasg() {
        return new adz(this, zzdoc.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdnz zzdnzVar) {
        zzdnz zzdnzVar2 = zzdnzVar;
        zzdpo.zzx(zzdnzVar2.getVersion(), 0);
        if (zzdnzVar2.zzass().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdnz zzr(zzdqk zzdqkVar) {
        return zzdnz.zzbb(zzdqkVar);
    }
}
