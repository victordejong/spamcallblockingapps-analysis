package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznr.class */
public final class zznr implements zzno {

    /* renamed from: a */
    public static final zzdh<Boolean> f29624a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29625b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29624a = zzdmVar.m9827a("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f29625b = zzdmVar.m9827a("measurement.collection.redundant_engagement_removal_enabled", false);
        zzdmVar.m9829a("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzno
    public final boolean zza() {
        return f29624a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzno
    public final boolean zzb() {
        return f29625b.m9838b().booleanValue();
    }
}
