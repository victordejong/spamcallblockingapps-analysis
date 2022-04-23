package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alk.class */
final class alk implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7568a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alk(Activity activity) {
        this.f7568a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f7568a);
    }
}
