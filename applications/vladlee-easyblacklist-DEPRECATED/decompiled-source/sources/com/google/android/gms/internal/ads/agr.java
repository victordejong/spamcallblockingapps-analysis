package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agr.class */
final class agr implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ MotionEvent f7339a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public agr(MotionEvent motionEvent) {
        this.f7339a = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdc zzdcVar;
        zzdcVar = zzdi.f14295s;
        zzdcVar.zza(this.f7339a);
    }
}
