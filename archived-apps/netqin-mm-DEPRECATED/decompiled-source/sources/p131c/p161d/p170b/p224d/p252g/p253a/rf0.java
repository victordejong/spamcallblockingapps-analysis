package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import com.google.android.gms.internal.ads.zzrb;
/* renamed from: c.d.b.d.g.a.rf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/rf0.class */
public final class rf0 implements zzrb {

    /* renamed from: a */
    public final /* synthetic */ Activity f15008a;

    public rf0(nf0 nf0Var, Activity activity) {
        this.f15008a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzrb
    /* renamed from: a */
    public final void mo11533a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f15008a);
    }
}
