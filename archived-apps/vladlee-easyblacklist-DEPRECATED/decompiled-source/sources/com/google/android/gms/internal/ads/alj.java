package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alj.class */
final class alj implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Application f7565a;

    /* renamed from: b */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f7566b;

    /* renamed from: c */
    private boolean f7567c = false;

    public alj(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f7566b = new WeakReference<>(activityLifecycleCallbacks);
        this.f7565a = application;
    }

    /* renamed from: a */
    private final void m4944a(zzef zzefVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f7566b.get();
            if (activityLifecycleCallbacks != null) {
                zzefVar.zza(activityLifecycleCallbacks);
            } else if (!this.f7567c) {
                this.f7565a.unregisterActivityLifecycleCallbacks(this);
                this.f7567c = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m4944a(new akx(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m4944a(new alp(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m4944a(new alo(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m4944a(new alk(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m4944a(new alq(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m4944a(new all(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m4944a(new aln(activity));
    }
}
