package p193e.p194a.p717f;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.truecaller.p183ui.TruecallerInit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/d.class */
public final class C13709d implements Application.ActivityLifecycleCallbacks, i0 {

    /* renamed from: a */
    public int f39693a;

    /* renamed from: b */
    public final f f39694b;

    /* renamed from: c */
    public final a<AbstractC13706b> f39695c;

    @Inject
    public C13709d(@Named("UI") f fVar, a<AbstractC13706b> aVar) {
        l.e(fVar, "uiContext");
        l.e(aVar, "inCallUI");
        this.f39694b = fVar;
        this.f39695c = aVar;
    }

    public f getCoroutineContext() {
        return this.f39694b;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        l.e(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        l.e(activity, "activity");
        int i = this.f39693a + 1;
        this.f39693a = i;
        if (i != 1 || !(activity instanceof TruecallerInit) || !((AbstractC13706b) this.f39695c.get()).mo21266c()) {
            return;
        }
        d.w2(this, (f) null, (j0) null, new C13708c(activity, null), 3, (Object) null);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        l.e(activity, "activity");
        this.f39693a--;
    }
}
