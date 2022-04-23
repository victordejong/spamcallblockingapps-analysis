package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjh.class */
public final class zzdjh extends zzdii<zzdlo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjh() {
        super(zzdlo.class, new adq(zzdhx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdlo> zzasg() {
        return new adp(this, zzdlr.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdlo zzdloVar) {
        zzdlo zzdloVar2 = zzdloVar;
        zzdpo.zzx(zzdloVar2.getVersion(), 0);
        zzdpo.zzez(zzdloVar2.zzass().size());
        if (zzdloVar2.zzatq().zzatn() != 12 && zzdloVar2.zzatq().zzatn() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdlo zzr(zzdqk zzdqkVar) {
        return zzdlo.zzab(zzdqkVar);
    }
}
