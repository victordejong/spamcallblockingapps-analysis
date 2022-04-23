package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.app */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/app.class */
final class C1743app implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8130a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1743app(Activity activity) {
        this.f8130a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f8130a);
    }
}
