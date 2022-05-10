package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.zzb;
/* renamed from: c.d.b.d.d.a.a.t0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/t0.class */
public final class RunnableC3281t0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LifecycleCallback f11992a;

    /* renamed from: b */
    public final /* synthetic */ String f11993b;

    /* renamed from: c */
    public final /* synthetic */ zzb f11994c;

    public RunnableC3281t0(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f11994c = zzbVar;
        this.f11992a = lifecycleCallback;
        this.f11993b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i = this.f11994c.f23304b;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f11992a;
            bundle = this.f11994c.f23305c;
            if (bundle != null) {
                bundle3 = this.f11994c.f23305c;
                bundle2 = bundle3.getBundle(this.f11993b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo17473a(bundle2);
        }
        i2 = this.f11994c.f23304b;
        if (i2 >= 2) {
            this.f11992a.mo17455d();
        }
        i3 = this.f11994c.f23304b;
        if (i3 >= 3) {
            this.f11992a.mo17456c();
        }
        i4 = this.f11994c.f23304b;
        if (i4 >= 4) {
            this.f11992a.mo17454e();
        }
        i5 = this.f11994c.f23304b;
        if (i5 >= 5) {
            this.f11992a.mo17510b();
        }
    }
}
