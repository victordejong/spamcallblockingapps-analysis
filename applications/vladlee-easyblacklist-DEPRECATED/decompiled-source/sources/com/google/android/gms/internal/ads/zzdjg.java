package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjg.class */
public final class zzdjg extends zzdii<zzdlj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjg() {
        super(zzdlj.class, new adn(zzdpi.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m3510b(zzdln zzdlnVar) {
        if (zzdlnVar.zzatn() < 12 || zzdlnVar.zzatn() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdlj> zzasg() {
        return new ado(this, zzdlk.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdlj zzdljVar) {
        zzdlj zzdljVar2 = zzdljVar;
        zzdpo.zzx(zzdljVar2.getVersion(), 0);
        zzdpo.zzez(zzdljVar2.zzass().size());
        m3510b(zzdljVar2.zzath());
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdlj zzr(zzdqk zzdqkVar) {
        return zzdlj.zzy(zzdqkVar);
    }
}
