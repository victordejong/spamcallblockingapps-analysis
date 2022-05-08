package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzme.class */
public final class zzme implements zzmb {

    /* renamed from: a */
    private static final zzdh<Boolean> f8666a;

    /* renamed from: b */
    private static final zzdh<Long> f8667b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8666a = zzdmVar.m12757d("measurement.sdk.attribution.cache", true);
        f8667b = zzdmVar.m12759b("measurement.sdk.attribution.cache.ttl", 604800000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final boolean zza() {
        return f8666a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmb
    public final long zzb() {
        return f8667b.m12764o().longValue();
    }
}
