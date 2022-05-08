package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlz.class */
public final class zzlz implements zzma {

    /* renamed from: a */
    private static final zzcl<Boolean> f16462a;

    /* renamed from: b */
    private static final zzcl<Double> f16463b;

    /* renamed from: c */
    private static final zzcl<Long> f16464c;

    /* renamed from: d */
    private static final zzcl<Long> f16465d;

    /* renamed from: e */
    private static final zzcl<String> f16466e;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16462a = zzcrVar.zza("measurement.test.boolean_flag", false);
        f16463b = zzcrVar.zza("measurement.test.double_flag", -3.0d);
        f16464c = zzcrVar.zza("measurement.test.int_flag", -2L);
        f16465d = zzcrVar.zza("measurement.test.long_flag", -1L);
        f16466e = zzcrVar.zza("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final boolean zza() {
        return f16462a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final double zzb() {
        return f16463b.zzc().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final long zzc() {
        return f16464c.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final long zzd() {
        return f16465d.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final String zze() {
        return f16466e.zzc();
    }
}
