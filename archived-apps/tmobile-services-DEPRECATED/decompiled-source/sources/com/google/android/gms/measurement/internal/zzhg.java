package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhg.class */
public final class zzhg implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9406f;

    /* renamed from: g */
    private final /* synthetic */ String f9407g;

    /* renamed from: h */
    private final /* synthetic */ Object f9408h;

    /* renamed from: i */
    private final /* synthetic */ long f9409i;

    /* renamed from: j */
    private final /* synthetic */ zzgy f9410j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhg(zzgy zzgyVar, String str, String str2, Object obj, long j) {
        this.f9410j = zzgyVar;
        this.f9406f = str;
        this.f9407g = str2;
        this.f9408h = obj;
        this.f9409i = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9410j.m11270a0(this.f9406f, this.f9407g, this.f9408h, this.f9409i);
    }
}
