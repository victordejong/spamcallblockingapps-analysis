package p131c.p135b.p136a.p148e;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
/* renamed from: c.b.a.e.b */
/* loaded from: classes-dex2jar.jar:c/b/a/e/b.class */
public class C2240b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b */
    public WeakReference<Activity> f8416b;

    /* renamed from: a */
    public final List<AbstractC2381a> f8415a = Collections.synchronizedList(new ArrayList());

    /* renamed from: c */
    public WeakReference<Activity> f8417c = new WeakReference<>(null);

    public C2240b(Context context) {
        this.f8416b = new WeakReference<>(null);
        if (context instanceof Activity) {
            this.f8416b = new WeakReference<>((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
    }

    /* renamed from: a */
    public Activity m30676a() {
        return this.f8416b.get();
    }

    /* renamed from: a */
    public void m30675a(AbstractC2381a aVar) {
        this.f8415a.add(aVar);
    }

    /* renamed from: b */
    public Activity m30674b() {
        return this.f8417c.get();
    }

    /* renamed from: b */
    public void m30673b(AbstractC2381a aVar) {
        this.f8415a.remove(aVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivityCreated(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivityDestroyed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f8417c = new WeakReference<>(null);
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.f8416b = weakReference;
        this.f8417c = weakReference;
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivityResumed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivitySaveInstanceState(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivityStarted(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        for (AbstractC2381a aVar : new ArrayList(this.f8415a)) {
            aVar.onActivityStopped(activity);
        }
    }
}
