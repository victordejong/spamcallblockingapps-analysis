package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmz.class */
public final class zzmz implements zzmw {

    /* renamed from: a */
    public static final zzdh<Boolean> f29604a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29605b;

    /* renamed from: c */
    public static final zzdh<Boolean> f29606c;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        zzdmVar.m9827a("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f29604a = zzdmVar.m9827a("measurement.audience.refresh_event_count_filters_timestamp", false);
        f29605b = zzdmVar.m9827a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f29606c = zzdmVar.m9827a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final boolean zzb() {
        return f29604a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final boolean zzc() {
        return f29605b.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmw
    public final boolean zzd() {
        return f29606c.m9838b().booleanValue();
    }
}
