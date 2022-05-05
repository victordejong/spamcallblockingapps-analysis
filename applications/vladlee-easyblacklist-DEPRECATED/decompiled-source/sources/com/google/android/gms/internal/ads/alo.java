package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alo.class */
final class alo implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7573a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alo(Activity activity) {
        this.f7573a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f7573a);
    }
}
