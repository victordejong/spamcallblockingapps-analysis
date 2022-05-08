package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzc.class */
public final class zzc implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9015f;

    /* renamed from: g */
    private final /* synthetic */ long f9016g;

    /* renamed from: h */
    private final /* synthetic */ zza f9017h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(zza zzaVar, String str, long j) {
        this.f9017h = zzaVar;
        this.f9015f = str;
        this.f9016g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9017h.m11812D(this.f9015f, this.f9016g);
    }
}
