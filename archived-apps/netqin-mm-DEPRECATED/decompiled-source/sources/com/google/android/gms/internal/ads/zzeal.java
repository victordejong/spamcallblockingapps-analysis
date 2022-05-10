package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import com.google.android.gms.internal.ads.zzefj;
import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeal.class */
public final class zzeal {
    @Deprecated
    /* renamed from: a */
    public static final zzeah m12941a(byte[] bArr) throws GeneralSecurityException {
        try {
            zzefj a = zzefj.m12671a(bArr, zzejm.m12419a());
            for (zzefj.zzb zzbVar : a.m12669n()) {
                if (zzbVar.m12663p().m12688o() == zzefb.zza.UNKNOWN_KEYMATERIAL || zzbVar.m12663p().m12688o() == zzefb.zza.SYMMETRIC || zzbVar.m12663p().m12688o() == zzefb.zza.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzeah.m12947a(a);
        } catch (zzekj e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
