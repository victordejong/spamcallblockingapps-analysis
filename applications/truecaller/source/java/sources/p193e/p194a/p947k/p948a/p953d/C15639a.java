package p193e.p194a.p947k.p948a.p953d;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.method.LinkMovementMethod;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1755d.p1756a.C25696f;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p969c.C15993h1;
import p193e.p194a.p947k.p972m.C16146t;
import s1.a.l;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0001\u0018�� B2\u00020\u00012\u00020\u0002:\u0001\u001aB\u0007¢\u0006\u0004\bA\u0010\u001cJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J)\u0010%\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u00152\b\b\u0002\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&R\"\u0010.\u001a\u00020'8��@��X\u0081.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001d\u00104\u001a\u00020/8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\"\u0010<\u001a\u0002058��@��X\u0081.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001f\u0010\u001e\u001a\u0004\u0018\u00010\u001d8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@¨\u0006C"}, d2 = {"Le/a/k/a/d/a;", "Ln3/b/a/q;", "Le/a/k/a/d/g;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "description", "d", "(Ljava/lang/String;)V", "url", C22021b.f61237c, "t", "()V", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "onboardingData", "iA", "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)V", "Ln3/d/a/f;", "customTabsIntent", "", "openInChrome", "RA", "(Ln3/d/a/f;Ljava/lang/String;Z)V", "Le/a/k/c/e1;", "f", "Le/a/k/c/e1;", "getVideoCallerIdRouter$video_caller_id_release", "()Le/a/k/c/e1;", "setVideoCallerIdRouter$video_caller_id_release", "(Le/a/k/c/e1;)V", "videoCallerIdRouter", "Le/a/k/m/t;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/k/m/t;", "binding", "Le/a/k/a/d/f;", "e", "Le/a/k/a/d/f;", "getPresenter$video_caller_id_release", "()Le/a/k/a/d/f;", "setPresenter$video_caller_id_release", "(Le/a/k/a/d/f;)V", "presenter", "h", "Ls1/g;", "k0", "()Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "<init>", "j", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.d.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/a.class */
public final class C15639a extends AbstractC15656m implements AbstractC15650g {

