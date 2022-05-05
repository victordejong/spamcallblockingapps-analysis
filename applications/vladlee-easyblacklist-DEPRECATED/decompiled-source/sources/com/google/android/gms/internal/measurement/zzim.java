package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum zzi can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzl can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzim.class */
public enum zzim {
    DOUBLE(zzip.DOUBLE, 1),
    FLOAT(zzip.FLOAT, 5),
    INT64(zzip.LONG, 0),
    UINT64(zzip.LONG, 0),
    INT32(zzip.INT, 0),
    FIXED64(zzip.LONG, 1),
    FIXED32(zzip.INT, 5),
    BOOL(zzip.BOOLEAN, 0),
    STRING { // from class: com.google.android.gms.internal.measurement.ey
    },
    GROUP { // from class: com.google.android.gms.internal.measurement.fa
    },
    MESSAGE { // from class: com.google.android.gms.internal.measurement.ez
    },
    BYTES { // from class: com.google.android.gms.internal.measurement.fb
    },
    UINT32(zzip.INT, 0),
    ENUM(zzip.ENUM, 0),
    SFIXED32(zzip.INT, 5),
    SFIXED64(zzip.LONG, 1),
    SINT32(zzip.INT, 0),
    SINT64(zzip.LONG, 0);
    

    /* renamed from: a */
    private final zzip f16316a;

    /* renamed from: b */
    private final int f16317b;

    static {
        final zzip zzipVar = zzip.STRING;
        final zzip zzipVar2 = zzip.MESSAGE;
        final zzip zzipVar3 = zzip.MESSAGE;
        final zzip zzipVar4 = zzip.BYTE_STRING;
    }

    zzim(zzip zzipVar, int i) {
        this.f16316a = zzipVar;
        this.f16317b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzim(zzip zzipVar, int i, byte b) {
        this(zzipVar, i);
    }

    public final zzip zza() {
        return this.f16316a;
    }

    public final int zzb() {
        return this.f16317b;
    }
}
