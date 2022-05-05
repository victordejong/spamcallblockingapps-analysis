package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aph.class */
public final class aph implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f8111a;

    /* renamed from: b */
    private final /* synthetic */ int f8112b;

    /* renamed from: c */
    private final /* synthetic */ int f8113c;

    /* renamed from: d */
    private final /* synthetic */ float f8114d;

    /* renamed from: e */
    private final /* synthetic */ zzpg f8115e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aph(zzpg zzpgVar, int i, int i2, int i3, float f) {
        this.f8115e = zzpgVar;
        this.f8111a = i;
        this.f8112b = i2;
        this.f8113c = i3;
        this.f8114d = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        zzpdVar = this.f8115e.f15314b;
        zzpdVar.zza(this.f8111a, this.f8112b, this.f8113c, this.f8114d);
    }
}
