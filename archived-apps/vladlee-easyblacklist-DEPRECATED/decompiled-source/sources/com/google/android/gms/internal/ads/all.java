package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/all.class */
final class all implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7569a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public all(Activity activity) {
        this.f7569a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f7569a);
    }
}
