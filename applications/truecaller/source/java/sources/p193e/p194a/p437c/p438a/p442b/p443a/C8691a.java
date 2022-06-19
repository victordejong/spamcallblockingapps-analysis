package p193e.p194a.p437c.p438a.p442b.p443a;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.utils.FeedbackConsentState;
import com.truecaller.insights.utils.FeedbackConsentType;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p442b.p444b.C8761b;
import p193e.p194a.p437c.p438a.p442b.p445c.C8767d;
import p193e.p194a.p437c.p438a.p477g.C9041j;
import p193e.p194a.p437c.p438a.p520r.C9585b;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.s;
import s1.z.b.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� <2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b:\u0010;J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R0\u0010+\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\f\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001d\u00101\u001a\u00020,8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006="}, d2 = {"Le/a/c/a/b/a/a;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/truecaller/insights/utils/FeedbackConsentState;", "d", "Lcom/truecaller/insights/utils/FeedbackConsentState;", "getConsentState", "()Lcom/truecaller/insights/utils/FeedbackConsentState;", "setConsentState", "(Lcom/truecaller/insights/utils/FeedbackConsentState;)V", "consentState", "Le/a/c/e/c;", AbstractC2405c.f7629a, "Le/a/c/e/c;", "OA", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "Lkotlin/Function1;", "", "a", "Ls1/z/b/l;", "getConsentCallback", "()Ls1/z/b/l;", "setConsentCallback", "(Ls1/z/b/l;)V", "consentCallback", "Le/a/c/a/g/j;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/c/a/g/j;", "binding", "Le/a/c/c0/k;", C22021b.f61237c, "Le/a/c/c0/k;", "QA", "()Le/a/c/c0/k;", "setConsentConfig", "(Le/a/c/c0/k;)V", "consentConfig", "<init>", "()V", "h", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.b.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/a.class */
public final class C8691a extends e {

    /* renamed from: g */
    public static final String f26601g;

    /* renamed from: a */
    public l<? super Boolean, s> f26603a;
    @Inject

    /* renamed from: b */
    public AbstractC10024k f26604b;
    @Inject

    /* renamed from: c */
    public AbstractC10060c f26605c;

    /* renamed from: d */
    public FeedbackConsentState f26606d = FeedbackConsentState.NOT_STARTED;

    /* renamed from: e */
    public final ViewBindingProperty f26607e = new C19350a(new C8693b());

    /* renamed from: f */
    public static final /* synthetic */ s1.a.l[] f26600f = {C22128a.m8621g0(C8691a.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetCompleteYourFeedbackBinding;", 0)};

    /* renamed from: h */
    public static final C8694c f26602h = new C8694c(null);

    /* renamed from: e.a.c.a.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/c/a/b/a/a$a.class */
    public static final class View$OnClickListenerC8692a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f26608a;

        /* renamed from: b */
        public final /* synthetic */ Object f26609b;

        public View$OnClickListenerC8692a(int i, Object obj) {
            this.f26608a = i;
            this.f26609b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f26608a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                AbstractC10060c m28114OA = ((C8691a) this.f26609b).m28114OA();
                C8767d c8767d = C8767d.f26756g;
                m28114OA.mo26757a(C8767d.f26751b);
                ((C8691a) this.f26609b).m28112QA().mo26893d();
                C8691a c8691a = (C8691a) this.f26609b;
                c8691a.f26606d = FeedbackConsentState.CONSENT_GIVEN;
                c8691a.dismiss();
                return;
            }
            AbstractC10060c m28114OA2 = ((C8691a) this.f26609b).m28114OA();
            C8767d c8767d2 = C8767d.f26756g;
            m28114OA2.mo26757a(C8767d.f26752c);
            AbstractC10024k m28112QA = ((C8691a) this.f26609b).m28112QA();
            FeedbackConsentType feedbackConsentType = FeedbackConsentType.SEMI_CARD;
            if (C10480a.m25998Y0(m28112QA, feedbackConsentType)) {
                AbstractC10024k m28112QA2 = ((C8691a) this.f26609b).m28112QA();
                FeedbackConsentState feedbackConsentState = FeedbackConsentState.CONSENT_NOT_GIVEN;
                m28112QA2.mo26892e(feedbackConsentType, feedbackConsentState);
                ((C8691a) this.f26609b).f26606d = feedbackConsentState;
            }
            ((C8691a) this.f26609b).dismiss();
        }
    }

    /* renamed from: e.a.c.a.b.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/a$b.class */
    public static final class C8693b extends m implements l<C8691a, C9041j> {
        public C8693b() {
            super(1);
        }

