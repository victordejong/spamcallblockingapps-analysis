package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkv.class */
public final class zzkv implements zzkw {

    /* renamed from: a */
    private static final zzcl<Boolean> f16421a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16422b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16423c;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16421a = zzcrVar.zza("measurement.client.sessions.check_on_reset_and_enable", false);
        f16422b = zzcrVar.zza("measurement.client.sessions.check_on_startup", true);
        f16423c = zzcrVar.zza("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zzb() {
        return f16421a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zzc() {
        return f16422b.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zzd() {
        return f16423c.zzc().booleanValue();
    }
}
