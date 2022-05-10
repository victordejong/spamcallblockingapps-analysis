package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznl.class */
public final class zznl implements zzni {

    /* renamed from: a */
    public static final zzdh<Boolean> f29618a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29618a = zzdmVar.m9827a("measurement.client.sessions.check_on_reset_and_enable2", true);
        zzdmVar.m9827a("measurement.client.sessions.check_on_startup", true);
        zzdmVar.m9827a("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzni
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzni
    public final boolean zzb() {
        return f29618a.m9838b().booleanValue();
    }
}