        /* renamed from: d */
        public Object m28111d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.cancelBtn;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.changeSettings;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.complete_feedback_title;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        i = C4078R.C4080id.creative;
                        ImageView imageView = (ImageView) requireView.findViewById(i);
                        if (imageView != null) {
                            i = C4078R.C4080id.okBtn;
                            Button button2 = (Button) requireView.findViewById(i);
                            if (button2 != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
                                i = C4078R.C4080id.subText;
                                TextView textView3 = (TextView) requireView.findViewById(i);
                                if (textView3 != null) {
                                    return new C9041j(constraintLayout, button, textView, textView2, imageView, button2, constraintLayout, textView3);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.b.a.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/a$c.class */
    public static final class C8694c {
        public C8694c(f fVar) {
        }
    }

    static {
        String simpleName = C8691a.class.getSimpleName();
        s1.z.c.l.d(simpleName, "FeedbackConsentDialog::class.java.simpleName");
        f26601g = simpleName;
    }

    /* renamed from: OA */
    public final AbstractC10060c m28114OA() {
        AbstractC10060c abstractC10060c = this.f26605c;
        if (abstractC10060c != null) {
            return abstractC10060c;
        }
        s1.z.c.l.l("analyticsManager");
        throw null;
    }

    /* renamed from: PA */
    public final C9041j m28113PA() {
        return (C9041j) this.f26607e.m34468b(this, f26600f[0]);
    }

    /* renamed from: QA */
    public final AbstractC10024k m28112QA() {
        AbstractC10024k abstractC10024k = this.f26604b;
        if (abstractC10024k != null) {
            return abstractC10024k;
        }
        s1.z.c.l.l("consentConfig");
        throw null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        C8761b.C8763b m28085a = C8761b.m28085a();
        m28085a.f26741a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8761b c8761b = (C8761b) m28085a.m28084a();
        AbstractC10024k mo12766D1 = c8761b.f26740a.mo12766D1();
        Objects.requireNonNull(mo12766D1, "Cannot return null from a non-@Nullable component method");
        this.f26604b = mo12766D1;
        AbstractC10060c mo12429c5 = c8761b.f26740a.mo12429c5();
        Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
        this.f26605c = mo12429c5;
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_complete_your_feedback, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8691a.super.onDismiss(dialogInterface);
        AbstractC10024k abstractC10024k = this.f26604b;
        if (abstractC10024k == null) {
            s1.z.c.l.l("consentConfig");
            throw null;
        }
        FeedbackConsentType feedbackConsentType = FeedbackConsentType.SEMI_CARD;
        if (!C10480a.m26006W0(abstractC10024k, feedbackConsentType)) {
            AbstractC10024k abstractC10024k2 = this.f26604b;
            if (abstractC10024k2 == null) {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
            abstractC10024k2.mo26892e(feedbackConsentType, FeedbackConsentState.CONSENT_SHOWN);
        }
        l<? super Boolean, s> lVar = this.f26603a;
        if (lVar == null) {
            return;
        }
        s sVar = (s) lVar.d(Boolean.valueOf(this.f26606d == FeedbackConsentState.CONSENT_GIVEN));
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8691a.super.onViewCreated(view, bundle);
        AbstractC10060c abstractC10060c = this.f26605c;
        if (abstractC10060c == null) {
            s1.z.c.l.l("analyticsManager");
            throw null;
        }
        C8767d c8767d = C8767d.f26756g;
        abstractC10060c.mo26757a(C8767d.f26750a);
        TextView textView = m28113PA().f27512c;
        s1.z.c.l.d(textView, "binding.subText");
        int i = C4078R.string.complete_feedback_subtext_prefix;
        C8701c c8701c = new C8701c(this);
        s1.z.c.l.e(textView, ViewAction.VIEW);
        s1.z.c.l.e(c8701c, "onClick");
        Context context = textView.getContext();
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        String string = context.getString(i);
        s1.z.c.l.d(string, "getString(prefixRes)");
        String string2 = context.getString(C4078R.string.learn_more);
        s1.z.c.l.d(string2, "getString(R.string.learn_more)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) string);
        spannableStringBuilder.append((CharSequence) (' ' + string2));
        s1.z.c.l.d(context, "this");
        spannableStringBuilder.setSpan(new C9585b(context, c8701c), string.length() + 1, string2.length() + string.length() + 1, 33);
        textView.setText(spannableStringBuilder);
        m28113PA().f27510a.setOnClickListener(new View$OnClickListenerC8692a(0, this));
        m28113PA().f27511b.setOnClickListener(new View$OnClickListenerC8692a(1, this));
    }
}
