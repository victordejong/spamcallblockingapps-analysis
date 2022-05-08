package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzly.class */
public final class zzly implements zzlv {

    /* renamed from: a */
    private static final zzdh<Boolean> f8660a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8660a = zzdmVar.m12757d("measurement.androidId.delete_feature", true);
        zzdmVar.m12757d("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final boolean zza() {
        return f8660a.m12764o().booleanValue();
    }
}
