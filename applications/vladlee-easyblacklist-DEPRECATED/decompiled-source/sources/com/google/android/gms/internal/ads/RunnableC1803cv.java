package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.zzq;
/* renamed from: com.google.android.gms.internal.ads.cv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cv.class */
final class RunnableC1803cv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AdOverlayInfoParcel f8361a;

    /* renamed from: b */
    private final /* synthetic */ zzany f8362b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1803cv(zzany zzanyVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f8362b = zzanyVar;
        this.f8361a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzq.zzkp();
        activity = this.f8362b.f11074a;
        zzn.zza(activity, this.f8361a, true);
    }
}
