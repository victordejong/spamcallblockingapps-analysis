package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdq.class */
public final class zzdq {

    /* renamed from: a */
    private final boolean f8365a;

    public zzdq(zzdt zzdtVar) {
        zzeb.m12740c(zzdtVar, "BuildInfo must be non-null");
        this.f8365a = !zzdtVar.zza();
    }

    /* renamed from: a */
    public final boolean m12749a(String str) {
        zzeb.m12740c(str, "flagName must not be null");
        if (!this.f8365a) {
            return true;
        }
        return zzds.f8367a.zza().mo12691a(str);
    }
}
