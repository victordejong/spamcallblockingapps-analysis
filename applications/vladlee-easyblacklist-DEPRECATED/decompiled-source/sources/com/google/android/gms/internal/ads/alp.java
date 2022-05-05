package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alp.class */
final class alp implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7574a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alp(Activity activity) {
        this.f7574a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f7574a);
    }
}
