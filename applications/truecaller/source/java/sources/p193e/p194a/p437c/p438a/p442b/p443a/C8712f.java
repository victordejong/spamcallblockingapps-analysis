package p193e.p194a.p437c.p438a.p442b.p443a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.google.android.material.C2080R;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.FlowLayout;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p442b.p444b.C8761b;
import p193e.p194a.p437c.p438a.p477g.C9053n;
import p193e.p194a.p437c.p438a.p520r.C9589f;
import p193e.p194a.p437c.p438a.p521s.p522g.C9607f;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.a.l;
import s1.s;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018�� O2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\bM\u0010NJ\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001d\u0010$\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0083.¢\u0006\u0006\n\u0004\b*\u0010+R0\u00102\u001a\u001c\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0007\u0018\u00010-j\u0004\u0018\u0001`/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=0<0;8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010\u001dR\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010'R\u0016\u0010L\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006P"}, d2 = {"Le/a/c/a/b/a/f;", "Le/m/a/g/e/e;", "Le/a/c/r/m/b;", "SA", "()Le/a/c/r/m/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", C22021b.f61237c, "Ljava/util/List;", "availableTags", "Le/a/c/a/g/n;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/c/a/g/n;", "binding", "", "j", "Z", "isAutoDismiss", "Landroidx/appcompat/widget/SwitchCompat;", "f", "Landroidx/appcompat/widget/SwitchCompat;", "shareMessageSwitch", "Lkotlin/Function2;", "", "Lcom/truecaller/insights/ui/feedback/view/OnCategorySelected;", "g", "Ls1/z/b/p;", "onSelected", "Le/a/c/c0/k;", "e", "Le/a/c/c0/k;", "getConsentConfig", "()Le/a/c/c0/k;", "setConsentConfig", "(Le/a/c/c0/k;)V", "consentConfig", "", "Le/a/c/a/s/g/f;", "Le/a/c/a/b/a/d0;", "h", "chipViews", "Le/a/c/e/c;", "d", "Le/a/c/e/c;", "QA", "()Le/a/c/e/c;", "setAnalyticsManager", "(Le/a/c/e/c;)V", "analyticsManager", "i", "isBackPressed", AbstractC2405c.f7629a, "Landroid/view/View;", "shareMessageContainer", "<init>", "()V", "m", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.b.a.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/f.class */
public final class C8712f extends e {

    /* renamed from: l */
    public static final String f26635l;

    /* renamed from: c */
    public View f26639c;
    @Inject

    /* renamed from: d */
    public AbstractC10060c f26640d;
    @Inject

    /* renamed from: e */
    public AbstractC10024k f26641e;

    /* renamed from: f */
    public SwitchCompat f26642f;

    /* renamed from: g */
    public p<? super String, ? super Boolean, s> f26643g;

    /* renamed from: i */
    public boolean f26645i;

    /* renamed from: j */
    public boolean f26646j;

    /* renamed from: k */
    public static final /* synthetic */ l[] f26634k = {C22128a.m8621g0(C8712f.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetImportantMessageFeedbackBinding;", 0)};

    /* renamed from: m */
    public static final C8714b f26636m = new C8714b(null);

    /* renamed from: a */
    public final ViewBindingProperty f26637a = new C19350a(new C8713a());

    /* renamed from: b */
    public final List<AbstractC10651b> f26638b = C9589f.f29005a;

    /* renamed from: h */
    public final List<C9607f<C8704d0>> f26644h = new ArrayList();

    /* renamed from: e.a.c.a.b.a.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/f$a.class */
    public static final class C8713a extends m implements s1.z.b.l<C8712f, C9053n> {
        public C8713a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28104d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.addTagHeader;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4078R.C4080id.describeLayout;
                TextView textView2 = (TextView) requireView.findViewById(i);
                if (textView2 != null) {
                    NestedScrollView nestedScrollView = requireView;
                    i = C4078R.C4080id.tagContainer;
                    FlowLayout flowLayout = (FlowLayout) requireView.findViewById(i);
                    if (flowLayout != null) {
                        i = C4078R.C4080id.tintedImageView;
                        TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                        if (tintedImageView != null) {
                            return new C9053n(nestedScrollView, textView, textView2, nestedScrollView, flowLayout, tintedImageView);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.b.a.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/f$b.class */
    public static final class C8714b {
        public C8714b(f fVar) {
        }

        /* renamed from: a */
        public final C8712f m28103a(String str, boolean z, String str2, p<? super String, ? super Boolean, s> pVar) {
            s1.z.c.l.e(str, "senderId");
            s1.z.c.l.e(pVar, "onSelected");
            C8712f c8712f = new C8712f();
            c8712f.f26643g = pVar;
            Bundle bundle = new Bundle();
            bundle.putString("sender_id", str);
            bundle.putBoolean("is_im", z);
            bundle.putString("selected_category", str2);
            c8712f.setArguments(bundle);
            return c8712f;
        }
    }

    /* renamed from: e.a.c.a.b.a.f$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/f$c.class */
    public static final class DialogInterface$OnShowListenerC8715c implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ d f26647a;

        /* renamed from: b */
        public final /* synthetic */ C8712f f26648b;

        /* renamed from: e.a.c.a.b.a.f$c$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/f$c$a.class */
        public static final class ViewTreeObserver$OnGlobalLayoutListenerC8716a implements ViewTreeObserver.OnGlobalLayoutListener {

            /* renamed from: a */
            public final /* synthetic */ View f26649a;

            /* renamed from: b */
            public final /* synthetic */ DialogInterface$OnShowListenerC8715c f26650b;

            public ViewTreeObserver$OnGlobalLayoutListenerC8716a(View view, DialogInterface$OnShowListenerC8715c dialogInterface$OnShowListenerC8715c) {
                this.f26649a = view;
                this.f26650b = dialogInterface$OnShowListenerC8715c;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                this.f26649a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                C8712f c8712f = this.f26650b.f26648b;
                l[] lVarArr = C8712f.f26634k;
                NestedScrollView nestedScrollView = c8712f.m28106RA().f27541c;
                int paddingLeft = nestedScrollView.getPaddingLeft();
                int paddingTop = nestedScrollView.getPaddingTop();
                int paddingRight = nestedScrollView.getPaddingRight();
                View view = this.f26650b.f26648b.f26639c;
                if (view != null) {
                    nestedScrollView.setPadding(paddingLeft, paddingTop, paddingRight, view.getHeight());
                } else {
                    s1.z.c.l.l("shareMessageContainer");
                    throw null;
                }
            }
        }

        public DialogInterface$OnShowListenerC8715c(d dVar, C8712f c8712f) {
            this.f26647a = dVar;
            this.f26648b = c8712f;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            C8712f c8712f = this.f26648b;
            d dVar = this.f26647a;
            l[] lVarArr = C8712f.f26634k;
            Objects.requireNonNull(c8712f);
            FrameLayout frameLayout = (FrameLayout) dVar.findViewById(C2080R.C2082id.container);
            if (frameLayout != null) {
                s1.z.c.l.d(frameLayout, "findViewById<FrameLayout…R.id.container) ?: return");
                View view = c8712f.f26639c;
                if (view == null) {
                    s1.z.c.l.l("shareMessageContainer");
                    throw null;
                }
                frameLayout.addView(view);
            }
            FlowLayout flowLayout = this.f26648b.m28106RA().f27542d;
            s1.z.c.l.d(flowLayout, "binding.tagContainer");
            flowLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC8716a(flowLayout, this));
        }
    }

    static {
        String simpleName = C8712f.class.getSimpleName();
        s1.z.c.l.d(simpleName, "ImportantSendersFeedback…nt::class.java.simpleName");
        f26635l = simpleName;
    }

    /* renamed from: OA */
    public static final boolean m28109OA(C8712f c8712f) {
        Bundle arguments = c8712f.getArguments();
        return arguments != null ? arguments.getBoolean("is_im") : false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L7;
     */
    /* renamed from: PA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m28108PA(p193e.p194a.p437c.p438a.p442b.p443a.C8712f r3) {
        /*
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            r0 = r3
            java.lang.String r1 = "sender_id"
            java.lang.String r0 = r0.getString(r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r3 = r0
        L1a:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.C8712f.m28108PA(e.a.c.a.b.a.f):java.lang.String");
    }

    /* renamed from: QA */
    public final AbstractC10060c m28107QA() {
        AbstractC10060c abstractC10060c = this.f26640d;
        if (abstractC10060c != null) {
            return abstractC10060c;
        }
        s1.z.c.l.l("analyticsManager");
        throw null;
    }

    /* renamed from: RA */
    public final C9053n m28106RA() {
        return (C9053n) this.f26637a.m34468b(this, f26634k[0]);
    }

    /* renamed from: SA */
    public final AbstractC10651b m28105SA() {
        Bundle arguments = getArguments();
        AbstractC10651b abstractC10651b = null;
        String string = arguments != null ? arguments.getString("selected_category") : null;
        if (string != null) {
            abstractC10651b = C10480a.m25883v2(string);
        }
        return abstractC10651b;
    }

    public void onCreate(Bundle bundle) {
        C8712f.super.onCreate(bundle);
        C8761b.C8763b m28085a = C8761b.m28085a();
        m28085a.f26741a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        C8761b c8761b = (C8761b) m28085a.m28084a();
        AbstractC10060c mo12429c5 = c8761b.f26740a.mo12429c5();
        Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
        this.f26640d = mo12429c5;
        AbstractC10024k mo12766D1 = c8761b.f26740a.mo12766D1();
        Objects.requireNonNull(mo12766D1, "Cannot return null from a non-@Nullable component method");
        this.f26641e = mo12766D1;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d c8717g = new C8717g(this, requireContext(), getTheme());
        Window window = c8717g.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
        c8717g.setOnShowListener(new DialogInterface$OnShowListenerC8715c(c8717g, this));
        return c8717g;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onCreateView(android.view.LayoutInflater r6, android.view.ViewGroup r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.C8712f.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
        if (r21 != null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDismiss(android.content.DialogInterface r19) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p442b.p443a.C8712f.onDismiss(android.content.DialogInterface):void");
    }

    public void onViewCreated(View view, Bundle bundle) {
        String str;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8712f.super.onViewCreated(view, bundle);
        AbstractC10651b m28105SA = m28105SA();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4078R.dimen.dp8);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C4078R.dimen.dp40);
        p<? super C8704d0, ? super C9607f<C8704d0>, s> c8721k = new C8721k(this);
        Iterator<T> it = this.f26638b.iterator();
        while (true) {
            str = null;
            if (!it.hasNext()) {
                break;
            }
            AbstractC10651b abstractC10651b = (AbstractC10651b) it.next();
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            C9607f<C8704d0> c9607f = new C9607f<>(requireContext, null, 0, 6);
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, dimensionPixelSize2);
            marginLayoutParams.setMarginEnd(dimensionPixelSize);
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            Context requireContext2 = requireContext();
            s1.z.c.l.d(requireContext2, "requireContext()");
            String m27406b = C9589f.m27406b(abstractC10651b, requireContext2);
            c9607f.setMetadata(new C8704d0(m27406b, abstractC10651b));
            c9607f.setTitle(m27406b);
            if (s1.z.c.l.a(m28105SA, abstractC10651b)) {
                c9607f.setSelected(true);
            }
            c9607f.setOnTagSelected(c8721k);
            m28106RA().f27542d.addView(c9607f, marginLayoutParams);
            this.f26644h.add(c9607f);
        }
        if (m28105SA != null) {
            str = m28105SA.f31741a;
        }
        boolean z = true;
        if (str != null) {
            z = str.length() == 0;
        }
        if (z) {
            return;
        }
        m28106RA().f27539a.setText(C4078R.string.edit_tag);
        m28106RA().f27540b.setText(C4078R.string.select_a_more_relevant_tag);
    }
}
