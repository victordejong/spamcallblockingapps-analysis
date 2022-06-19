package p193e.p194a.p679d5.p680g;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p372b0.p373a.p374a.AbstractC8213a;
import p193e.p194a.p679d5.AbstractC12606a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Le/a/d5/g/o;", "Le/a/b0/a/a/a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "bB", "()V", "aB", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDismiss", "Le/a/d5/g/l;", "j", "Le/a/d5/g/l;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.o */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/o.class */
public abstract class AbstractC12636o extends AbstractC8213a {

    /* renamed from: j */
    public AbstractC12633l f36804j;

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        if (mo16324cB() != null) {
            AbstractC12633l abstractC12633l = this.f36804j;
            if (abstractC12633l != null) {
                ((C12634m) abstractC12633l).m22804a(StartupDialogEvent.Action.ClickedNegative);
            } else {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        if (mo16324cB() != null) {
            AbstractC12633l abstractC12633l = this.f36804j;
            if (abstractC12633l != null) {
                ((C12634m) abstractC12633l).m22804a(StartupDialogEvent.Action.ClickedPositive);
            } else {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
        }
    }

    /* renamed from: cB */
    public abstract StartupDialogEvent.Type mo16324cB();

    public void onCancel(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        if (mo16324cB() != null) {
            AbstractC12633l abstractC12633l = this.f36804j;
            if (abstractC12633l != null) {
                ((C12634m) abstractC12633l).m22804a(StartupDialogEvent.Action.Cancelled);
            } else {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC12633l mo12789B5 = applicationContext.mo10154s().mo12789B5();
        l.d(mo12789B5, "(context?.applicationCon….startupDialogAnalytics()");
        this.f36804j = mo12789B5;
        StartupDialogEvent.Type mo16324cB = mo16324cB();
        if (mo16324cB != null) {
            AbstractC12633l abstractC12633l = this.f36804j;
            if (abstractC12633l == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            C12634m c12634m = (C12634m) abstractC12633l;
            l.e(mo16324cB, "type");
            c12634m.f36802b = mo16324cB;
            c12634m.f36801a = null;
            c12634m.m22804a(StartupDialogEvent.Action.Shown);
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        StartupDialogType startupDialogType;
        StartupDialogDismissReason startupDialogDismissReason;
        l.e(dialogInterface, "dialog");
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("StartupDialogType");
            n3.r.a.l lVar = null;
            if (string != null) {
                l.d(string, "it");
                startupDialogType = StartupDialogType.valueOf(string);
            } else {
                startupDialogType = null;
            }
            String string2 = arguments.getString("StartupDialogDismissReason");
            if (string2 != null) {
                l.d(string2, "it");
                startupDialogDismissReason = StartupDialogDismissReason.valueOf(string2);
            } else {
                startupDialogDismissReason = null;
            }
            if (startupDialogType != null) {
                n3.r.a.l activity = getActivity();
                if (activity instanceof AbstractC12606a) {
                    lVar = activity;
                }
                AbstractC12606a abstractC12606a = lVar;
                if (abstractC12606a != null) {
                    abstractC12606a.mo22833M2(startupDialogType, startupDialogDismissReason);
                }
            }
        }
        AbstractC12636o.super.onDismiss(dialogInterface);
    }
}
