package p193e.p194a.p437c.p438a.p442b.p443a;

import android.content.DialogInterface;
import android.os.Bundle;
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
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import com.truecaller.insights.utils.FeedbackConsentState;
import com.truecaller.insights.utils.FeedbackConsentType;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p442b.p444b.C8761b;
import p193e.p194a.p437c.p438a.p442b.p445c.C8768e;
import p193e.p194a.p437c.p438a.p477g.C9065r;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� H2\u00020\u0001:\u00013B\u0007¢\u0006\u0004\bG\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0016R\u001d\u0010\u001d\u001a\u00020\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001e\u0010F\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006I"}, d2 = {"Le/a/c/a/b/a/v;", "Le/m/a/g/e/e;", "Ls1/s;", "PA", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDismiss", "Le/a/c/a/g/r;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/r;", "binding", "", "e", "Ljava/lang/String;", "senderId", "Le/a/c/e/c;", "a", "Le/a/c/e/c;", "getAnalyticsManager", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "g", "Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "selectedType", "", "f", "Z", "isIM", "Le/a/c/i/e/c;", C22021b.f61237c, "Le/a/c/i/e/c;", "getInsightsFeedbackManager", "()Le/a/c/i/e/c;", "setInsightsFeedbackManager", "(Le/a/c/i/e/c;)V", "insightsFeedbackManager", "Le/a/c/c0/k;", AbstractC2405c.f7629a, "Le/a/c/c0/k;", "getConsentConfig", "()Le/a/c/c0/k;", "setConsentConfig", "(Le/a/c/c0/k;)V", "consentConfig", "", "Le/a/c/i/e/a;", "d", "Ljava/util/List;", "messages", "<init>", "k", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.b.a.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/v.class */
public final class C8749v extends e {
    @Inject

    /* renamed from: a */
    public AbstractC10060c f26715a;
    @Inject

    /* renamed from: b */
    public AbstractC10330c f26716b;
    @Inject

    /* renamed from: c */
    public AbstractC10024k f26717c;

    /* renamed from: d */
    public List<C10328a> f26718d;

    /* renamed from: e */
    public String f26719e;

    /* renamed from: f */
    public boolean f26720f;

    /* renamed from: g */
    public TypeSelectorView f26721g;

    /* renamed from: h */
    public final ViewBindingProperty f26722h = new C19350a(new C8750a());

