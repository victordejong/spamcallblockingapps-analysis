package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmp.class */
public final class zzmp extends zzhg {

    /* renamed from: a */
    private static final Object f15149a = new Object();

    /* renamed from: b */
    private final long f15150b;

    /* renamed from: c */
    private final long f15151c;

    /* renamed from: d */
    private final long f15152d;

    /* renamed from: e */
    private final long f15153e;

    /* renamed from: f */
    private final boolean f15154f;

    /* renamed from: g */
    private final boolean f15155g;

    private zzmp(long j, long j2, boolean z) {
        this.f15150b = j;
        this.f15151c = j2;
        this.f15152d = 0L;
        this.f15153e = 0L;
        this.f15154f = z;
        this.f15155g = false;
    }

    public zzmp(long j, boolean z) {
        this(j, j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final zzhi zza(int i, zzhi zzhiVar, boolean z) {
        zzoc.zzc(i, 0, 1);
        Object obj = z ? f15149a : null;
        return zzhiVar.zza(obj, obj, 0, this.f15150b, 0L, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final zzhl zza(int i, zzhl zzhlVar, boolean z, long j) {
        zzoc.zzc(i, 0, 1);
        boolean z2 = this.f15154f;
        long j2 = this.f15151c;
        zzhlVar.zzagi = null;
        zzhlVar.zzags = -9223372036854775807L;
        zzhlVar.zzagt = -9223372036854775807L;
        zzhlVar.zzagu = z2;
        zzhlVar.zzagv = false;
        zzhlVar.zzagy = 0L;
        zzhlVar.zzagj = j2;
        zzhlVar.zzagw = 0;
        zzhlVar.zzagx = 0;
        zzhlVar.zzagz = 0L;
        return zzhlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final int zzc(Object obj) {
        return f15149a.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final int zzev() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final int zzew() {
        return 1;
    }
}
