package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zze;
/* renamed from: com.google.android.gms.internal.ads.ux */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ux.class */
final class C2291ux implements zze {

    /* renamed from: a */
    private final /* synthetic */ zzbtw f10605a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2291ux(zzbtw zzbtwVar) {
        this.f10605a = zzbtwVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzg(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjr() {
        this.f10605a.zzadj().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjs() {
        this.f10605a.zzadk().onAdImpression();
        this.f10605a.zzadl().zzaia();
    }
}
