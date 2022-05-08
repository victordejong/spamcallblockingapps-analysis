package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdku.class */
public final class zzdku {

    /* renamed from: a */
    private static final String f14371a = new zzdkq().getKeyType();
    @Deprecated

    /* renamed from: b */
    private static final zzdny f14372b;
    @Deprecated

    /* renamed from: c */
    private static final zzdny f14373c;
    @Deprecated

    /* renamed from: d */
    private static final zzdny f14374d;

    static {
        zzdny zzawv = zzdny.zzawv();
        f14372b = zzawv;
        f14373c = zzawv;
        f14374d = f14372b;
        try {
            zzasq();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zzasq() {
        zzdit.zza((zzdii) new zzdkq(), true);
        zzdit.zza((zzdii) new zzdkp(), true);
        zzdit.zza(new aeq());
    }
}
