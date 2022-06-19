package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.y1;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.y1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/y1.class */
public final class EnumC1259y1 extends Enum<EnumC1259y1> {
    public static final y1 zza;
    public static final y1 zzb;
    public static final y1 zzc;
    public static final y1 zzd;
    public static final y1 zze;
    public static final y1 zzf;
    public static final y1 zzg;
    public static final y1 zzh;
    public static final y1 zzi;
    private static final /* synthetic */ y1[] zzk;
    private final Object zzj;

    static {
        EnumC1259y1 enumC1259y1 = new EnumC1259y1("INT", 0, 0);
        zza = enumC1259y1;
        EnumC1259y1 enumC1259y12 = new EnumC1259y1("LONG", 1, 0L);
        zzb = enumC1259y12;
        EnumC1259y1 enumC1259y13 = new EnumC1259y1("FLOAT", 2, Float.valueOf(0.0f));
        zzc = enumC1259y13;
        EnumC1259y1 enumC1259y14 = new EnumC1259y1("DOUBLE", 3, Double.valueOf(0.0d));
        zzd = enumC1259y14;
        EnumC1259y1 enumC1259y15 = new EnumC1259y1("BOOLEAN", 4, Boolean.FALSE);
        zze = enumC1259y15;
        EnumC1259y1 enumC1259y16 = new EnumC1259y1("STRING", 5, "");
        zzf = enumC1259y16;
        EnumC1259y1 enumC1259y17 = new EnumC1259y1("BYTE_STRING", 6, AbstractC1151mp.f3756g);
        zzg = enumC1259y17;
        EnumC1259y1 enumC1259y18 = new EnumC1259y1("ENUM", 7, null);
        zzh = enumC1259y18;
        EnumC1259y1 enumC1259y19 = new EnumC1259y1("MESSAGE", 8, null);
        zzi = enumC1259y19;
        zzk = new EnumC1259y1[]{enumC1259y1, enumC1259y12, enumC1259y13, enumC1259y14, enumC1259y15, enumC1259y16, enumC1259y17, enumC1259y18, enumC1259y19};
    }

    private EnumC1259y1(String str, int i, Object obj) {
        super(str, i);
        this.zzj = obj;
    }

    public static y1[] values() {
        return (EnumC1259y1[]) zzk.clone();
    }
}
