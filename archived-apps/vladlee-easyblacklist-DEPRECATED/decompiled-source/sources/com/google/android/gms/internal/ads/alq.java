package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alq.class */
final class alq implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7575a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f7576b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alq(Activity activity, Bundle bundle) {
        this.f7575a = activity;
        this.f7576b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f7575a, this.f7576b);
    }
}
