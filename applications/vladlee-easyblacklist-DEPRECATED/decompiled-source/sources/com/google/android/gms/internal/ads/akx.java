package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akx.class */
final class akx implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7554a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f7555b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public akx(Activity activity, Bundle bundle) {
        this.f7554a = activity;
        this.f7555b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f7554a, this.f7555b);
    }
}
