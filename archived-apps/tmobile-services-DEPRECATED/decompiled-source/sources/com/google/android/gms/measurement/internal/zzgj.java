package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgj.class */
final class zzgj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzar f9341f;

    /* renamed from: g */
    private final /* synthetic */ zzn f9342g;

    /* renamed from: h */
    private final /* synthetic */ zzfw f9343h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgj(zzfw zzfwVar, zzar zzarVar, zzn zznVar) {
        this.f9343h = zzfwVar;
        this.f9341f = zzarVar;
        this.f9342g = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzar R0 = this.f9343h.m11339R0(this.f9341f, this.f9342g);
        zzkiVar = this.f9343h.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9343h.f9302a;
        zzkiVar2.m11053q(R0, this.f9342g);
    }
}
