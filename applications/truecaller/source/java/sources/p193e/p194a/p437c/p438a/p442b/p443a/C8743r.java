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
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import com.truecaller.insights.utils.FeedbackConsentState;
import com.truecaller.insights.utils.FeedbackConsentType;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p442b.p444b.C8761b;
import p193e.p194a.p437c.p438a.p442b.p445c.C8768e;
import p193e.p194a.p437c.p438a.p477g.C9068s;
import p193e.p194a.p437c.p438a.p520r.C9585b;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.a.l;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� H2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\bG\u0010\u0017J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001d\u0010-\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001e\u0010F\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006I"}, d2 = {"Le/a/c/a/b/a/r;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "onCancel", "PA", "()V", "Le/a/c/c0/k;", AbstractC2405c.f7629a, "Le/a/c/c0/k;", "getConsentConfig", "()Le/a/c/c0/k;", "setConsentConfig", "(Le/a/c/c0/k;)V", "consentConfig", "Le/a/c/i/e/c;", C22021b.f61237c, "Le/a/c/i/e/c;", "getInsightsFeedbackManager", "()Le/a/c/i/e/c;", "setInsightsFeedbackManager", "(Le/a/c/i/e/c;)V", "insightsFeedbackManager", "Le/a/c/a/g/s;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/s;", "binding", "", "e", "Ljava/lang/String;", "senderId", "Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "g", "Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "selectedType", "Le/a/c/e/c;", "a", "Le/a/c/e/c;", "getAnalyticsManager", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "", "f", "Z", "isIM", "", "Le/a/c/i/e/a;", "d", "Ljava/util/List;", "messages", "<init>", "k", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.b.a.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/r.class */
public final class C8743r extends e {
    @Inject

    /* renamed from: a */
    public AbstractC10060c f26700a;
    @Inject

    /* renamed from: b */
    public AbstractC10330c f26701b;
    @Inject

    /* renamed from: c */
    public AbstractC10024k f26702c;

    /* renamed from: d */
    public List<C10328a> f26703d;

    /* renamed from: e */
    public String f26704e;

    /* renamed from: f */
    public boolean f26705f;

    /* renamed from: g */
    public TypeSelectorView f26706g;

    /* renamed from: h */
    public final ViewBindingProperty f26707h = new C19350a(new C8744a());

