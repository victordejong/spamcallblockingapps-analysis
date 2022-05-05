package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.bt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/bt.class */
public final class RunnableC2685bt implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16600a;

    /* renamed from: b */
    private final /* synthetic */ long f16601b;

    /* renamed from: c */
    private final /* synthetic */ zzb f16602c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2685bt(zzb zzbVar, String str, long j) {
        this.f16602c = zzbVar;
        this.f16600a = str;
        this.f16601b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb.m1886b(this.f16602c, this.f16600a, this.f16601b);
    }
}
