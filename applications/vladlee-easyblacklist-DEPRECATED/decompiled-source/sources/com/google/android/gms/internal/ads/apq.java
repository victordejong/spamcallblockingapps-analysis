package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apq.class */
final class apq implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8131a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apq(Activity activity) {
        this.f8131a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f8131a);
    }
}
