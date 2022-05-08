package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aml.class */
public final class aml implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzit f7679a;

    /* renamed from: b */
    private final /* synthetic */ zzhr f7680b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aml(zzhr zzhrVar, zzit zzitVar) {
        this.f7680b = zzhrVar;
        this.f7679a = zzitVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar;
        zzhoVar = this.f7680b.f14850b;
        zzhoVar.zza(this.f7679a);
    }
}
