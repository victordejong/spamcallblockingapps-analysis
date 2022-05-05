package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmq.class */
public final class zzmq implements zzmn {

    /* renamed from: a */
    private static final zzcl<Boolean> f16491a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16492b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16493c;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16491a = zzcrVar.zza("measurement.service.sessions.remove_disabled_session_number", true);
        f16492b = zzcrVar.zza("measurement.service.sessions.session_number_enabled", true);
        f16493c = zzcrVar.zza("measurement.service.sessions.session_number_backfill_enabled", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zza() {
        return f16491a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zzb() {
        return f16492b.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zzc() {
        return f16493c.zzc().booleanValue();
    }
}
