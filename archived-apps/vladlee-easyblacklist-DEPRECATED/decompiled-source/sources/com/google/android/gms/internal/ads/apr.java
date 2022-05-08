package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apr.class */
final class apr implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8132a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apr(Activity activity) {
        this.f8132a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f8132a);
    }
}
