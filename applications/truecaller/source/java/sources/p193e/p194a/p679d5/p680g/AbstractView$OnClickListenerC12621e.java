package p193e.p194a.p679d5.p680g;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.AbstractC21187w1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001e\u0010\u0014J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0015\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Le/a/d5/g/e;", "Le/a/d5/g/n;", "Landroid/view/View$OnClickListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", ViewAction.VIEW, "onClick", "(Landroid/view/View;)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "", "OA", "()Z", "QA", "()V", "RA", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "PA", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Le/a/d5/g/l;", "a", "Le/a/d5/g/l;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.e */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/e.class */
public abstract class AbstractView$OnClickListenerC12621e extends AbstractC12635n implements View.OnClickListener {

    /* renamed from: a */
    public AbstractC12633l f36766a;

    /* renamed from: OA */
    public boolean mo22812OA() {
        return false;
    }

    /* renamed from: PA */
    public abstract StartupDialogEvent.Type mo22805PA();

    /* renamed from: QA */
    public void mo22816QA() {
    }

    /* renamed from: RA */
    public void mo22811RA() {
    }

    public void onCancel(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        AbstractC12633l abstractC12633l = this.f36766a;
        if (abstractC12633l != null) {
            ((C12634m) abstractC12633l).m22804a(StartupDialogEvent.Action.Cancelled);
        } else {
            l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            throw null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, ViewAction.VIEW);
        if (view.getId() == 2131362526) {
            AbstractC12633l abstractC12633l = this.f36766a;
            if (abstractC12633l == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            ((C12634m) abstractC12633l).m22804a(StartupDialogEvent.Action.ClickedPositive);
            mo22811RA();
            if (!mo22812OA()) {
                return;
            }
            dismissAllowingStateLoss();
        } else if (view.getId() != 2131362545) {
        } else {
            AbstractC12633l abstractC12633l2 = this.f36766a;
            if (abstractC12633l2 == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            ((C12634m) abstractC12633l2).m22804a(StartupDialogEvent.Action.ClickedNegative);
            mo22816QA();
            dismissAllowingStateLoss();
        }
    }

    public void onCreate(Bundle bundle) {
        AbstractView$OnClickListenerC12621e.super.onCreate(bundle);
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC12633l mo12789B5 = ((AbstractC21187w1) applicationContext).mo10154s().mo12789B5();
            l.d(mo12789B5, "(context.applicationCont….startupDialogAnalytics()");
            this.f36766a = mo12789B5;
            if (mo12789B5 == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            StartupDialogEvent.Type mo22805PA = mo22805PA();
            C12634m c12634m = (C12634m) mo12789B5;
            Objects.requireNonNull(c12634m);
            l.e(mo22805PA, "type");
            c12634m.f36802b = mo22805PA;
            c12634m.f36801a = null;
            c12634m.m22804a(StartupDialogEvent.Action.Shown);
        }
    }
}
