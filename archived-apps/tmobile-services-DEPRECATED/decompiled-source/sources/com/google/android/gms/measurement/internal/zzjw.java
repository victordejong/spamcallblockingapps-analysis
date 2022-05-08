package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjw.class */
final class zzjw implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ long f9629f;

    /* renamed from: g */
    private final /* synthetic */ zzju f9630g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjw(zzju zzjuVar, long j) {
        this.f9630g = zzjuVar;
        this.f9629f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9630g.m11141I(this.f9629f);
    }
}