    /* renamed from: i */
    public static final /* synthetic */ l[] f26712i = {C22128a.m8621g0(C8749v.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetSendFeedbackSmartSmsBinding;", 0)};

    /* renamed from: k */
    public static final C8751b f26714k = new C8751b(null);

    /* renamed from: j */
    public static final String f26713j = C8749v.class.getSimpleName();

    /* renamed from: e.a.c.a.b.a.v$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/v$a.class */
    public static final class C8750a extends m implements s1.z.b.l<C8749v, C9065r> {
        public C8750a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28090d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4078R.C4080id.cancelBtn;
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
                                i = C4078R.C4080id.desc;
                                TextView textView2 = (TextView) requireView.findViewById(i);
                                if (textView2 != null) {
                                    i = C4078R.C4080id.divier;
                                    View findViewById = requireView.findViewById(i);
                                    if (findViewById != null) {
                                        i = C4078R.C4080id.dummyView;
                                        View findViewById2 = requireView.findViewById(i);
                                        if (findViewById2 != null) {
                                            MotionLayout motionLayout = requireView;
                                            i = C4078R.C4080id.pin;
                                            TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                            if (tintedImageView != null) {
                                                i = C4078R.C4080id.title;
                                                TextView textView3 = (TextView) requireView.findViewById(i);
                                                if (textView3 != null) {
                                                    i = C4078R.C4080id.type1;
                                                    TypeSelectorView typeSelectorView = (TypeSelectorView) requireView.findViewById(i);
                                                    if (typeSelectorView != null) {
                                                        i = C4078R.C4080id.type2;
                                                        TypeSelectorView typeSelectorView2 = (TypeSelectorView) requireView.findViewById(i);
                                                        if (typeSelectorView2 != null) {
                                                            i = C4078R.C4080id.type3;
                                                            TypeSelectorView typeSelectorView3 = (TypeSelectorView) requireView.findViewById(i);
                                                            if (typeSelectorView3 != null) {
                                                                i = C4078R.C4080id.type4;
                                                                TypeSelectorView typeSelectorView4 = (TypeSelectorView) requireView.findViewById(i);
                                                                if (typeSelectorView4 != null) {
                                                                    i = C4078R.C4080id.whatMessageTitle;
                                                                    TextView textView4 = (TextView) requireView.findViewById(i);
                                                                    if (textView4 != null) {
                                                                        return new C9065r(motionLayout, button, textView, button2, switchCompat, constraintLayout, textView2, findViewById, findViewById2, motionLayout, tintedImageView, textView3, typeSelectorView, typeSelectorView2, typeSelectorView3, typeSelectorView4, textView4);
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

    /* renamed from: e.a.c.a.b.a.v$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/v$b.class */
    public static final class C8751b {
        public C8751b(f fVar) {
        }

        /* renamed from: a */
        public final C8749v m28089a(List<C10328a> list, String str, boolean z) {
            s1.z.c.l.e(list, "messages");
            s1.z.c.l.e(str, "senderId");
            C8749v c8749v = new C8749v();
            c8749v.f26718d = list;
            Bundle bundle = new Bundle();
            bundle.putString("sender_id", str);
            bundle.putBoolean("is_im", z);
            c8749v.setArguments(bundle);
            return c8749v;
        }
    }

    /* renamed from: OA */
    public final C9065r m28092OA() {
        return (C9065r) this.f26722h.m34468b(this, f26712i[0]);
    }

    /* renamed from: PA */
    public final void m28091PA() {
        if (this.f26719e != null) {
            AbstractC10060c abstractC10060c = this.f26715a;
            if (abstractC10060c == null) {
                s1.z.c.l.l("analyticsManager");
                throw null;
            }
            C8768e c8768e = C8768e.f26761e;
            C10530c c10530c = C8768e.f26759c;
            c10530c.m25824d("infocard");
            String m26802b = C10031q.m26802b(this.f26719e, this.f26720f);
            if (m26802b != null) {
                c10530c.m25822f(m26802b);
            }
            abstractC10060c.mo26757a(c10530c.m25827a());
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8749v.super.onCancel(dialogInterface);
        m28091PA();
    }

    public void onCreate(Bundle bundle) {
        C8749v.super.onCreate(bundle);
        C8761b.C8763b m28085a = C8761b.m28085a();
        m28085a.f26741a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8761b c8761b = (C8761b) m28085a.m28084a();
        AbstractC10060c mo12429c5 = c8761b.f26740a.mo12429c5();
        Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
        this.f26715a = mo12429c5;
        AbstractC10330c mo12147x0 = c8761b.f26740a.mo12147x0();
        Objects.requireNonNull(mo12147x0, "Cannot return null from a non-@Nullable component method");
        this.f26716b = mo12147x0;
        AbstractC10024k mo12766D1 = c8761b.f26740a.mo12766D1();
        Objects.requireNonNull(mo12766D1, "Cannot return null from a non-@Nullable component method");
        this.f26717c = mo12766D1;
        Bundle arguments = getArguments();
        this.f26719e = arguments != null ? arguments.getString("sender_id") : null;
        Bundle arguments2 = getArguments();
        this.f26720f = arguments2 != null ? arguments2.getBoolean("is_im") : false;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_send_feedback_smart_sms, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8749v.super.onDismiss(dialogInterface);
        AbstractC10024k abstractC10024k = this.f26717c;
        if (abstractC10024k == null) {
            s1.z.c.l.l("consentConfig");
            throw null;
        }
        FeedbackConsentType feedbackConsentType = FeedbackConsentType.SEND_FEEDBACK_WITH_INFOCARD;
        if (!C10480a.m25994Z0(abstractC10024k, feedbackConsentType)) {
            AbstractC10024k abstractC10024k2 = this.f26717c;
            if (abstractC10024k2 != null) {
                abstractC10024k2.mo26892e(feedbackConsentType, FeedbackConsentState.CONSENT_SHOWN);
                return;
            } else {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
        }
        AbstractC10024k abstractC10024k3 = this.f26717c;
        if (abstractC10024k3 == null) {
            s1.z.c.l.l("consentConfig");
            throw null;
        } else if (!C10480a.m25998Y0(abstractC10024k3, feedbackConsentType)) {
        } else {
            AbstractC10024k abstractC10024k4 = this.f26717c;
            if (abstractC10024k4 != null) {
                abstractC10024k4.mo26892e(feedbackConsentType, FeedbackConsentState.CONSENT_NOT_GIVEN);
            } else {
                s1.z.c.l.l("consentConfig");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.C8749v.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
