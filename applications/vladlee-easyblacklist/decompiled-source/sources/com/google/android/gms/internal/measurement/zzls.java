package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzls.class */
public final class zzls implements zzlp {

    /* renamed from: a */
    private static final zzcl<Boolean> f16454a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16455b;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16454a = zzcrVar.zza("measurement.personalized_ads_signals_collection_enabled", true);
        f16455b = zzcrVar.zza("measurement.personalized_ads_property_translation_enabled", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzlp
    public final boolean zza() {
        return f16454a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlp
    public final boolean zzb() {
        return f16455b.zzc().booleanValue();
    }
}
