package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzom.class */
public final class zzom implements zzoj {

    /* renamed from: a */
    private static final zzdh<Long> f8773a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        zzdmVar.m12759b("measurement.id.max_bundles_per_iteration", 0L);
        f8773a = zzdmVar.m12759b("measurement.max_bundles_per_iteration", 2L);
    }

    @Override // com.google.android.gms.internal.measurement.zzoj
    public final long zza() {
        return f8773a.m12764o().longValue();
    }
}
