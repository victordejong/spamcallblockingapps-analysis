package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aln.class */
final class aln implements zzef {

    /* renamed from: a */
    private final /* synthetic */ Activity f7572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aln(Activity activity) {
        this.f7572a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzef
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f7572a);
    }
}
