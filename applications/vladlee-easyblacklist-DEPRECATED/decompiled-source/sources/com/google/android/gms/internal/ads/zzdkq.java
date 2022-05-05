package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkq.class */
public final class zzdkq extends zzdii<zzdmv> {
    public zzdkq() {
        super(zzdmv.class, new aeo(zzdio.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m3504b(zzdmz zzdmzVar) {
        if (zzdmzVar.zzasx() >= 10) {
            int i = aep.f7280a[zzdmzVar.zzavf().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new GeneralSecurityException("unknown hash type");
                    } else if (zzdmzVar.zzasx() > 64) {
                        throw new GeneralSecurityException("tag size too big");
                    }
                } else if (zzdmzVar.zzasx() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (zzdmzVar.zzasx() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            throw new GeneralSecurityException("tag size too small");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdna.zzb zzasd() {
        return zzdna.zzb.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final zzdih<?, zzdmv> zzasg() {
        return new aen(zzdmw.class);
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ void zze(zzdmv zzdmvVar) {
        zzdmv zzdmvVar2 = zzdmvVar;
        zzdpo.zzx(zzdmvVar2.getVersion(), 0);
        if (zzdmvVar2.zzass().size() >= 16) {
            m3504b(zzdmvVar2.zzauz());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzdii
    public final /* synthetic */ zzdmv zzr(zzdqk zzdqkVar) {
        return zzdmv.zzas(zzdqkVar);
    }
}
