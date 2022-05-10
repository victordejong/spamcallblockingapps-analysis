package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzrb;
/* renamed from: c.d.b.d.g.a.pf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/pf0.class */
public final class pf0 implements zzrb {

    /* renamed from: a */
    public final /* synthetic */ Activity f14540a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f14541b;

    public pf0(nf0 nf0Var, Activity activity, Bundle bundle) {
        this.f14540a = activity;
        this.f14541b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzrb
    /* renamed from: a */
    public final void mo11533a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f14540a, this.f14541b);
    }
}
