package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hh.class */
public final class C2835hh extends AbstractC2773f {

    /* renamed from: a */
    private final /* synthetic */ zzke f17018a;

    /* renamed from: b */
    private final /* synthetic */ zzka f17019b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2835hh(zzka zzkaVar, AbstractC2763eq eqVar, zzke zzkeVar) {
        super(eqVar);
        this.f17019b = zzkaVar;
        this.f17018a = zzkeVar;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2773f
    /* renamed from: a */
    public final void mo2026a() {
        this.f17019b.zzf();
        this.f17019b.zzr().zzx().zza("Starting upload from DelayedRunnable");
        this.f17018a.m1696c();
    }
}
