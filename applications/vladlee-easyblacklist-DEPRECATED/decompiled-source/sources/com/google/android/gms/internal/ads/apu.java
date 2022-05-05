package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apu.class */
final class apu implements zzqd {

    /* renamed from: a */
    private final /* synthetic */ Activity f8135a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f8136b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apu(Activity activity, Bundle bundle) {
        this.f8135a = activity;
        this.f8136b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzqd
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f8135a, this.f8136b);
    }
}
