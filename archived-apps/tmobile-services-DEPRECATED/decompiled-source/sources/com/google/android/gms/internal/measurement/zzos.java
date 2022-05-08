package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzos.class */
public final class zzos implements zzop {

    /* renamed from: a */
    private static final zzdh<Boolean> f8779a;

    /* renamed from: b */
    private static final zzdh<Double> f8780b;

    /* renamed from: c */
    private static final zzdh<Long> f8781c;

    /* renamed from: d */
    private static final zzdh<Long> f8782d;

    /* renamed from: e */
    private static final zzdh<String> f8783e;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8779a = zzdmVar.m12757d("measurement.test.boolean_flag", false);
        f8780b = zzdmVar.m12760a("measurement.test.double_flag", -3.0d);
        f8781c = zzdmVar.m12759b("measurement.test.int_flag", -2L);
        f8782d = zzdmVar.m12759b("measurement.test.long_flag", -1L);
        f8783e = zzdmVar.m12758c("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzop
    public final boolean zza() {
        return f8779a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzop
    public final double zzb() {
        return f8780b.m12764o().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzop
    public final long zzc() {
        return f8781c.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzop
    public final long zzd() {
        return f8782d.m12764o().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzop
    public final String zze() {
        return f8783e.m12764o();
    }
}
