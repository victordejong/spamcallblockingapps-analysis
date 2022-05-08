package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgb.class */
final class zzgb implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9315f;

    /* renamed from: g */
    private final /* synthetic */ zzn f9316g;

    /* renamed from: h */
    private final /* synthetic */ zzfw f9317h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgb(zzfw zzfwVar, zzw zzwVar, zzn zznVar) {
        this.f9317h = zzfwVar;
        this.f9315f = zzwVar;
        this.f9316g = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzki zzkiVar3;
        zzkiVar = this.f9317h.f9302a;
        zzkiVar.m11066j0();
        if (this.f9315f.f9778h.m11035B() == null) {
            zzkiVar3 = this.f9317h.f9302a;
            zzkiVar3.m11091U(this.f9315f, this.f9316g);
            return;
        }
        zzkiVar2 = this.f9317h.f9302a;
        zzkiVar2.m11043z(this.f9315f, this.f9316g);
    }
}
