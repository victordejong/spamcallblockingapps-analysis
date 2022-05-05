package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apt.class */
final class apt implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8134a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apt(Activity activity) {
        this.f8134a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f8134a);
    }
}
