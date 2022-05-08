package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkp.class */
public final class zzdkp extends zzdii<zzdky> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdkp() {
        super(zzdky.class, new ael(zzdio.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m3507b(int i) {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 16 bytes");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m3506b(zzdlc zzdlcVar) {
        if (zzdlcVar.zzasx() < 10) {
            throw new GeneralSecurityException("tag size too short");
        } else if (zzdlcVar.zzasx() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdky> zzasg() {
        return new aem(zzdlb.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdky zzdkyVar) {
        zzdky zzdkyVar2 = zzdkyVar;
        zzdpo.zzx(zzdkyVar2.getVersion(), 0);
        m3507b(zzdkyVar2.zzass().size());
        m3506b(zzdkyVar2.zzast());
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdky zzr(zzdqk zzdqkVar) {
        return zzdky.zzt(zzdqkVar);
    }
}
