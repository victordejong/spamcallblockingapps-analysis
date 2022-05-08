package com.google.android.gms.internal.icing;
/* JADX WARN: Init of enum zzmx can be incorrect */
/* JADX WARN: Init of enum zzmy can be incorrect */
/* JADX WARN: Init of enum zzmz can be incorrect */
/* JADX WARN: Init of enum zzna can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfl.class */
public enum zzfl {
    DOUBLE(zzfq.DOUBLE, 1),
    FLOAT(zzfq.FLOAT, 5),
    INT64(zzfq.LONG, 0),
    UINT64(zzfq.LONG, 0),
    INT32(zzfq.INT, 0),
    FIXED64(zzfq.LONG, 1),
    FIXED32(zzfq.INT, 5),
    BOOL(zzfq.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.icing.zzfm
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.icing.zzfn
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.icing.zzfo
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.icing.zzfp
    },
    UINT32(zzfq.INT, 0),
    ENUM(zzfq.ENUM, 0),
    SFIXED32(zzfq.INT, 5),
    SFIXED64(zzfq.LONG, 1),
    SINT32(zzfq.INT, 0),
    SINT64(zzfq.LONG, 0);
    
    private final zzfq zznh;
    private final int zzni;

    static {
        final zzfq zzfqVar = zzfq.STRING;
        final zzfq zzfqVar2 = zzfq.MESSAGE;
        final zzfq zzfqVar3 = zzfq.MESSAGE;
        final zzfq zzfqVar4 = zzfq.BYTE_STRING;
    }

    zzfl(zzfq zzfqVar, int i) {
        this.zznh = zzfqVar;
        this.zzni = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzfl(zzfq zzfqVar, int i, zzfk zzfkVar) {
        this(zzfqVar, i);
    }

    public final zzfq zzcy() {
        return this.zznh;
    }

    public final int zzcz() {
        return this.zzni;
    }
}
