package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import com.google.android.gms.internal.ads.zzrb;
/* renamed from: c.d.b.d.g.a.uf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/uf0.class */
public final class uf0 implements zzrb {

    /* renamed from: a */
    public final /* synthetic */ Activity f15639a;

    public uf0(nf0 nf0Var, Activity activity) {
        this.f15639a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzrb
    /* renamed from: a */
    public final void mo11533a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f15639a);
    }
}
