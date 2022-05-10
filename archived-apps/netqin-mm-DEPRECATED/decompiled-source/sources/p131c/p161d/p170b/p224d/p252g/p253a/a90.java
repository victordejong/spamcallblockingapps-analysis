package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzer;
/* renamed from: c.d.b.d.g.a.a90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a90.class */
public final class a90 implements zzer {

    /* renamed from: a */
    public final /* synthetic */ Activity f12073a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f12074b;

    public a90(d70 d70Var, Activity activity, Bundle bundle) {
        this.f12073a = activity;
        this.f12074b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzer
    /* renamed from: a */
    public final void mo12180a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f12073a, this.f12074b);
    }
}
