package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmr.class */
public final class zzmr implements zzms {

    /* renamed from: a */
    private static final zzcl<Boolean> f16494a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16495b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16496c;

    /* renamed from: d */
    private static final zzcl<Boolean> f16497d;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16494a = zzcrVar.zza("measurement.client.sessions.background_sessions_enabled", true);
        f16495b = zzcrVar.zza("measurement.client.sessions.immediate_start_enabled_foreground", true);
        f16496c = zzcrVar.zza("measurement.client.sessions.remove_expired_session_properties_enabled", true);
        f16497d = zzcrVar.zza("measurement.client.sessions.session_id_enabled", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzms
    public final boolean zza() {
        return f16494a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzms
    public final boolean zzb() {
        return f16496c.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzms
    public final boolean zzc() {
        return f16497d.zzc().booleanValue();
    }
}
