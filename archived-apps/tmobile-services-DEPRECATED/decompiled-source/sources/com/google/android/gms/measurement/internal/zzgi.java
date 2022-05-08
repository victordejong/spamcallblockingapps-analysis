package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgi.class */
final class zzgi implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzar f9338f;

    /* renamed from: g */
    private final /* synthetic */ String f9339g;

    /* renamed from: h */
    private final /* synthetic */ zzfw f9340h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgi(zzfw zzfwVar, zzar zzarVar, String str) {
        this.f9340h = zzfwVar;
        this.f9338f = zzarVar;
        this.f9339g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9340h.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9340h.f9302a;
        zzkiVar2.m11051r(this.f9338f, this.f9339g);
    }
}
