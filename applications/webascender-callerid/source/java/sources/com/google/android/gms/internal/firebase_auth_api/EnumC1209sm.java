package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.sm;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.sm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/sm.class */
public final class EnumC1209sm extends Enum<EnumC1209sm> {
    public static final sm zza;
    public static final sm zzb;
    private static final /* synthetic */ sm[] zzd;
    private final String zzc;

    static {
        EnumC1209sm enumC1209sm = new EnumC1209sm("REFRESH_TOKEN", 0, "refresh_token");
        zza = enumC1209sm;
        EnumC1209sm enumC1209sm2 = new EnumC1209sm("AUTHORIZATION_CODE", 1, "authorization_code");
        zzb = enumC1209sm2;
        zzd = new EnumC1209sm[]{enumC1209sm, enumC1209sm2};
    }

    private EnumC1209sm(String str, int i, String str2) {
        super(str, i);
        this.zzc = str2;
    }

    public static sm[] values() {
        return (EnumC1209sm[]) zzd.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzc;
    }
}
