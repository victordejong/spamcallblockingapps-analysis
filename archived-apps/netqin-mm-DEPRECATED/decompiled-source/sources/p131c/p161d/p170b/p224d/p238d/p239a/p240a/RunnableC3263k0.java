package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zal;
import com.google.android.gms.common.internal.Preconditions;
/* renamed from: c.d.b.d.d.a.a.k0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/k0.class */
public final class RunnableC3263k0 implements Runnable {

    /* renamed from: a */
    public final C3259i0 f11959a;

    /* renamed from: b */
    public final /* synthetic */ zal f11960b;

    public RunnableC3263k0(zal zalVar, C3259i0 i0Var) {
        this.f11960b = zalVar;
        this.f11959a = i0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f11960b.f23291b) {
            ConnectionResult b = this.f11959a.m27299b();
            if (b.m17831v()) {
                zal zalVar = this.f11960b;
                LifecycleFragment lifecycleFragment = zalVar.f23157a;
                Activity a = zalVar.m17628a();
                PendingIntent u = b.m17832u();
                Preconditions.m17288a(u);
                lifecycleFragment.startActivityForResult(GoogleApiActivity.m17762a(a, u, this.f11959a.m27300a(), false), 1);
            } else if (this.f11960b.f23294e.mo17800c(b.m17834f())) {
                zal zalVar2 = this.f11960b;
                zalVar2.f23294e.m17822a(zalVar2.m17628a(), this.f11960b.f23157a, b.m17834f(), 2, this.f11960b);
            } else if (b.m17834f() == 18) {
                Dialog a2 = GoogleApiAvailability.m17823a(this.f11960b.m17628a(), this.f11960b);
                zal zalVar3 = this.f11960b;
                zalVar3.f23294e.m17817a(zalVar3.m17628a().getApplicationContext(), new C3261j0(this, a2));
            } else {
                this.f11960b.mo17457a(b, this.f11959a.m27300a());
            }
        }
    }
}
