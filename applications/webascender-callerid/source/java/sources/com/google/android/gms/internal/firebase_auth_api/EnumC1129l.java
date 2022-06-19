package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.l;
import com.google.android.gms.internal.firebase-auth-api.mp;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/l.class */
public final class EnumC1129l extends Enum<EnumC1129l> {
    public static final l zza;
    public static final l zzb;
    public static final l zzc;
    public static final l zzd;
    public static final l zze;
    public static final l zzf;
    public static final l zzg;
    public static final l zzh;
    public static final l zzi;
    public static final l zzj;
    private static final /* synthetic */ l[] zzn;
    private final Class<?> zzk;
    private final Class<?> zzl;
    private final Object zzm;

    static {
        EnumC1129l enumC1129l = new EnumC1129l("VOID", 0, Void.class, Void.class, null);
        zza = enumC1129l;
        Class cls = Integer.TYPE;
        EnumC1129l enumC1129l2 = new EnumC1129l("INT", 1, cls, Integer.class, 0);
        zzb = enumC1129l2;
        EnumC1129l enumC1129l3 = new EnumC1129l("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = enumC1129l3;
        EnumC1129l enumC1129l4 = new EnumC1129l("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = enumC1129l4;
        EnumC1129l enumC1129l5 = new EnumC1129l("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = enumC1129l5;
        EnumC1129l enumC1129l6 = new EnumC1129l("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = enumC1129l6;
        EnumC1129l enumC1129l7 = new EnumC1129l("STRING", 6, String.class, String.class, "");
        zzg = enumC1129l7;
        EnumC1129l enumC1129l8 = new EnumC1129l("BYTE_STRING", 7, mp.class, mp.class, AbstractC1151mp.f3756g);
        zzh = enumC1129l8;
        EnumC1129l enumC1129l9 = new EnumC1129l("ENUM", 8, cls, Integer.class, null);
        zzi = enumC1129l9;
        EnumC1129l enumC1129l10 = new EnumC1129l("MESSAGE", 9, Object.class, Object.class, null);
        zzj = enumC1129l10;
        zzn = new EnumC1129l[]{enumC1129l, enumC1129l2, enumC1129l3, enumC1129l4, enumC1129l5, enumC1129l6, enumC1129l7, enumC1129l8, enumC1129l9, enumC1129l10};
    }

    private EnumC1129l(String str, int i, Class cls, Class cls2, Object obj) {
        super(str, i);
        this.zzk = cls;
        this.zzl = cls2;
        this.zzm = obj;
    }

    public static l[] values() {
        return (EnumC1129l[]) zzn.clone();
    }

    public final Class<?> zza() {
        return this.zzl;
    }
}
