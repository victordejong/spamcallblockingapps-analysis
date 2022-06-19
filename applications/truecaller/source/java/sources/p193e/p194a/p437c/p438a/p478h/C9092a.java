package p193e.p194a.p437c.p438a.p478h;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.utils.FeedbackConsentState;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9038i;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.a.l;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018�� '2\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b%\u0010&J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006)"}, d2 = {"Le/a/c/a/h/a;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/g/i;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/c/a/g/i;", "binding", "Le/a/c/e/c;", "f", "Le/a/c/e/c;", "getInsightsAnalyticsManager", "()Le/a/c/e/c;", "setInsightsAnalyticsManager", "(Le/a/c/e/c;)V", "insightsAnalyticsManager", "Le/a/c/c0/o;", "e", "Le/a/c/c0/o;", "getInsightConfig", "()Le/a/c/c0/o;", "setInsightConfig", "(Le/a/c/c0/o;)V", "insightConfig", "<init>", "()V", "j", C22021b.f61237c, "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.h.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/h/a.class */
public final class C9092a extends AbstractC9104f {

    /* renamed from: i */
    public static final String f27755i;
    @Inject

    /* renamed from: e */
    public AbstractC10028o f27757e;
    @Inject

    /* renamed from: f */
    public AbstractC10060c f27758f;

    /* renamed from: g */
    public final ViewBindingProperty f27759g = new C19350a(new C9093a());

    /* renamed from: h */
    public static final /* synthetic */ l[] f27754h = {C22128a.m8621g0(C9092a.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetAutoHideTransactionsBinding;", 0)};

    /* renamed from: j */
    public static final C9094b f27756j = new C9094b(null);

    /* renamed from: e.a.c.a.h.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/a$a.class */
    public static final class C9093a extends m implements s1.z.b.l<C9092a, C9038i> {
        public C9093a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27884d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.autoHideConfirmButton;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.autoHideNo;
                RadioButton radioButton = (RadioButton) requireView.findViewById(i);
                if (radioButton != null) {
                    i = C4078R.C4080id.autoHideRadioGroup;
                    RadioGroup radioGroup = (RadioGroup) requireView.findViewById(i);
                    if (radioGroup != null) {
                        i = C4078R.C4080id.autoHideTitle;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            i = C4078R.C4080id.autoHideYes;
                            RadioButton radioButton2 = (RadioButton) requireView.findViewById(i);
                            if (radioButton2 != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
                                return new C9038i(constraintLayout, button, radioButton, radioGroup, textView, radioButton2, constraintLayout);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.h.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/a$b.class */
    public static final class C9094b {
        public C9094b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.h.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/h/a$c.class */
    public static final class View$OnClickListenerC9095c implements View.OnClickListener {
        public View$OnClickListenerC9095c() {
            C9092a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C9092a c9092a = C9092a.this;
            l[] lVarArr = C9092a.f27754h;
            RadioGroup radioGroup = c9092a.m27885QA().f27502b;
            s1.z.c.l.d(radioGroup, "binding.autoHideRadioGroup");
            boolean z = radioGroup.getCheckedRadioButtonId() == C4078R.C4080id.autoHideYes;
            AbstractC10060c abstractC10060c = C9092a.this.f27758f;
            if (abstractC10060c == null) {
                s1.z.c.l.l("insightsAnalyticsManager");
                throw null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            s1.z.c.l.e("", "feature");
            s1.z.c.l.e("", "eventCategory");
            s1.z.c.l.e("", "eventInfo");
            s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
            s1.z.c.l.e("", "actionType");
            s1.z.c.l.e("", "actionInfo");
            s1.z.c.l.e(linkedHashMap, "propertyMap");
            s1.z.c.l.e("hide_transactions", "<set-?>");
            s1.z.c.l.e("auto_hide_bottom_sheet", "<set-?>");
            s1.z.c.l.e("click", "<set-?>");
            s1.z.c.l.e("insights_smart_feed", "<set-?>");
            String str = z ? "yes" : "no";
            s1.z.c.l.e(str, "<set-?>");
            abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("hide_transactions", "auto_hide_bottom_sheet", "", "insights_smart_feed", "click", str, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            AbstractC10028o abstractC10028o = C9092a.this.f27757e;
            if (abstractC10028o == null) {
                s1.z.c.l.l("insightConfig");
                throw null;
            }
            abstractC10028o.mo26823q(z);
            C9092a.this.dismiss();
        }
    }

    static {
        String simpleName = C9092a.class.getSimpleName();
        s1.z.c.l.d(simpleName, "AutoHideTransactionsDialog::class.java.simpleName");
        f27755i = simpleName;
    }

    public C9092a() {
        FeedbackConsentState feedbackConsentState = FeedbackConsentState.NOT_STARTED;
    }

    /* renamed from: QA */
    public final C9038i m27885QA() {
        return (C9038i) this.f27759g.m34468b(this, f27754h[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_auto_hide_transactions, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9092a.super.onViewCreated(view, bundle);
        AbstractC10060c abstractC10060c = this.f27758f;
        if (abstractC10060c == null) {
            s1.z.c.l.l("insightsAnalyticsManager");
            throw null;
        }
        boolean z = true;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("", "feature");
        s1.z.c.l.e("", "eventCategory");
        s1.z.c.l.e("", "eventInfo");
        s1.z.c.l.e("", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e("", "actionType");
        s1.z.c.l.e("", "actionInfo");
        s1.z.c.l.e(linkedHashMap, "propertyMap");
        s1.z.c.l.e("hide_transactions", "<set-?>");
        s1.z.c.l.e("auto_hide_bottom_sheet", "<set-?>");
        s1.z.c.l.e(ViewAction.VIEW, "<set-?>");
        s1.z.c.l.e("insights_smart_feed", "<set-?>");
        if ("hide_transactions".length() <= 0) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("hide_transactions", "auto_hide_bottom_sheet", "", "insights_smart_feed", ViewAction.VIEW, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        AbstractC10028o abstractC10028o = this.f27757e;
        if (abstractC10028o == null) {
            s1.z.c.l.l("insightConfig");
            throw null;
        }
        if (abstractC10028o.mo26834k0()) {
            m27885QA().f27502b.check(C4078R.C4080id.autoHideYes);
        } else {
            m27885QA().f27502b.check(C4078R.C4080id.autoHideNo);
        }
        m27885QA().f27501a.setOnClickListener(new View$OnClickListenerC9095c());
    }
}
