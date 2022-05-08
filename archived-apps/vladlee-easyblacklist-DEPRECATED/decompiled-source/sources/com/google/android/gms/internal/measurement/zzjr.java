package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjr.class */
public final class zzjr implements zzjs {

    /* renamed from: a */
    private static final zzcl<Boolean> f16384a;

    /* renamed from: b */
    private static final zzcl<Long> f16385b;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16384a = zzcrVar.zza("measurement.upload_dsid_enabled", true);
        f16385b = zzcrVar.zza("measurement.id.upload_dsid_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    public final boolean zza() {
        return f16384a.zzc().booleanValue();
    }
}
