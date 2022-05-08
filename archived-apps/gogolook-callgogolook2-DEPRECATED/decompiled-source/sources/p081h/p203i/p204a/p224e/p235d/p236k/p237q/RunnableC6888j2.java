package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.Dialog;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import p081h.p203i.p204a.p224e.p235d.C6790c;
/* renamed from: h.i.a.e.d.k.q.j2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/j2.class */
public final class RunnableC6888j2 implements Runnable {

    /* renamed from: a */
    public final C6884i2 f16871a;

    /* renamed from: b */
    public final /* synthetic */ AbstractDialogInterface$OnCancelListenerC6877h2 f16872b;

    public RunnableC6888j2(AbstractDialogInterface$OnCancelListenerC6877h2 h2Var, C6884i2 i2Var) {
        this.f16872b = h2Var;
        this.f16871a = i2Var;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f16872b.f16855b) {
            ConnectionResult a = this.f16871a.m21664a();
            if (a.m32002J()) {
                AbstractDialogInterface$OnCancelListenerC6877h2 h2Var = this.f16872b;
                h2Var.f6535a.startActivityForResult(GoogleApiActivity.m31995a(h2Var.m31972a(), a.m32003I(), this.f16871a.m21663b(), false), 1);
            } else if (this.f16872b.f16858e.mo21884c(a.m32000c())) {
                AbstractDialogInterface$OnCancelListenerC6877h2 h2Var2 = this.f16872b;
                h2Var2.f16858e.m21906a(h2Var2.m31972a(), this.f16872b.f6535a, a.m32000c(), 2, this.f16872b);
            } else if (a.m32000c() == 18) {
                Dialog a2 = C6790c.m21907a(this.f16872b.m31972a(), this.f16872b);
                AbstractDialogInterface$OnCancelListenerC6877h2 h2Var3 = this.f16872b;
                h2Var3.f16858e.m21901a(h2Var3.m31972a().getApplicationContext(), new C6892k2(this, a2));
            } else {
                this.f16872b.mo21527a(a, this.f16871a.m21663b());
            }
        }
    }
}
