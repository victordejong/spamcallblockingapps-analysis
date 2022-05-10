package com.google.android.gms.internal.measurement;

import p131c.p161d.p170b.p224d.p252g.p258f.C4575q5;
/* JADX WARN: Init of enum zzi can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzl can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlg.class */
public enum zzlg {
    DOUBLE(zzln.DOUBLE, 1),
    FLOAT(zzln.FLOAT, 5),
    INT64(zzln.LONG, 0),
    UINT64(zzln.LONG, 0),
    INT32(zzln.INT, 0),
    FIXED64(zzln.LONG, 1),
    FIXED32(zzln.INT, 5),
    BOOL(zzln.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzlj
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.measurement.zzli
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzll
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzlk
    },
    UINT32(zzln.INT, 0),
    ENUM(zzln.ENUM, 0),
    SFIXED32(zzln.INT, 5),
    SFIXED64(zzln.LONG, 1),
    SINT32(zzln.INT, 0),
    SINT64(zzln.LONG, 0);
    
    public final zzln zzs;
    public final int zzt;

    static {
        final zzln zzlnVar = zzln.STRING;
        final zzln zzlnVar2 = zzln.MESSAGE;
        final zzln zzlnVar3 = zzln.MESSAGE;
        final zzln zzlnVar4 = zzln.BYTE_STRING;
    }

    zzlg(zzln zzlnVar, int i) {
        this.zzs = zzlnVar;
        this.zzt = i;
    }

    /* synthetic */ zzlg(zzln zzlnVar, int i, C4575q5 q5Var) {
        this(zzlnVar, i);
    }

    public final zzln zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
