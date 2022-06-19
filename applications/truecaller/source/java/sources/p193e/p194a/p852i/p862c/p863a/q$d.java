package p193e.p194a.p852i.p862c.p863a;

import android.content.Context;
import android.view.View;
import android.widget.MediaController;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.i.c.a.q$d */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/q$d.class */
public final class q$d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ q f42824a;

    /* renamed from: b */
    public final /* synthetic */ n f42825b;

    public q$d(q qVar, int i, int i2, MediaController mediaController, n nVar) {
        this.f42824a = qVar;
        this.f42825b = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        q qVar = this.f42824a;
        b0 b0Var = this.f42825b;
        int i = q.r;
        Objects.requireNonNull(qVar);
        if (b0Var != null) {
            b0 b0Var2 = b0Var;
            String f = b0Var2.f();
            if (f == null) {
                return;
            }
            if (l.a(f, "truecaller://null")) {
                f = null;
            }
            if (f == null) {
                return;
            }
            Context context = qVar.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            qVar.a(context, f, b0Var.g(), b0Var.i());
            if (qVar.i) {
                return;
            }
            b0Var2.e();
            qVar.i = true;
        }
    }
}
