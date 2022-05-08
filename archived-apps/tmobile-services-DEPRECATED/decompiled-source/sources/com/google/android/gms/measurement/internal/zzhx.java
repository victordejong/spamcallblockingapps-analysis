package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhx.class */
public final class zzhx implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzad f9461f;

    /* renamed from: g */
    private final /* synthetic */ int f9462g;

    /* renamed from: h */
    private final /* synthetic */ long f9463h;

    /* renamed from: i */
    private final /* synthetic */ boolean f9464i;

    /* renamed from: j */
    private final /* synthetic */ zzgy f9465j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhx(zzgy zzgyVar, zzad zzadVar, int i, long j, boolean z) {
        this.f9465j = zzgyVar;
        this.f9461f = zzadVar;
        this.f9462g = i;
        this.f9463h = j;
        this.f9464i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9465j.m11288I(this.f9461f);
        this.f9465j.m11286K(this.f9461f, this.f9462g, this.f9463h, false, this.f9464i);
    }
}
