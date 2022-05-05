package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjc.class */
public final class zzjc implements zzcz<zzjb> {

    /* renamed from: a */
    private static zzjc f16331a = new zzjc();

    /* renamed from: b */
    private final zzcz<zzjb> f16332b;

    public zzjc() {
        this(zzdc.zza(new zzje()));
    }

    private zzjc(zzcz<zzjb> zzczVar) {
        this.f16332b = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjb) f16331a.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjb zza() {
        return this.f16332b.zza();
    }
}
