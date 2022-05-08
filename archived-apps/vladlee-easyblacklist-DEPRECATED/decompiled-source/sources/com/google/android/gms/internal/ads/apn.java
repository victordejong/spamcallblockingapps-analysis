package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apn.class */
final class apn implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8125a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f8126b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apn(Activity activity, Bundle bundle) {
        this.f8125a = activity;
        this.f8126b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f8125a, this.f8126b);
    }
}
