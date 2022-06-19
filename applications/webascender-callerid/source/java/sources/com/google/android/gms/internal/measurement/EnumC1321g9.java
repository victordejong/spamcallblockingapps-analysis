package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum zzc can be incorrect */
/* JADX WARN: Init of enum zzd can be incorrect */
/* JADX WARN: Init of enum zze can be incorrect */
/* JADX WARN: Init of enum zzf can be incorrect */
/* JADX WARN: Init of enum zzg can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzm can be incorrect */
/* JADX WARN: Init of enum zzo can be incorrect */
/* JADX WARN: Init of enum zzp can be incorrect */
/* JADX WARN: Init of enum zzq can be incorrect */
/* JADX WARN: Init of enum zzr can be incorrect */
/* renamed from: com.google.android.gms.internal.measurement.g9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/g9.class */
public enum EnumC1321g9 {
    DOUBLE(EnumC1328h9.DOUBLE, 1),
    FLOAT(EnumC1328h9.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(EnumC1328h9.BOOLEAN, 0),
    STRING(EnumC1328h9.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(EnumC1328h9.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(EnumC1328h9.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final EnumC1328h9 zzs;

    static {
        EnumC1328h9 enumC1328h9 = EnumC1328h9.LONG;
        EnumC1328h9 enumC1328h92 = EnumC1328h9.INT;
        EnumC1328h9 enumC1328h93 = EnumC1328h9.MESSAGE;
    }

    EnumC1321g9(EnumC1328h9 enumC1328h9, int i) {
        this.zzs = enumC1328h9;
    }

    public final EnumC1328h9 zza() {
        return this.zzs;
    }
}
