package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.x1;
import com.google.android.gms.internal.firebase-auth-api.y1;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.x1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/x1.class */
public final class EnumC1247x1 extends Enum<EnumC1247x1> {
    public static final x1 zza;
    public static final x1 zzb;
    public static final x1 zzc;
    public static final x1 zzd;
    public static final x1 zze;
    public static final x1 zzf;
    public static final x1 zzg;
    public static final x1 zzh;
    public static final x1 zzi;
    public static final x1 zzj;
    public static final x1 zzk;
    public static final x1 zzl;
    public static final x1 zzm;
    public static final x1 zzn;
    public static final x1 zzo;
    public static final x1 zzp;
    public static final x1 zzq;
    public static final x1 zzr;
    private static final /* synthetic */ x1[] zzt;
    private final y1 zzs;

    static {
        EnumC1247x1 enumC1247x1 = new EnumC1247x1("DOUBLE", 0, EnumC1259y1.zzd, 1);
        zza = enumC1247x1;
        EnumC1247x1 enumC1247x12 = new EnumC1247x1("FLOAT", 1, EnumC1259y1.zzc, 5);
        zzb = enumC1247x12;
        y1 y1Var = EnumC1259y1.zzb;
        EnumC1247x1 enumC1247x13 = new EnumC1247x1("INT64", 2, y1Var, 0);
        zzc = enumC1247x13;
        EnumC1247x1 enumC1247x14 = new EnumC1247x1("UINT64", 3, y1Var, 0);
        zzd = enumC1247x14;
        y1 y1Var2 = EnumC1259y1.zza;
        EnumC1247x1 enumC1247x15 = new EnumC1247x1("INT32", 4, y1Var2, 0);
        zze = enumC1247x15;
        EnumC1247x1 enumC1247x16 = new EnumC1247x1("FIXED64", 5, y1Var, 1);
        zzf = enumC1247x16;
        EnumC1247x1 enumC1247x17 = new EnumC1247x1("FIXED32", 6, y1Var2, 5);
        zzg = enumC1247x17;
        EnumC1247x1 enumC1247x18 = new EnumC1247x1("BOOL", 7, EnumC1259y1.zze, 0);
        zzh = enumC1247x18;
        EnumC1247x1 enumC1247x19 = new EnumC1247x1("STRING", 8, EnumC1259y1.zzf, 2);
        zzi = enumC1247x19;
        y1 y1Var3 = EnumC1259y1.zzi;
        EnumC1247x1 enumC1247x110 = new EnumC1247x1("GROUP", 9, y1Var3, 3);
        zzj = enumC1247x110;
        EnumC1247x1 enumC1247x111 = new EnumC1247x1("MESSAGE", 10, y1Var3, 2);
        zzk = enumC1247x111;
        EnumC1247x1 enumC1247x112 = new EnumC1247x1("BYTES", 11, EnumC1259y1.zzg, 2);
        zzl = enumC1247x112;
        EnumC1247x1 enumC1247x113 = new EnumC1247x1("UINT32", 12, y1Var2, 0);
        zzm = enumC1247x113;
        EnumC1247x1 enumC1247x114 = new EnumC1247x1("ENUM", 13, EnumC1259y1.zzh, 0);
        zzn = enumC1247x114;
        EnumC1247x1 enumC1247x115 = new EnumC1247x1("SFIXED32", 14, y1Var2, 5);
        zzo = enumC1247x115;
        EnumC1247x1 enumC1247x116 = new EnumC1247x1("SFIXED64", 15, y1Var, 1);
        zzp = enumC1247x116;
        EnumC1247x1 enumC1247x117 = new EnumC1247x1("SINT32", 16, y1Var2, 0);
        zzq = enumC1247x117;
        EnumC1247x1 enumC1247x118 = new EnumC1247x1("SINT64", 17, y1Var, 0);
        zzr = enumC1247x118;
        zzt = new EnumC1247x1[]{enumC1247x1, enumC1247x12, enumC1247x13, enumC1247x14, enumC1247x15, enumC1247x16, enumC1247x17, enumC1247x18, enumC1247x19, enumC1247x110, enumC1247x111, enumC1247x112, enumC1247x113, enumC1247x114, enumC1247x115, enumC1247x116, enumC1247x117, enumC1247x118};
    }

    private EnumC1247x1(String str, int i, y1 y1Var, int i2) {
        super(str, i);
        this.zzs = y1Var;
    }

    public static x1[] values() {
        return (EnumC1247x1[]) zzt.clone();
    }

    public final y1 zza() {
        return this.zzs;
    }
}
