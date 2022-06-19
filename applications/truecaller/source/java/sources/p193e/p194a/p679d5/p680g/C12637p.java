package p193e.p194a.p679d5.p680g;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import com.truecaller.videocallerid.p187ui.view.PreviewVideoType;
import com.truecaller.videocallerid.p187ui.view.PreviewView;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p947k.AbstractC16111h;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010\u001dJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"R\u001d\u0010(\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8��@��X\u0081.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006:"}, d2 = {"Le/a/d5/g/p;", "Le/a/d5/g/o;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "QA", "()Ljava/lang/Integer;", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "bB", "()V", "aB", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/truecaller/videocallerid/ui/view/PreviewView;", "m", "Ls1/g;", "getPreviewView", "()Lcom/truecaller/videocallerid/ui/view/PreviewView;", "previewView", "Le/a/k/h;", "l", "Le/a/k/h;", "getVideoCallerId$truecaller_googlePlayRelease", "()Le/a/k/h;", "setVideoCallerId$truecaller_googlePlayRelease", "(Le/a/k/h;)V", "videoCallerId", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "k", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "setAnalyticsType", "(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V", "analyticsType", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.p */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/p.class */
public final class C12637p extends AbstractC12636o {
    @Inject

    /* renamed from: l */
    public AbstractC16111h f36806l;

    /* renamed from: k */
    public StartupDialogEvent.Type f36805k = StartupDialogEvent.Type.WhatsNewVideoCallerId;

    /* renamed from: m */
    public final g f36807m = C19286f.m13659t(this, 2131365233);

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        return 2131231057;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getString(2131889589);
        l.d(string, "getString(R.string.not_now)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString(2131887875);
        l.d(string, "getString(R.string.StrContinue)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        String string = getString((int) C2752R.string.whats_new_video_caller_id_subtitle);
        l.d(string, "getString(R.string.whats…video_caller_id_subtitle)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString(2131890412, new Object[]{getString(2131890282)});
        l.d(string, "getString(R.string.whats….string.video_caller_id))");
        return string;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        super.mo8997aB();
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        super.mo8996bB();
        Context context = getContext();
        if (context != null) {
            AbstractC16111h abstractC16111h = this.f36806l;
            if (abstractC16111h == null) {
                l.l("videoCallerId");
                throw null;
            } else {
                l.d(context, "it");
                abstractC16111h.mo17822x(context, OnboardingContext.WHATS_NEW);
            }
        }
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    /* renamed from: cB */
    public StartupDialogEvent.Type mo16324cB() {
        return this.f36805k;
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C12637p.super.onAttach(context);
        AbstractC16444k2.f46188a.m17389a().mo11375r(this);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.layout_tcx_video_caller_id_whats_new_dialog, viewGroup, false);
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        super.onDismiss(dialogInterface);
        DialogInterface.OnDismissListener activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof DialogInterface.OnDismissListener)) {
            lVar = null;
        }
        DialogInterface.OnDismissListener onDismissListener = lVar;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        PreviewView previewView = (PreviewView) this.f36807m.getValue();
        AbstractC16111h abstractC16111h = this.f36806l;
        if (abstractC16111h != null) {
            previewView.m34436f1(abstractC16111h.mo17861G(), PreviewVideoType.StockVideo, null);
        } else {
            l.l("videoCallerId");
            throw null;
        }
    }
}
