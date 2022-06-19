package p193e.p194a.p437c.p438a.p471e.p472a;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p471e.p473b.C8982a;
import p193e.p194a.p437c.p438a.p471e.p474c.AbstractC8990f;
import p193e.p194a.p437c.p438a.p471e.p474c.C8987c;
import p193e.p194a.p437c.p438a.p471e.p474c.C8989e;
import p193e.p194a.p437c.p438a.p477g.C9044k;
import p193e.p194a.p437c.p438a.p520r.AbstractC9584a;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10490a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� I2\u00020\u0001:\u0001?B\u0007¢\u0006\u0004\bG\u0010HJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR$\u0010$\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001f\u0010-\u001a\u0004\u0018\u00010%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b,\u0010)R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001d\u0010@\u001a\u00020>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010'\u001a\u0004\b@\u0010AR\u001d\u0010F\u001a\u00020B8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010'\u001a\u0004\bD\u0010E¨\u0006J"}, d2 = {"Le/a/c/a/e/a/a;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "Le/a/b0/m/a/a;", "addressProfile", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "QA", "(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "Le/a/c/a/g/k;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/c/a/g/k;", "binding", "Lkotlin/Function1;", "Le/a/c/q/a;", "a", "Ls1/z/b/l;", "dialogActionCallback", "", "d", "Ls1/g;", "getAnalyticContext", "()Ljava/lang/String;", "analyticContext", C22021b.f61237c, "getSenderId", "senderId", "Ln3/v/a1$b;", "e", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/b0/m/c/a;", "f", "Le/a/b0/m/c/a;", "getAddressProfileLoader", "()Le/a/b0/m/c/a;", "setAddressProfileLoader", "(Le/a/b0/m/c/a;)V", "addressProfileLoader", "", AbstractC2405c.f7629a, "isIM", "()Z", "Le/a/c/a/e/c/e;", "g", "SA", "()Le/a/c/a/e/c/e;", "viewModel", "<init>", "()V", "k", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.e.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/a.class */
public final class C8962a extends e {

    /* renamed from: j */
    public static final String f27257j;

    /* renamed from: a */
    public l<? super AbstractC10490a, s> f27259a;
    @Inject

    /* renamed from: e */
    public C26986a1.AbstractC26987b f27263e;
    @Inject

    /* renamed from: f */
    public AbstractC8511a f27264f;

