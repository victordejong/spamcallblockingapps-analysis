package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
public final class RunnableC2638a implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16550a;

    /* renamed from: b */
    private final /* synthetic */ long f16551b;

    /* renamed from: c */
    private final /* synthetic */ zzb f16552c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2638a(zzb zzbVar, String str, long j) {
        this.f16552c = zzbVar;
        this.f16550a = str;
        this.f16551b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb.m1888a(this.f16552c, this.f16550a, this.f16551b);
    }
}
