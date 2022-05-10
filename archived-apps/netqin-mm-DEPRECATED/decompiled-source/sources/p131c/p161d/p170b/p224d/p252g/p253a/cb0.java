package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import com.google.android.gms.internal.ads.zzer;
/* renamed from: c.d.b.d.g.a.cb0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cb0.class */
public final class cb0 implements zzer {

    /* renamed from: a */
    public final /* synthetic */ Activity f12542a;

    public cb0(d70 d70Var, Activity activity) {
        this.f12542a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzer
    /* renamed from: a */
    public final void mo12180a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f12542a);
    }
}
