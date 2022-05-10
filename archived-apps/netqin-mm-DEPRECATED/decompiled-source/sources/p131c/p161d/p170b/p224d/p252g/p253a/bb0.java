package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import com.google.android.gms.internal.ads.zzer;
/* renamed from: c.d.b.d.g.a.bb0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/bb0.class */
public final class bb0 implements zzer {

    /* renamed from: a */
    public final /* synthetic */ Activity f12369a;

    public bb0(d70 d70Var, Activity activity) {
        this.f12369a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzer
    /* renamed from: a */
    public final void mo12180a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f12369a);
    }
}
