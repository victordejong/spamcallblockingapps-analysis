package com.google.android.gms.internal.ads;
/* JADX WARN: Init of enum zzhsn can be incorrect */
/* JADX WARN: Init of enum zzhso can be incorrect */
/* JADX WARN: Init of enum zzhsp can be incorrect */
/* JADX WARN: Init of enum zzhsq can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvf.class */
public enum zzdvf {
    DOUBLE(zzdvm.DOUBLE, 1),
    FLOAT(zzdvm.FLOAT, 5),
    INT64(zzdvm.LONG, 0),
    UINT64(zzdvm.LONG, 0),
    INT32(zzdvm.INT, 0),
    FIXED64(zzdvm.LONG, 1),
    FIXED32(zzdvm.INT, 5),
    BOOL(zzdvm.BOOLEAN, 0),
    STRING { // from class: com.google.android.gms.internal.ads.akr
    },
    GROUP { // from class: com.google.android.gms.internal.ads.akq
    },
    MESSAGE { // from class: com.google.android.gms.internal.ads.akt
    },
    BYTES { // from class: com.google.android.gms.internal.ads.aks
    },
    UINT32(zzdvm.INT, 0),
    ENUM(zzdvm.ENUM, 0),
    SFIXED32(zzdvm.INT, 5),
    SFIXED64(zzdvm.LONG, 1),
    SINT32(zzdvm.INT, 0),
    SINT64(zzdvm.LONG, 0);
    

    /* renamed from: a */
    private final zzdvm f14593a;

    /* renamed from: b */
    private final int f14594b;

    static {
        final zzdvm zzdvmVar = zzdvm.STRING;
        final zzdvm zzdvmVar2 = zzdvm.MESSAGE;
        final zzdvm zzdvmVar3 = zzdvm.MESSAGE;
        final zzdvm zzdvmVar4 = zzdvm.BYTE_STRING;
    }

    zzdvf(zzdvm zzdvmVar, int i) {
        this.f14593a = zzdvmVar;
        this.f14594b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzdvf(zzdvm zzdvmVar, int i, byte b) {
        this(zzdvmVar, i);
    }

    public final zzdvm zzbcp() {
        return this.f14593a;
    }

    public final int zzbcq() {
        return this.f14594b;
    }
}
