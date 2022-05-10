package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzrb;
/* renamed from: c.d.b.d.g.a.sf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/sf0.class */
public final class sf0 implements zzrb {

    /* renamed from: a */
    public final /* synthetic */ Activity f15302a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f15303b;

    public sf0(nf0 nf0Var, Activity activity, Bundle bundle) {
        this.f15302a = activity;
        this.f15303b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzrb
    /* renamed from: a */
    public final void mo11533a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f15302a, this.f15303b);
    }
}
