package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amm.class */
public final class amm implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzgw f7681a;

    /* renamed from: b */
    private final /* synthetic */ zzhr f7682b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public amm(zzhr zzhrVar, zzgw zzgwVar) {
        this.f7682b = zzhrVar;
        this.f7681a = zzgwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar;
        zzhoVar = this.f7682b.f14850b;
        zzhoVar.zzb(this.f7681a);
    }
}
