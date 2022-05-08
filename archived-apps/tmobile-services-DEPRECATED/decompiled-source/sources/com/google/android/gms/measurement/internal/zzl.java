package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzl.class */
final class zzl implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9719f;

    /* renamed from: g */
    private final /* synthetic */ String f9720g;

    /* renamed from: h */
    private final /* synthetic */ String f9721h;

    /* renamed from: i */
    private final /* synthetic */ AppMeasurementDynamiteService f9722i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzwVar, String str, String str2) {
        this.f9722i = appMeasurementDynamiteService;
        this.f9719f = zzwVar;
        this.f9720g = str;
        this.f9721h = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9722i.f8821a.m11372P().m11203G(this.f9719f, this.f9720g, this.f9721h);
    }
}
