package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzi;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.px */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/px.class */
public final class C2156px implements zzi {

    /* renamed from: a */
    private final /* synthetic */ zzcbn f10350a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2156px(zzcbn zzcbnVar) {
        this.f10350a = zzcbnVar;
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjv() {
        zzbqp zzbqpVar;
        zzbqpVar = this.f10350a.f12882h;
        zzbqpVar.onPause();
    }

    @Override // com.google.android.gms.ads.internal.zzi
    public final void zzjw() {
        zzbqp zzbqpVar;
        zzbqpVar = this.f10350a.f12882h;
        zzbqpVar.onResume();
    }
}
