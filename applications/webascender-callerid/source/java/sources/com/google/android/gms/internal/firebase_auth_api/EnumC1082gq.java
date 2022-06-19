package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.gq;
import com.google.android.gms.internal.firebase-auth-api.l;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.gq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/gq.class */
public final class EnumC1082gq extends Enum<EnumC1082gq> {
    public static final gq zzA;
    public static final gq zzB;
    public static final gq zzC;
    public static final gq zzD;
    public static final gq zzE;
    public static final gq zzF;
    public static final gq zzG;
    public static final gq zzH;
    public static final gq zzI;
    public static final gq zzJ;
    public static final gq zzK;
    public static final gq zzL;
    public static final gq zzM;
    public static final gq zzN;
    public static final gq zzO;
    public static final gq zzP;
    public static final gq zzQ;
    public static final gq zzR;
    public static final gq zzS;
    public static final gq zzT;
    public static final gq zzU;
    public static final gq zzV;
    public static final gq zzW;
    public static final gq zzX;
    public static final gq zzY = new EnumC1082gq("MAP", 50, 50, 4, EnumC1129l.zza);
    public static final gq zza;
    private static final gq[] zzac;
    private static final /* synthetic */ gq[] zzad;
    public static final gq zzb;
    public static final gq zzc;
    public static final gq zzd;
    public static final gq zze;
    public static final gq zzf;
    public static final gq zzg;
    public static final gq zzh;
    public static final gq zzi;
    public static final gq zzj;
    public static final gq zzk;
    public static final gq zzl;
    public static final gq zzm;
    public static final gq zzn;
    public static final gq zzo;
    public static final gq zzp;
    public static final gq zzq;
    public static final gq zzr;
    public static final gq zzs;
    public static final gq zzt;
    public static final gq zzu;
    public static final gq zzv;
    public static final gq zzw;
    public static final gq zzx;
    public static final gq zzy;
    public static final gq zzz;
    private final l zzZ;
    private final int zzaa;
    private final Class<?> zzab;

