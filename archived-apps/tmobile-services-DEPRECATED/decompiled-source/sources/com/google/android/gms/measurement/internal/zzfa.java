package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfa.class */
final class zzfa implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ boolean f9175f;

    /* renamed from: g */
    private final /* synthetic */ zzfb f9176g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfa(zzfb zzfbVar, boolean z) {
        this.f9176g = zzfbVar;
        this.f9175f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzkiVar = this.f9176g.f9177a;
        zzkiVar.m11108D(this.f9175f);
    }
}
