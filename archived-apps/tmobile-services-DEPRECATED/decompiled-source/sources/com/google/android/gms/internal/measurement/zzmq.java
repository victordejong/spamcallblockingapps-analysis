package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmq.class */
public final class zzmq implements zzmn {

    /* renamed from: a */
    private static final zzdh<Boolean> f8715a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8715a = zzdmVar.m12757d("measurement.sdk.dynamite.allow_remote_dynamite3", false);
        zzdmVar.m12757d("measurement.collection.init_params_control_enabled", true);
        zzdmVar.m12757d("measurement.sdk.dynamite.use_dynamite3", true);
        zzdmVar.m12759b("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zza() {
        return f8715a.m12764o().booleanValue();
    }
}
