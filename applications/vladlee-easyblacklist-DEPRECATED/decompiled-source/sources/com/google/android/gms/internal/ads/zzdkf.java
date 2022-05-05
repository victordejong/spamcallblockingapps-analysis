package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkf.class */
public final class zzdkf {

    /* renamed from: a */
    private static final String f14365a = new aed().getKeyType();

    /* renamed from: b */
    private static final String f14366b = new zzdkc().getKeyType();
    @Deprecated
    public static final zzdny zzgyy = zzdny.zzawv();
    @Deprecated

    /* renamed from: c */
    private static final zzdny f14367c = zzdny.zzawv();
    @Deprecated

    /* renamed from: d */
    private static final zzdny f14368d = zzdny.zzawv();

    static {
        try {
            zzdiy.zzasq();
            zzdit.zza((zzdiu) new zzdkc(), (zzdii) new aed(), true);
            zzdit.zza(new zzdkh());
            zzdit.zza(new aeg());
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
