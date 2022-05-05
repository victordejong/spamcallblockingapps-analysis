package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzml.class */
public final class zzml implements zzmm {

    /* renamed from: a */
    private static final zzcl<Boolean> f16478a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16479b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16480c;

    /* renamed from: d */
    private static final zzcl<Boolean> f16481d;

    /* renamed from: e */
    private static final zzcl<Boolean> f16482e;

    /* renamed from: f */
    private static final zzcl<Boolean> f16483f;

    /* renamed from: g */
    private static final zzcl<Long> f16484g;

    /* renamed from: h */
    private static final zzcl<Boolean> f16485h;

    /* renamed from: i */
    private static final zzcl<Boolean> f16486i;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16478a = zzcrVar.zza("measurement.service.audience.scoped_filters_v27", false);
        f16479b = zzcrVar.zza("measurement.service.audience.session_scoped_user_engagement", false);
        f16480c = zzcrVar.zza("measurement.client.audience.scoped_engagement_removal_when_session_expired", true);
        f16481d = zzcrVar.zza("measurement.service.audience.scoped_engagement_removal_when_session_expired", true);
        f16482e = zzcrVar.zza("measurement.service.audience.session_scoped_event_aggregates", false);
        f16483f = zzcrVar.zza("measurement.service.audience.use_bundle_timestamp_for_property_filters", false);
        f16484g = zzcrVar.zza("measurement.id.scoped_audience_filters", 0L);
        f16485h = zzcrVar.zza("measurement.service.audience.fix_prepending_previous_sequence_timestamp", false);
        f16486i = zzcrVar.zza("measurement.service.audience.remove_disabled_session_scoped_user_engagement", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzb() {
        return f16478a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzc() {
        return f16479b.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzd() {
        return f16480c.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zze() {
        return f16481d.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzf() {
        return f16482e.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzg() {
        return f16483f.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzh() {
        return f16485h.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzi() {
        return f16486i.zzc().booleanValue();
    }
}