    /* renamed from: i */
    public static final /* synthetic */ s1.a.l[] f27256i = {C22128a.m8621g0(C8962a.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetDisableSmartSmsBinding;", 0)};

    /* renamed from: k */
    public static final C8965c f27258k = new C8965c(null);

    /* renamed from: b */
    public final g f27260b = C25225a.m3978P1(new C8963a(1, this));

    /* renamed from: c */
    public final g f27261c = C25225a.m3978P1(new C8966d());

    /* renamed from: d */
    public final g f27262d = C25225a.m3978P1(new C8963a(0, this));

    /* renamed from: g */
    public final g f27265g = C25225a.m3978P1(new C8967e());

    /* renamed from: h */
    public final ViewBindingProperty f27266h = new C19350a(new C8964b());

    /* renamed from: e.a.c.a.e.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/c/a/e/a/a$a.class */
    public static final class C8963a extends m implements a<String> {

        /* renamed from: b */
        public final /* synthetic */ int f27267b;

        /* renamed from: c */
        public final /* synthetic */ Object f27268c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8963a(int i, Object obj) {
            super(0);
            this.f27267b = i;
            this.f27268c = obj;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
            if (r5 != null) goto L18;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invoke() {
            /*
                r3 = this;
                r0 = r3
                int r0 = r0.f27267b
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L2a
                r0 = 0
                r5 = r0
                r0 = r4
                r1 = 1
                if (r0 != r1) goto L28
                r0 = r3
                java.lang.Object r0 = r0.f27268c
                e.a.c.a.e.a.a r0 = (p193e.p194a.p437c.p438a.p471e.p472a.C8962a) r0
                android.os.Bundle r0 = r0.getArguments()
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L26
                r0 = r6
                java.lang.String r1 = "sender_id"
                java.lang.String r0 = r0.getString(r1)
                r5 = r0
            L26:
                r0 = r5
                return r0
            L28:
                r0 = 0
                throw r0
            L2a:
                r0 = r3
                java.lang.Object r0 = r0.f27268c
                e.a.c.a.e.a.a r0 = (p193e.p194a.p437c.p438a.p471e.p472a.C8962a) r0
                android.os.Bundle r0 = r0.getArguments()
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L47
                r0 = r5
                java.lang.String r1 = "analytics_context"
                java.lang.String r0 = r0.getString(r1)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L47
                goto L4a
            L47:
                java.lang.String r0 = ""
                r5 = r0
            L4a:
                r0 = r5
                java.lang.String r1 = "arguments?.getString(ANA…_CONTEXT) ?: EMPTY_STRING"
                s1.z.c.l.d(r0, r1)
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p471e.p472a.C8962a.C8963a.invoke():java.lang.Object");
        }
    }

    /* renamed from: e.a.c.a.e.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/a$b.class */
    public static final class C8964b extends m implements l<C8962a, C9044k> {
        public C8964b() {
            super(1);
        }

        /* renamed from: d */
        public Object m27910d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.avatarImage;
            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
            if (avatarXView != null) {
                i = C4078R.C4080id.errorImage;
                ImageView imageView = (ImageView) requireView.findViewById(i);
                if (imageView != null) {
                    i = C4078R.C4080id.gotItBtn;
                    Button button = (Button) requireView.findViewById(i);
                    if (button != null) {
                        i = C4078R.C4080id.title;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            i = C4078R.C4080id.undoBtn;
                            Button button2 = (Button) requireView.findViewById(i);
                            if (button2 != null) {
                                i = C4078R.C4080id.whatsSmartSmsBtn;
                                TextView textView2 = (TextView) requireView.findViewById(i);
                                if (textView2 != null) {
                                    return new C9044k((ConstraintLayout) requireView, avatarXView, imageView, button, textView, button2, textView2);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.e.a.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/a$c.class */
    public static final class C8965c {
        public C8965c(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.e.a.a$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/a$d.class */
    public static final class C8966d extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8966d() {
            super(0);
            C8962a.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C8962a.this.getArguments();
            return Boolean.valueOf(arguments != null ? arguments.getBoolean("sender_id") : false);
        }
    }

    /* renamed from: e.a.c.a.e.a.a$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/a$e.class */
    public static final class C8967e extends m implements a<C8989e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8967e() {
            super(0);
            C8962a.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c.a.e.a.a, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C8962a.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f27263e;
            if (abstractC26987b == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C8989e.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C8989e.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C8989e.class) : abstractC26987b.create(C8989e.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …ardViewModel::class.java)");
            return (C8989e) abstractC27040y0;
        }
    }

    static {
        String name = C8962a.class.getName();
        s1.z.c.l.d(name, "DisableSmartSmsBottomShe…Fragment::class.java.name");
        f27257j = name;
    }

    /* renamed from: OA */
    public static final String m27915OA(C8962a c8962a) {
        return (String) c8962a.f27262d.getValue();
    }

    /* renamed from: PA */
    public static final boolean m27914PA(C8962a c8962a) {
        return ((Boolean) c8962a.f27261c.getValue()).booleanValue();
    }

    /* renamed from: QA */
    public final AvatarXConfig m27913QA(C8505a c8505a) {
        return new AvatarXConfig(c8505a.f26292c, c8505a.f26290a, null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468);
    }

    /* renamed from: RA */
    public final C9044k m27912RA() {
        return (C9044k) this.f27266h.m34468b(this, f27256i[0]);
    }

    /* renamed from: SA */
    public final C8989e m27911SA() {
        return (C8989e) this.f27265g.getValue();
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        m27911SA().f27319a.mo1001j(C25225a.m3962T1(AbstractC8990f.C8991a.f27323a));
        C8962a.super.onCancel(dialogInterface);
    }

    public void onCreate(Bundle bundle) {
        C8962a.super.onCreate(bundle);
        AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        AbstractC8412c m15207r = C18334g0.m15207r(this);
        AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(m15207r, AbstractC8412c.class);
        C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        C8982a c8982a = new C8982a(abstractC10451a, m15207r, abstractC8510a, abstractC10261a, null);
        this.f27263e = (C26986a1.AbstractC26987b) c8982a.f27301k.get();
        AbstractC8511a mo12189u = c8982a.f27293c.mo12189u();
        Objects.requireNonNull(mo12189u, "Cannot return null from a non-@Nullable component method");
        this.f27264f = mo12189u;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_disable_smart_sms, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8962a.super.onViewCreated(view, bundle);
        String str = (String) this.f27260b.getValue();
        if (str == null) {
            dismiss();
            return;
        }
        C8989e m27911SA = m27911SA();
        AbstractC27028u lifecycle = getLifecycle();
        s1.z.c.l.d(lifecycle, "lifecycle");
        Objects.requireNonNull(m27911SA);
        s1.z.c.l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m27911SA.f27322d);
        m27911SA().f27319a.m42867f(getViewLifecycleOwner(), new C8968b(this));
        TextView textView = m27912RA().f27517c;
        s1.z.c.l.d(textView, "binding.title");
        textView.setText(getString(C4078R.string.disable_smart_sms_screen_title, new Object[]{str}));
        C9044k m27912RA = m27912RA();
        m27912RA.f27518d.setOnClickListener(new p0(0, this, str));
        m27912RA.f27516b.setOnClickListener(new p0(1, this, str));
        m27912RA.f27519e.setOnClickListener(new p0(2, this, str));
        Fragment m42943J = getParentFragmentManager().m42943J(16908290);
        if (m42943J != null) {
            if (!(m42943J instanceof AbstractC9584a)) {
                m42943J = null;
            }
            if (m42943J != null) {
                m27912RA().f27515a.setPresenter(m42943J.mo27414t6());
                C8989e m27911SA2 = m27911SA();
                Objects.requireNonNull(m27911SA2);
                s1.z.c.l.e(str, AnalyticsConstants.SENDER);
                d.w2(MediaSessionCompat.m43315C0(m27911SA2), m27911SA2.f27321c, (j0) null, new C8987c(m27911SA2, str, null), 2, (Object) null);
            }
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C8243a c8243a = new C8243a(new C19235i0(requireContext));
        Uri uri = Uri.EMPTY;
        s1.z.c.l.d(uri, "Uri.EMPTY");
        s1.z.c.l.e("", AnalyticsConstants.NAME);
        s1.z.c.l.e(str, "identifier");
        s1.z.c.l.e(uri, RemoteMessageConst.Notification.ICON);
        s1.z.c.l.e(str, "identifier");
        s1.z.c.l.e("", AnalyticsConstants.NAME);
        s1.z.c.l.e(uri, RemoteMessageConst.Notification.ICON);
        c8243a.m28740nk(new AvatarXConfig(uri, str, null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468), false);
        c8243a.m28738pk(true);
        m27912RA().f27515a.setPresenter(c8243a);
        AbstractC8511a abstractC8511a = this.f27264f;
        if (abstractC8511a == null) {
            s1.z.c.l.l("addressProfileLoader");
            throw null;
        }
        abstractC8511a.mo28429Iz(str, new C8969c(this, c8243a));
        C8989e m27911SA22 = m27911SA();
        Objects.requireNonNull(m27911SA22);
        s1.z.c.l.e(str, AnalyticsConstants.SENDER);
        d.w2(MediaSessionCompat.m43315C0(m27911SA22), m27911SA22.f27321c, (j0) null, new C8987c(m27911SA22, str, null), 2, (Object) null);
    }
}