    static {
        l lVar = EnumC1129l.zze;
        zza = new EnumC1082gq("DOUBLE", 0, 0, 1, lVar);
        l lVar2 = EnumC1129l.zzd;
        zzb = new EnumC1082gq("FLOAT", 1, 1, 1, lVar2);
        l lVar3 = EnumC1129l.zzc;
        zzc = new EnumC1082gq("INT64", 2, 2, 1, lVar3);
        zzd = new EnumC1082gq("UINT64", 3, 3, 1, lVar3);
        l lVar4 = EnumC1129l.zzb;
        zze = new EnumC1082gq("INT32", 4, 4, 1, lVar4);
        zzf = new EnumC1082gq("FIXED64", 5, 5, 1, lVar3);
        zzg = new EnumC1082gq("FIXED32", 6, 6, 1, lVar4);
        l lVar5 = EnumC1129l.zzf;
        zzh = new EnumC1082gq("BOOL", 7, 7, 1, lVar5);
        l lVar6 = EnumC1129l.zzg;
        zzi = new EnumC1082gq("STRING", 8, 8, 1, lVar6);
        l lVar7 = EnumC1129l.zzj;
        zzj = new EnumC1082gq("MESSAGE", 9, 9, 1, lVar7);
        l lVar8 = EnumC1129l.zzh;
        zzk = new EnumC1082gq("BYTES", 10, 10, 1, lVar8);
        zzl = new EnumC1082gq("UINT32", 11, 11, 1, lVar4);
        l lVar9 = EnumC1129l.zzi;
        zzm = new EnumC1082gq("ENUM", 12, 12, 1, lVar9);
        zzn = new EnumC1082gq("SFIXED32", 13, 13, 1, lVar4);
        zzo = new EnumC1082gq("SFIXED64", 14, 14, 1, lVar3);
        zzp = new EnumC1082gq("SINT32", 15, 15, 1, lVar4);
        zzq = new EnumC1082gq("SINT64", 16, 16, 1, lVar3);
        zzr = new EnumC1082gq("GROUP", 17, 17, 1, lVar7);
        zzs = new EnumC1082gq("DOUBLE_LIST", 18, 18, 2, lVar);
        zzt = new EnumC1082gq("FLOAT_LIST", 19, 19, 2, lVar2);
        zzu = new EnumC1082gq("INT64_LIST", 20, 20, 2, lVar3);
        zzv = new EnumC1082gq("UINT64_LIST", 21, 21, 2, lVar3);
        zzw = new EnumC1082gq("INT32_LIST", 22, 22, 2, lVar4);
        zzx = new EnumC1082gq("FIXED64_LIST", 23, 23, 2, lVar3);
        zzy = new EnumC1082gq("FIXED32_LIST", 24, 24, 2, lVar4);
        zzz = new EnumC1082gq("BOOL_LIST", 25, 25, 2, lVar5);
        zzA = new EnumC1082gq("STRING_LIST", 26, 26, 2, lVar6);
        zzB = new EnumC1082gq("MESSAGE_LIST", 27, 27, 2, lVar7);
        zzC = new EnumC1082gq("BYTES_LIST", 28, 28, 2, lVar8);
        zzD = new EnumC1082gq("UINT32_LIST", 29, 29, 2, lVar4);
        zzE = new EnumC1082gq("ENUM_LIST", 30, 30, 2, lVar9);
        zzF = new EnumC1082gq("SFIXED32_LIST", 31, 31, 2, lVar4);
        zzG = new EnumC1082gq("SFIXED64_LIST", 32, 32, 2, lVar3);
        zzH = new EnumC1082gq("SINT32_LIST", 33, 33, 2, lVar4);
        zzI = new EnumC1082gq("SINT64_LIST", 34, 34, 2, lVar3);
        zzJ = new EnumC1082gq("DOUBLE_LIST_PACKED", 35, 35, 3, lVar);
        zzK = new EnumC1082gq("FLOAT_LIST_PACKED", 36, 36, 3, lVar2);
        zzL = new EnumC1082gq("INT64_LIST_PACKED", 37, 37, 3, lVar3);
        zzM = new EnumC1082gq("UINT64_LIST_PACKED", 38, 38, 3, lVar3);
        zzN = new EnumC1082gq("INT32_LIST_PACKED", 39, 39, 3, lVar4);
        zzO = new EnumC1082gq("FIXED64_LIST_PACKED", 40, 40, 3, lVar3);
        zzP = new EnumC1082gq("FIXED32_LIST_PACKED", 41, 41, 3, lVar4);
        zzQ = new EnumC1082gq("BOOL_LIST_PACKED", 42, 42, 3, lVar5);
        zzR = new EnumC1082gq("UINT32_LIST_PACKED", 43, 43, 3, lVar4);
        zzS = new EnumC1082gq("ENUM_LIST_PACKED", 44, 44, 3, lVar9);
        zzT = new EnumC1082gq("SFIXED32_LIST_PACKED", 45, 45, 3, lVar4);
        l lVar10 = EnumC1129l.zzc;
        zzU = new EnumC1082gq("SFIXED64_LIST_PACKED", 46, 46, 3, lVar10);
        zzV = new EnumC1082gq("SINT32_LIST_PACKED", 47, 47, 3, lVar4);
        zzW = new EnumC1082gq("SINT64_LIST_PACKED", 48, 48, 3, lVar10);
        zzX = new EnumC1082gq("GROUP_LIST", 49, 49, 2, lVar7);
        zzad = new EnumC1082gq[]{zza, zzb, zzc, zzd, zze, zzf, zzg, zzh, zzi, zzj, zzk, zzl, zzm, zzn, zzo, zzp, zzq, zzr, zzs, zzt, zzu, zzv, zzw, zzx, zzy, zzz, zzA, zzB, zzC, zzD, zzE, zzF, zzG, zzH, zzI, zzJ, zzK, zzL, zzM, zzN, zzO, zzP, zzQ, zzR, zzS, zzT, zzU, zzV, zzW, zzX, zzY};
        gq[] values = values();
        zzac = new EnumC1082gq[values.length];
        for (gq gqVar : values) {
            zzac[((EnumC1082gq) gqVar).zzaa] = gqVar;
        }
    }

    private EnumC1082gq(String str, int i, int i2, int i3, l lVar) {
        super(str, i);
        this.zzaa = i2;
        this.zzZ = lVar;
        l lVar2 = EnumC1129l.zza;
        int i4 = i3 - 1;
        if (i4 == 1) {
            this.zzab = lVar.zza();
        } else if (i4 != 3) {
            this.zzab = null;
        } else {
            this.zzab = lVar.zza();
        }
        if (i3 == 1) {
            lVar.ordinal();
        }
    }

    public static gq[] values() {
        return (EnumC1082gq[]) zzad.clone();
    }

    public final int zza() {
        return this.zzaa;
    }
}
