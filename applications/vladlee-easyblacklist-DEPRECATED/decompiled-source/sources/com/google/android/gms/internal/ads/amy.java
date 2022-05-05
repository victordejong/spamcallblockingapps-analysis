package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amy.class */
public final class amy implements zzic {

    /* renamed from: a */
    private final /* synthetic */ zzij f7728a;

    private amy(zzij zzijVar) {
        this.f7728a = zzijVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ amy(zzij zzijVar, byte b) {
        this(zzijVar);
    }

    @Override // com.google.android.gms.internal.ads.zzic
    public final void zzc(int i, long j, long j2) {
        zzhr zzhrVar;
        zzhrVar = this.f7728a.f14914b;
        zzhrVar.zzb(i, j, j2);
        zzij.m3229i();
    }

    @Override // com.google.android.gms.internal.ads.zzic
    public final void zzed() {
        zzij.m3230h();
        this.f7728a.f14922j = true;
    }

    @Override // com.google.android.gms.internal.ads.zzic
    public final void zzr(int i) {
        zzhr zzhrVar;
        zzhrVar = this.f7728a.f14914b;
        zzhrVar.zzs(i);
        zzij.m3231g();
    }
}
