package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aps.class */
final class aps implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8133a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aps(Activity activity) {
        this.f8133a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f8133a);
    }
}
