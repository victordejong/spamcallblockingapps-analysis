package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdna;
import com.google.android.gms.internal.ads.zzdnk;
import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdin.class */
public final class zzdin {
    @Deprecated
    public static final zzdij zzk(byte[] bArr) {
        try {
            zzdnk zzn = zzdnk.zzn(bArr);
            for (zzdnk.zza zzaVar : zzn.zzavw()) {
                if (zzaVar.zzawa().zzavk() == zzdna.zzb.UNKNOWN_KEYMATERIAL || zzaVar.zzawa().zzavk() == zzdna.zzb.SYMMETRIC || zzaVar.zzawa().zzavk() == zzdna.zzb.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzdij.m3532a(zzn);
        } catch (zzdse e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
