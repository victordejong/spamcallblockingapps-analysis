package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aeo.class */
final class aeo extends zzdik<zzdio, zzdmv> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public aeo(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzdik
    public final /* synthetic */ zzdio zzak(zzdmv zzdmvVar) {
        zzdmv zzdmvVar2 = zzdmvVar;
        zzdmt zzavf = zzdmvVar2.zzauz().zzavf();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzdmvVar2.zzass().toByteArray(), "HMAC");
        int zzasx = zzdmvVar2.zzauz().zzasx();
        int i = aep.f7280a[zzavf.ordinal()];
        if (i == 1) {
            return new zzdpl("HMACSHA1", secretKeySpec, zzasx);
        }
        if (i == 2) {
            return new zzdpl("HMACSHA256", secretKeySpec, zzasx);
        }
        if (i == 3) {
            return new zzdpl("HMACSHA512", secretKeySpec, zzasx);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
