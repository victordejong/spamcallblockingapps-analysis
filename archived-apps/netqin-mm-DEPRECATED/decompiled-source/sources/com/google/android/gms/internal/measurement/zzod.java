package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzod.class */
public final class zzod implements zzoa {

    /* renamed from: a */
    public static final zzdh<Boolean> f29639a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29640b;

    /* renamed from: c */
    public static final zzdh<Boolean> f29641c;

    /* renamed from: d */
    public static final zzdh<Boolean> f29642d;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29639a = zzdmVar.m9827a("measurement.sdk.collection.enable_extend_user_property_size", true);
        f29640b = zzdmVar.m9827a("measurement.sdk.collection.last_deep_link_referrer2", true);
        f29641c = zzdmVar.m9827a("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f29642d = zzdmVar.m9827a("measurement.sdk.collection.last_gclid_from_referrer2", false);
        zzdmVar.m9829a("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zza() {
        return f29639a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzb() {
        return f29640b.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzc() {
        return f29641c.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzd() {
        return f29642d.m9838b().booleanValue();
    }
}