    /* renamed from: i */
    public static final /* synthetic */ l[] f26697i = {C22128a.m8621g0(C8743r.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetSendFeedbackWoInfocardBinding;", 0)};

    /* renamed from: k */
    public static final C8745b f26699k = new C8745b(null);

    /* renamed from: j */
    public static final String f26698j = C8743r.class.getSimpleName();

    /* renamed from: e.a.c.a.b.a.r$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/r$a.class */
    public static final class C8744a extends m implements s1.z.b.l<C8743r, C9068s> {
        public C8744a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28093d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4078R.C4080id.bankType;
            TypeSelectorView typeSelectorView = (TypeSelectorView) requireView.findViewById(i);
            if (typeSelectorView != null) {
                i = C4078R.C4080id.billType;
                TypeSelectorView typeSelectorView2 = (TypeSelectorView) requireView.findViewById(i);
                if (typeSelectorView2 != null) {
                    i = C4078R.C4080id.cancelBtn;
                    Button button = (Button) requireView.findViewById(i);
                    if (button != null) {
                        i = C4078R.C4080id.changeSettings;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            i = C4078R.C4080id.confirmBtn;
                            Button button2 = (Button) requireView.findViewById(i);
                            if (button2 != null) {
                                i = C4078R.C4080id.consentToggle;
                                SwitchCompat switchCompat = (SwitchCompat) requireView.findViewById(i);
                                if (switchCompat != null) {
                                    i = C4078R.C4080id.consentedGroup;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                    if (constraintLayout != null) {
                                        i = C4078R.C4080id.deliveryType;
                                        TypeSelectorView typeSelectorView3 = (TypeSelectorView) requireView.findViewById(i);
                                        if (typeSelectorView3 != null) {
                                            i = C4078R.C4080id.desc;
                                            TextView textView2 = (TextView) requireView.findViewById(i);
                                            if (textView2 != null) {
                                                i = C4078R.C4080id.divider2;
                                                View findViewById = requireView.findViewById(i);
                                                if (findViewById != null) {
                                                    i = C4078R.C4080id.dummyView;
                                                    View findViewById2 = requireView.findViewById(i);
                                                    if (findViewById2 != null) {
                                                        MotionLayout motionLayout = requireView;
                                                        i = C4078R.C4080id.otherType;
                                                        TypeSelectorView typeSelectorView4 = (TypeSelectorView) requireView.findViewById(i);
                                                        if (typeSelectorView4 != null) {
                                                            i = C4078R.C4080id.otpType;
                                                            TypeSelectorView typeSelectorView5 = (TypeSelectorView) requireView.findViewById(i);
                                                            if (typeSelectorView5 != null) {
                                                                i = C4078R.C4080id.pin;
                                                                TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                                                if (tintedImageView != null) {
                                                                    i = C4078R.C4080id.rechargeType;
                                                                    TypeSelectorView typeSelectorView6 = (TypeSelectorView) requireView.findViewById(i);
                                                                    if (typeSelectorView6 != null) {
                                                                        i = C4078R.C4080id.shoppingType;
                                                                        TypeSelectorView typeSelectorView7 = (TypeSelectorView) requireView.findViewById(i);
                                                                        if (typeSelectorView7 != null) {
                                                                            i = C4078R.C4080id.title;
                                                                            TextView textView3 = (TextView) requireView.findViewById(i);
                                                                            if (textView3 != null) {
                                                                                i = C4078R.C4080id.travelType;
                                                                                TypeSelectorView typeSelectorView8 = (TypeSelectorView) requireView.findViewById(i);
                                                                                if (typeSelectorView8 != null) {
                                                                                    i = C4078R.C4080id.whatMessageTitle;
                                                                                    TextView textView4 = (TextView) requireView.findViewById(i);
                                                                                    if (textView4 != null) {
                                                                                        return new C9068s(motionLayout, typeSelectorView, typeSelectorView2, button, textView, button2, switchCompat, constraintLayout, typeSelectorView3, textView2, findViewById, findViewById2, motionLayout, typeSelectorView4, typeSelectorView5, tintedImageView, typeSelectorView6, typeSelectorView7, textView3, typeSelectorView8, textView4);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.b.a.r$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/r$b.class */
    public static final class C8745b {
        public C8745b(f fVar) {
        }
    }

    /* renamed from: OA */
    public final C9068s m28095OA() {
        return (C9068s) this.f26707h.m34468b(this, f26697i[0]);
    }

    /* renamed from: PA */
    public final void m28094PA() {
        if (this.f26704e != null) {
            AbstractC10060c abstractC10060c = this.f26700a;
            if (abstractC10060c == null) {
                s1.z.c.l.l("analyticsManager");
                throw null;
            }
            C8768e c8768e = C8768e.f26761e;
            C10530c c10530c = C8768e.f26759c;
            c10530c.m25824d(TokenResponseDto.METHOD_SMS);
            String m26802b = C10031q.m26802b(this.f26704e, this.f26705f);
            if (m26802b != null) {
                c10530c.m25822f(m26802b);
            }
            abstractC10060c.mo26757a(c10530c.m25827a());
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8743r.super.onCancel(dialogInterface);
        m28094PA();
    }

    public void onCreate(Bundle bundle) {
        C8743r.super.onCreate(bundle);
        C8761b.C8763b m28085a = C8761b.m28085a();
        m28085a.f26741a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8761b c8761b = (C8761b) m28085a.m28084a();
        AbstractC10060c mo12429c5 = c8761b.f26740a.mo12429c5();
        Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
        this.f26700a = mo12429c5;
        AbstractC10330c mo12147x0 = c8761b.f26740a.mo12147x0();
        Objects.requireNonNull(mo12147x0, "Cannot return null from a non-@Nullable component method");
        this.f26701b = mo12147x0;
        AbstractC10024k mo12766D1 = c8761b.f26740a.mo12766D1();
        Objects.requireNonNull(mo12766D1, "Cannot return null from a non-@Nullable component method");
        this.f26702c = mo12766D1;
        Bundle arguments = getArguments();
        this.f26704e = arguments != null ? arguments.getString("sender_id") : null;
        Bundle arguments2 = getArguments();
        this.f26705f = arguments2 != null ? arguments2.getBoolean("is_im") : false;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_send_feedback_wo_infocard, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8743r.super.onDismiss(dialogInterface);
        AbstractC10024k abstractC10024k = this.f26702c;
        if (abstractC10024k == null) {
            s1.z.c.l.l("consentConfig");
            throw null;
        }
        FeedbackConsentType feedbackConsentType = FeedbackConsentType.SEND_FEEDBACK_WO_INFOCARD;
        if (!C10480a.m25994Z0(abstractC10024k, feedbackConsentType)) {
            AbstractC10024k abstractC10024k2 = this.f26702c;
            if (abstractC10024k2 != null) {
                abstractC10024k2.mo26892e(feedbackConsentType, FeedbackConsentState.CONSENT_SHOWN);
                return;
            } else {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
        }
        AbstractC10024k abstractC10024k3 = this.f26702c;
        if (abstractC10024k3 == null) {
            s1.z.c.l.l("consentConfig");
            throw null;
        } else if (!C10480a.m25998Y0(abstractC10024k3, feedbackConsentType)) {
        } else {
            AbstractC10024k abstractC10024k4 = this.f26702c;
            if (abstractC10024k4 != null) {
                abstractC10024k4.mo26892e(feedbackConsentType, FeedbackConsentState.CONSENT_NOT_GIVEN);
            } else {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        String str;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8743r.super.onViewCreated(view, bundle);
        List<C10328a> list = this.f26703d;
        if (list != null) {
            TextView textView = m28095OA().f27661i;
            s1.z.c.l.d(textView, "binding.desc");
            int i = C4078R.string.message_attached_desc_prefix;
            C8747t c8747t = new C8747t(this);
            s1.z.c.l.e(textView, ViewAction.VIEW);
            s1.z.c.l.e(c8747t, "onClick");
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
            spannableStringBuilder.setSpan(new C9585b(context, c8747t), string.length() + 1, string2.length() + string.length() + 1, 33);
            textView.setText(spannableStringBuilder);
            for (TypeSelectorView typeSelectorView : i.T(new TypeSelectorView[]{m28095OA().f27653a, m28095OA().f27654b, m28095OA().f27666n, m28095OA().f27665m, m28095OA().f27668p, m28095OA().f27667o, m28095OA().f27660h, m28095OA().f27664l})) {
                typeSelectorView.setOnClickListener(new View$OnClickListenerC8748u(typeSelectorView, this));
            }
            m28095OA().f27658f.setOnCheckedChangeListener(new C8746s(this));
            if (this.f26704e != null) {
                m28095OA().f27657e.setOnClickListener(new View$OnClickListenerC25282i(0, this));
                m28095OA().f27655c.setOnClickListener(new View$OnClickListenerC25282i(1, this));
            }
            AbstractC10024k abstractC10024k = this.f26702c;
            if (abstractC10024k == null) {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
            if (C10480a.m26006W0(abstractC10024k, FeedbackConsentType.SEND_FEEDBACK_WO_INFOCARD)) {
                ConstraintLayout constraintLayout = m28095OA().f27659g;
                s1.z.c.l.d(constraintLayout, "binding.consentedGroup");
                C19286f.m13689O(constraintLayout);
                SwitchCompat switchCompat = m28095OA().f27658f;
                s1.z.c.l.d(switchCompat, "binding.consentToggle");
                AbstractC10024k abstractC10024k2 = this.f26702c;
                if (abstractC10024k2 == null) {
                    s1.z.c.l.l("consentConfig");
                    throw null;
                }
                switchCompat.setChecked(C10480a.m26002X0(abstractC10024k2, FeedbackConsentType.MASTER_CONSENT));
            }
            AbstractC10330c abstractC10330c = this.f26701b;
            if (abstractC10330c == null) {
                s1.z.c.l.l("insightsFeedbackManager");
                throw null;
            }
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C10328a c10328a : list) {
                FeedbackType feedbackType = FeedbackType.CATEGORIZER_FEEDBACK;
                s1.z.c.l.e(c10328a, "$this$toInsightFeedback");
                s1.z.c.l.e("", "userFeedback");
                s1.z.c.l.e(feedbackType, "feedbackType");
                String str2 = c10328a.f30674b;
                boolean z = c10328a.f30678f;
                if (str2 != null) {
                    str = str2;
                    if (C10031q.m26801c(str2)) {
                        str = str2;
                        if (!z) {
                            str = "10_digit";
                        }
                    }
                } else {
                    str = null;
                }
                arrayList.add(new C10329b(str, c10328a.f30673a, c10328a.f30676d, c10328a.f30675c, String.valueOf(c10328a.f30677e), "", feedbackType, null, c10328a.f30678f, 128));
            }
            abstractC10330c.mo26344j(arrayList);
        }
    }
}