    /* renamed from: i */
    public static final /* synthetic */ l[] f44179i = {C22128a.m8621g0(C15639a.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/VideoCallerIdDialogCommunityGuidelineBinding;", 0)};

    /* renamed from: j */
    public static final C15641b f44180j = new C15641b(null);
    @Inject

    /* renamed from: e */
    public AbstractC15649f f44181e;
    @Inject

    /* renamed from: f */
    public AbstractC15980e1 f44182f;

    /* renamed from: g */
    public final ViewBindingProperty f44183g = new C19350a(new C15640a());

    /* renamed from: h */
    public final g f44184h = C25225a.m3982O1(h.c, new C15644e());

    /* renamed from: e.a.k.a.d.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/d/a$a.class */
    public static final class C15640a extends m implements s1.z.b.l<C15639a, C16146t> {
        public C15640a() {
            super(1);
        }

        /* renamed from: d */
        public Object m18554d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.button_agree;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4718R.C4720id.divider;
                View findViewById = requireView.findViewById(i);
                if (findViewById != null) {
                    i = C4718R.C4720id.header_1;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(i);
                    if (appCompatTextView != null) {
                        i = C4718R.C4720id.header_2;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) requireView.findViewById(i);
                        if (appCompatTextView2 != null) {
                            i = C4718R.C4720id.image;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
                            if (appCompatImageView != null) {
                                i = C4718R.C4720id.scrollContent;
                                ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                if (constraintLayout != null) {
                                    i = C4718R.C4720id.scrollView;
                                    ScrollView scrollView = (ScrollView) requireView.findViewById(i);
                                    if (scrollView != null) {
                                        i = C4718R.C4720id.text_description_1;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) requireView.findViewById(i);
                                        if (appCompatTextView3 != null) {
                                            i = C4718R.C4720id.text_description_2;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) requireView.findViewById(i);
                                            if (appCompatTextView4 != null) {
                                                i = C4718R.C4720id.text_title;
                                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) requireView.findViewById(i);
                                                if (appCompatTextView5 != null) {
                                                    return new C16146t((CardView) requireView, button, findViewById, appCompatTextView, appCompatTextView2, appCompatImageView, constraintLayout, scrollView, appCompatTextView3, appCompatTextView4, appCompatTextView5);
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

    /* renamed from: e.a.k.a.d.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/d/a$b.class */
    public static final class C15641b {
        public C15641b(f fVar) {
        }
    }

    /* renamed from: e.a.k.a.d.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/d/a$c.class */
    public static final class DialogInterface$OnKeyListenerC15642c implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f44185a;

        /* renamed from: b */
        public final /* synthetic */ C15639a f44186b;

        public DialogInterface$OnKeyListenerC15642c(Dialog dialog, C15639a c15639a) {
            this.f44185a = dialog;
            this.f44186b = c15639a;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            s1.z.c.l.e(dialogInterface, "<anonymous parameter 0>");
            s1.z.c.l.e(keyEvent, "keyEvent");
            if (i == 4 && keyEvent.getAction() == 1) {
                AbstractC15655l activity = this.f44186b.getActivity();
                if (activity instanceof AbstractC15655l) {
                    activity.mo18547q3();
                }
                this.f44185a.dismiss();
                return true;
            }
            return false;
        }
    }

    /* renamed from: e.a.k.a.d.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/d/a$d.class */
    public static final class View$OnClickListenerC15643d implements View.OnClickListener {
        public View$OnClickListenerC15643d() {
            C15639a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC15649f abstractC15649f = C15639a.this.f44181e;
            if (abstractC15649f == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            C15654k c15654k = (C15654k) abstractC15649f;
            c15654k.f44199d.putBoolean("guidelineIsAgreed", true);
            AbstractC15650g abstractC15650g = (AbstractC15650g) c15654k.f57683a;
            if (abstractC15650g != null) {
                abstractC15650g.mo18550iA(abstractC15650g.mo18549k0());
            }
            AbstractC15650g abstractC15650g2 = (AbstractC15650g) c15654k.f57683a;
            if (abstractC15650g2 == null) {
                return;
            }
            abstractC15650g2.mo18548t();
        }
    }

    /* renamed from: e.a.k.a.d.a$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/d/a$e.class */
    public static final class C15644e extends m implements a<OnboardingData> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15644e() {
            super(0);
            C15639a.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C15639a.this.getArguments();
            OnboardingData onboardingData = arguments != null ? (OnboardingData) arguments.getParcelable("onboardingData") : null;
            if (!(onboardingData instanceof OnboardingData)) {
                onboardingData = null;
            }
            return onboardingData;
        }
    }

    /* renamed from: QA */
    public final C16146t m18556QA() {
        return (C16146t) this.f44183g.m34468b(this, f44179i[0]);
    }

    /* renamed from: RA */
    public final void m18555RA(C25696f c25696f, String str, boolean z) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        ContextThemeWrapper m16113E = C17422k.m16113E(requireContext, true);
        if (z) {
            try {
                Intent intent = c25696f.f71983a;
                s1.z.c.l.d(intent, "customTabsIntent.intent");
                intent.setPackage("com.android.chrome");
            } catch (ActivityNotFoundException e) {
                Context context = getContext();
                Context context2 = getContext();
                String str2 = null;
                if (context2 != null) {
                    str2 = context2.getString(C4718R.string.vid_no_browser_installed_error_msg);
                }
                Toast.makeText(context, str2, 1).show();
                return;
            }
        }
        c25696f.f71983a.setData(Uri.parse(str));
        Intent intent2 = c25696f.f71983a;
        Object obj = C26467a.f74235a;
        C26467a.C26468a.m1794b(m16113E, intent2, null);
    }

    @Override // p193e.p194a.p947k.p948a.p953d.AbstractC15650g
    /* renamed from: b */
    public void mo18552b(String str) {
        s1.z.c.l.e(str, "url");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        ContextThemeWrapper m16113E = C17422k.m16113E(requireContext, true);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 0);
        Integer valueOf = Integer.valueOf(C19291g.m13612L(m16113E, C4718R.attr.tcx_backgroundSecondary) | (-16777216));
        Integer valueOf2 = Integer.valueOf(C19291g.m13612L(m16113E, C4718R.attr.theme_textColorPrimary));
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        Bundle bundle2 = new Bundle();
        if (valueOf != null) {
            bundle2.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", valueOf.intValue());
        }
        if (valueOf2 != null) {
            bundle2.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", valueOf2.intValue());
        }
        intent.putExtras(bundle2);
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        C25696f c25696f = new C25696f(intent, null);
        s1.z.c.l.d(c25696f, "CustomTabsIntent.Builder…ry))\n            .build()");
        Intent intent2 = c25696f.f71983a;
        StringBuilder m8728C = C22128a.m8728C("2");
        m8728C.append(m16113E.getPackageName());
        intent2.putExtra(DeepLink.REFERRER_URI, Uri.parse(m8728C.toString()));
        try {
            m18555RA(c25696f, str, false);
        } catch (SecurityException e) {
            m18555RA(c25696f, str, true);
        }
    }

    @Override // p193e.p194a.p947k.p948a.p953d.AbstractC15650g
    /* renamed from: d */
    public void mo18551d(String str) {
        s1.z.c.l.e(str, "description");
        AppCompatTextView appCompatTextView = m18556QA().f45551f;
        s1.z.c.l.d(appCompatTextView, "binding.textDescription2");
        appCompatTextView.setText(MediaSessionCompat.m43246d0(str, 63));
    }

    @Override // p193e.p194a.p947k.p948a.p953d.AbstractC15650g
    /* renamed from: iA */
    public void mo18550iA(OnboardingData onboardingData) {
        Context context = getContext();
        if (context != null) {
            AbstractC15980e1 abstractC15980e1 = this.f44182f;
            if (abstractC15980e1 == null) {
                s1.z.c.l.l("videoCallerIdRouter");
                throw null;
            }
            s1.z.c.l.d(context, "it");
            ((C15993h1) abstractC15980e1).m18020a(context, RecordingScreenModes.RECORDING, onboardingData);
        }
    }

    @Override // p193e.p194a.p947k.p948a.p953d.AbstractC15650g
    /* renamed from: k0 */
    public OnboardingData mo18549k0() {
        return (OnboardingData) this.f44184h.getValue();
    }

    public void onCreate(Bundle bundle) {
        C15639a.super.onCreate(bundle);
        setStyle(0, C4718R.style.StyleX_Dialog_Startup);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = C15639a.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        onCreateDialog.setOnKeyListener(new DialogInterface$OnKeyListenerC15642c(onCreateDialog, this));
        return onCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4718R.layout.video_caller_id_dialog_community_guideline, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15639a.super.onViewCreated(view, bundle);
        AbstractC15649f abstractC15649f = this.f44181e;
        if (abstractC15649f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C15654k) abstractC15649f).mo9029Y0(this);
        C16146t m18556QA = m18556QA();
        AppCompatTextView appCompatTextView = m18556QA.f45551f;
        s1.z.c.l.d(appCompatTextView, "textDescription2");
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
        C19291g.m13622H1(appCompatTextView, new C15648e(this));
        m18556QA.f45546a.setOnClickListener(new View$OnClickListenerC15643d());
        AppCompatTextView appCompatTextView2 = m18556QA.f45552g;
        s1.z.c.l.d(appCompatTextView2, "textTitle");
        int i = C4718R.string.vid_community_guideline_title;
        int i2 = C4718R.string.video_caller_id;
        appCompatTextView2.setText(getString(i, new Object[]{getString(i2)}));
        AppCompatTextView appCompatTextView3 = m18556QA.f45550e;
        s1.z.c.l.d(appCompatTextView3, "textDescription1");
        appCompatTextView3.setText(getString(C4718R.string.vid_community_guideline_be_yourself, new Object[]{getString(i2)}));
        ScrollView scrollView = m18556QA().f45549d;
        s1.z.c.l.d(scrollView, "binding.scrollView");
        ViewTreeObserver viewTreeObserver = scrollView.getViewTreeObserver();
        viewTreeObserver.addOnScrollChangedListener(new ViewTreeObserver$OnScrollChangedListenerC15645b(this));
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC15646c(this));
    }

    @Override // p193e.p194a.p947k.p948a.p953d.AbstractC15650g
    /* renamed from: t */
    public void mo18548t() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }
}
