package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.oc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oc.class */
public final class C2108oc implements zzabw {

    /* renamed from: a */
    private final /* synthetic */ zzbxz f10265a;

    /* renamed from: b */
    private final /* synthetic */ ViewGroup f10266b;

    /* renamed from: c */
    private final /* synthetic */ zzbxj f10267c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2108oc(zzbxj zzbxjVar, zzbxz zzbxzVar, ViewGroup viewGroup) {
        this.f10267c = zzbxjVar;
        this.f10265a = zzbxzVar;
        this.f10266b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void zzc(MotionEvent motionEvent) {
        this.f10265a.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzabw
    public final void zzrd() {
        if (zzbxj.m3860a(this.f10265a, zzbxh.zzfna)) {
            this.f10265a.onClick(this.f10266b);
        }
    }
}
