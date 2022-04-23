package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzdq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/d.class */
public final class View$OnTouchListenerC1546d implements View.OnTouchListener {

    /* renamed from: a */
    private final /* synthetic */ zzl f5904a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnTouchListenerC1546d(zzl zzlVar) {
        this.f5904a = zzlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzdq zzdqVar;
        zzdq zzdqVar2;
        zzdqVar = this.f5904a.f5967h;
        if (zzdqVar == null) {
            return false;
        }
        zzdqVar2 = this.f5904a.f5967h;
        zzdqVar2.zza(motionEvent);
        return false;
    }
}
