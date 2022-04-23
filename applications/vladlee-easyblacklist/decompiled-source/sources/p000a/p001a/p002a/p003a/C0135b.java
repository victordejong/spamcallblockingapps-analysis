package p000a.p001a.p002a.p003a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import p000a.p001a.p002a.p003a.C0000a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.b */
/* loaded from: classes-dex2jar.jar:a/a/a/a/b.class */
public final class C0135b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    final /* synthetic */ C0000a.AbstractC0002b f304a;

    /* renamed from: b */
    final /* synthetic */ C0000a.C0001a f305b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0135b(C0000a.C0001a aVar, C0000a.AbstractC0002b bVar) {
        this.f305b = aVar;
        this.f304a = bVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f304a.onActivityCreated(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f304a.onActivityDestroyed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f304a.onActivityPaused(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f304a.onActivityResumed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f304a.onActivitySaveInstanceState(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f304a.onActivityStarted(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f304a.onActivityStopped(activity);
    }
}
