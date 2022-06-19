package p193e.p194a.p437c.p438a.p442b.p443a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.widget.TypeSelectorView;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
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
import p193e.p194a.p437c.p438a.p442b.p445c.C8769f;
import p193e.p194a.p437c.p438a.p477g.C9059p;
import p193e.p194a.p437c.p438a.p520r.C9585b;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.a.l;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018�� H2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007¢\u0006\u0004\bG\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00142\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001d\u0010-\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R,\u0010>\u001a\u0018\u0012\u0004\u0012\u00020$\u0012\u0006\u0012\u0004\u0018\u00010;\u0012\u0004\u0012\u00020\u0003\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001e\u0010C\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006I"}, d2 = {"Le/a/c/a/b/a/l;", "Le/m/a/g/e/e;", "Landroid/content/DialogInterface$OnShowListener;", "Ls1/s;", "PA", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "dialog", "onShow", "(Landroid/content/DialogInterface;)V", "onCancel", "Le/a/c/i/e/c;", C22021b.f61237c, "Le/a/c/i/e/c;", "getInsightsFeedbackManager", "()Le/a/c/i/e/c;", "setInsightsFeedbackManager", "(Le/a/c/i/e/c;)V", "insightsFeedbackManager", "", "f", "Z", "isIM", "Le/a/c/a/g/p;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/p;", "binding", "Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "g", "Lcom/truecaller/insights/ui/widget/TypeSelectorView;", "selectedType", "Le/a/c/e/c;", "a", "Le/a/c/e/c;", "getAnalyticsManager", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "Lkotlin/Function2;", "", AbstractC2405c.f7629a, "Ls1/z/b/p;", "callback", "", "Le/a/c/i/e/a;", "d", "Ljava/util/List;", "messages", "e", "Ljava/lang/String;", "senderId", "<init>", "k", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.b.a.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/l.class */
public final class DialogInterface$OnShowListenerC8722l extends e implements DialogInterface.OnShowListener {
    @Inject

    /* renamed from: a */
    public AbstractC10060c f26660a;
    @Inject

    /* renamed from: b */
    public AbstractC10330c f26661b;

    /* renamed from: c */
    public p<? super Boolean, ? super String, s> f26662c;

    /* renamed from: d */
    public List<C10328a> f26663d;

    /* renamed from: e */
    public String f26664e;

    /* renamed from: f */
    public boolean f26665f;

    /* renamed from: g */
    public TypeSelectorView f26666g;

    /* renamed from: h */
    public final ViewBindingProperty f26667h = new C19350a(new C8723a());

