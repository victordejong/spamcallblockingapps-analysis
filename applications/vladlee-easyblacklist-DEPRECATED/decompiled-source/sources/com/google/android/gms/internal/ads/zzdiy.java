package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiy.class */
public final class zzdiy {
    @Deprecated

    /* renamed from: f */
    private static final zzdny f14337f;
    @Deprecated

    /* renamed from: g */
    private static final zzdny f14338g;
    @Deprecated

    /* renamed from: h */
    private static final zzdny f14339h;
    public static final String zzgyr = new zzdjc().getKeyType();
    public static final String zzgys = new zzdjm().getKeyType();

    /* renamed from: a */
    private static final String f14332a = new zzdjh().getKeyType();

    /* renamed from: b */
    private static final String f14333b = new zzdjs().getKeyType();

    /* renamed from: c */
    private static final String f14334c = new zzdjw().getKeyType();

    /* renamed from: d */
    private static final String f14335d = new zzdjn().getKeyType();

    /* renamed from: e */
    private static final String f14336e = new zzdjx().getKeyType();

    static {
        zzdny zzawv = zzdny.zzawv();
        f14337f = zzawv;
        f14338g = zzawv;
        f14339h = f14337f;
        try {
            zzasq();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zzasq() {
        zzdku.zzasq();
        zzdit.zza((zzdii) new zzdjc(), true);
        zzdit.zza((zzdii) new zzdjh(), true);
        zzdit.zza((zzdii) new zzdjm(), true);
        zzdit.zza((zzdii) new zzdjn(), true);
        zzdit.zza((zzdii) new zzdjs(), true);
        zzdit.zza((zzdii) new zzdjw(), true);
        zzdit.zza((zzdii) new zzdjx(), true);
        zzdit.zza(new zzdjb());
    }
}