    /* renamed from: i */
    public static final /* synthetic */ l[] f26657i = {C22128a.m8621g0(DialogInterface$OnShowListenerC8722l.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetNotSpamConsentBinding;", 0)};

    /* renamed from: k */
    public static final C8724b f26659k = new C8724b(null);

    /* renamed from: j */
    public static final String f26658j = DialogInterface$OnShowListenerC8722l.class.getSimpleName();

    /* renamed from: e.a.c.a.b.a.l$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/l$a.class */
    public static final class C8723a extends m implements s1.z.b.l<DialogInterface$OnShowListenerC8722l, C9059p> {
        public C8723a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28099d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4078R.C4080id.animationGroup;
            Group group = (Group) requireView.findViewById(i);
            if (group != null) {
                i = C4078R.C4080id.bankType;
                TypeSelectorView typeSelectorView = (TypeSelectorView) requireView.findViewById(i);
                if (typeSelectorView != null) {
                    i = C4078R.C4080id.billType;
                    TypeSelectorView typeSelectorView2 = (TypeSelectorView) requireView.findViewById(i);
                    if (typeSelectorView2 != null) {
                        i = C4078R.C4080id.cancelBtn;
                        Button button = (Button) requireView.findViewById(i);
                        if (button != null) {
                            i = C4078R.C4080id.confirmBtn;
                            Button button2 = (Button) requireView.findViewById(i);
                            if (button2 != null) {
                                i = C4078R.C4080id.consentGroup;
                                Group group2 = (Group) requireView.findViewById(i);
                                if (group2 != null) {
                                    i = C4078R.C4080id.consentToggle;
                                    SwitchCompat switchCompat = (SwitchCompat) requireView.findViewById(i);
                                    if (switchCompat != null) {
                                        i = C4078R.C4080id.deliveryType;
                                        TypeSelectorView typeSelectorView3 = (TypeSelectorView) requireView.findViewById(i);
                                        if (typeSelectorView3 != null) {
                                            i = C4078R.C4080id.desc;
                                            TextView textView = (TextView) requireView.findViewById(i);
                                            if (textView != null) {
                                                i = C4078R.C4080id.divider;
                                                View findViewById = requireView.findViewById(i);
                                                if (findViewById != null) {
                                                    i = C4078R.C4080id.divider2;
                                                    View findViewById2 = requireView.findViewById(i);
                                                    if (findViewById2 != null) {
                                                        i = C4078R.C4080id.dummyView;
                                                        View findViewById3 = requireView.findViewById(i);
                                                        if (findViewById3 != null) {
                                                            i = C4078R.C4080id.hanger;
                                                            TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                                            if (tintedImageView != null) {
                                                                i = C4078R.C4080id.header;
                                                                TextView textView2 = (TextView) requireView.findViewById(i);
                                                                if (textView2 != null) {
                                                                    MotionLayout motionLayout = requireView;
                                                                    i = C4078R.C4080id.otherType;
                                                                    TypeSelectorView typeSelectorView4 = (TypeSelectorView) requireView.findViewById(i);
                                                                    if (typeSelectorView4 != null) {
                                                                        i = C4078R.C4080id.otpType;
                                                                        TypeSelectorView typeSelectorView5 = (TypeSelectorView) requireView.findViewById(i);
                                                                        if (typeSelectorView5 != null) {
                                                                            i = C4078R.C4080id.pin;
                                                                            TintedImageView tintedImageView2 = (TintedImageView) requireView.findViewById(i);
                                                                            if (tintedImageView2 != null) {
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
                                                                                                    return new C9059p(motionLayout, group, typeSelectorView, typeSelectorView2, button, button2, group2, switchCompat, typeSelectorView3, textView, findViewById, findViewById2, findViewById3, tintedImageView, textView2, motionLayout, typeSelectorView4, typeSelectorView5, tintedImageView2, typeSelectorView6, typeSelectorView7, textView3, typeSelectorView8, textView4);
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
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.b.a.l$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/l$b.class */
    public static final class C8724b {
        public C8724b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.b.a.l$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/l$c.class */
    public static final class RunnableC8725c implements Runnable {
        public RunnableC8725c() {
            DialogInterface$OnShowListenerC8722l.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l = DialogInterface$OnShowListenerC8722l.this;
            l[] lVarArr = DialogInterface$OnShowListenerC8722l.f26657i;
            Objects.requireNonNull(dialogInterface$OnShowListenerC8722l);
            BottomSheetBehavior<FrameLayout> m25915p0 = C10480a.m25915p0(dialogInterface$OnShowListenerC8722l);
            if (m25915p0 != null) {
                TintedImageView tintedImageView = dialogInterface$OnShowListenerC8722l.m28101OA().f27593k;
                s1.z.c.l.d(tintedImageView, "binding.hanger");
                C19286f.m13689O(tintedImageView);
                m25915p0.M(3);
                m25915p0.L(0);
                BottomSheetBehavior<FrameLayout> m25915p02 = C10480a.m25915p0(dialogInterface$OnShowListenerC8722l);
                if (m25915p02 == null) {
                    return;
                }
                C8727m c8727m = new C8727m(dialogInterface$OnShowListenerC8722l);
                if (m25915p02.P.contains(c8727m)) {
                    return;
                }
                m25915p02.P.add(c8727m);
            }
        }
    }

    /* renamed from: e.a.c.a.b.a.l$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/l$d.class */
    public static final class RunnableC8726d implements Runnable {
        public RunnableC8726d() {
            DialogInterface$OnShowListenerC8722l.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l = DialogInterface$OnShowListenerC8722l.this;
            l[] lVarArr = DialogInterface$OnShowListenerC8722l.f26657i;
            dialogInterface$OnShowListenerC8722l.m28101OA().f27594l.f1(1.0f);
        }
    }

    /* renamed from: OA */
    public final C9059p m28101OA() {
        return (C9059p) this.f26667h.m34468b(this, f26657i[0]);
    }

    /* renamed from: PA */
    public final void m28100PA() {
        if (this.f26664e != null) {
            AbstractC10060c abstractC10060c = this.f26660a;
            if (abstractC10060c == null) {
                s1.z.c.l.l("analyticsManager");
                throw null;
            }
            C8769f c8769f = C8769f.f26770i;
            C10530c c10530c = C8769f.f26768g;
            c10530c.m25824d(TokenResponseDto.METHOD_SMS);
            String m26802b = C10031q.m26802b(this.f26664e, this.f26665f);
            if (m26802b != null) {
                c10530c.m25822f(m26802b);
            }
            abstractC10060c.mo26757a(c10530c.m25827a());
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        DialogInterface$OnShowListenerC8722l.super.onCancel(dialogInterface);
        m28100PA();
        p<? super Boolean, ? super String, s> pVar = this.f26662c;
        if (pVar != null) {
            s sVar = (s) pVar.k(Boolean.FALSE, (Object) null);
        }
    }

    public void onCreate(Bundle bundle) {
        DialogInterface$OnShowListenerC8722l.super.onCreate(bundle);
        C8761b.C8763b m28085a = C8761b.m28085a();
        m28085a.f26741a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8761b c8761b = (C8761b) m28085a.m28084a();
        AbstractC10060c mo12429c5 = c8761b.f26740a.mo12429c5();
        Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
        this.f26660a = mo12429c5;
        AbstractC10330c mo12147x0 = c8761b.f26740a.mo12147x0();
        Objects.requireNonNull(mo12147x0, "Cannot return null from a non-@Nullable component method");
        this.f26661b = mo12147x0;
        Bundle arguments = getArguments();
        this.f26664e = arguments != null ? arguments.getString("sender_id") : null;
        Bundle arguments2 = getArguments();
        this.f26665f = arguments2 != null ? arguments2.getBoolean("is_im") : false;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d dVar = new d(requireContext(), getTheme());
        Window window = dVar.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
        dVar.setOnShowListener(this);
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_not_spam_consent, viewGroup, false);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        BottomSheetBehavior<FrameLayout> m25915p0 = C10480a.m25915p0(this);
        if (m25915p0 != null) {
            m25915p0.L((int) getResources().getDimension(C4078R.dimen.dp76));
        }
        m28101OA().f27593k.postDelayed(new RunnableC8725c(), 900L);
    }

    public void onViewCreated(View view, Bundle bundle) {
        String str;
        s1.z.c.l.e(view, ViewAction.VIEW);
        DialogInterface$OnShowListenerC8722l.super.onViewCreated(view, bundle);
        List<C10328a> list = this.f26663d;
        if (list != null) {
            TextView textView = m28101OA().f27589g;
            s1.z.c.l.d(textView, "binding.desc");
            int i = C4078R.string.message_attached_desc_prefix;
            C8728n c8728n = new C8728n(this);
            s1.z.c.l.e(textView, ViewAction.VIEW);
            s1.z.c.l.e(c8728n, "onClick");
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
            spannableStringBuilder.setSpan(new C9585b(context, c8728n), string.length() + 1, string2.length() + string.length() + 1, 33);
            textView.setText(spannableStringBuilder);
            C9059p m28101OA = m28101OA();
            for (TypeSelectorView typeSelectorView : i.T(new TypeSelectorView[]{m28101OA.f27583a, m28101OA.f27584b, m28101OA.f27597o, m28101OA.f27596n, m28101OA.f27599q, m28101OA.f27598p, m28101OA.f27588f, m28101OA.f27595m})) {
                typeSelectorView.setOnClickListener(new View$OnClickListenerC8729o(typeSelectorView, m28101OA, this));
            }
            m28101OA().f27586d.setOnClickListener(new m0(0, this));
            m28101OA().f27585c.setOnClickListener(new m0(1, this));
            m28101OA().f27594l.postDelayed(new RunnableC8726d(), 300L);
            AbstractC10330c abstractC10330c = this.f26661b;
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
