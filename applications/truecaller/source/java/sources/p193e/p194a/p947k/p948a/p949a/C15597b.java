package p193e.p194a.p947k.p948a.p949a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.onboarding.VideoCallerIdBottomSheetOnboardingData;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p947k.C16117k;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p972m.C16129c;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� 12\u00020\u00012\u00020\u0002:\u00012B\u0007¢\u0006\u0004\b0\u0010\u0018J+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001c\u0010\u0018J\u000f\u0010\u001d\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u0018J\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!R\u001d\u0010'\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8��@��X\u0081.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00063"}, d2 = {"Le/a/k/a/a/b;", "Le/m/a/g/e/e;", "Le/a/k/a/a/m;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "title", "setTitle", "(Ljava/lang/String;)V", "u5", "()V", "Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;", "k0", "()Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;", "finish", "onDestroyView", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/k/m/c;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/k/m/c;", "binding", "Le/a/k/c/e1;", "f", "Le/a/k/c/e1;", "getVideoCallerIdRouter$video_caller_id_release", "()Le/a/k/c/e1;", "setVideoCallerIdRouter$video_caller_id_release", "(Le/a/k/c/e1;)V", "videoCallerIdRouter", "<init>", "i", AbstractC2405c.f7629a, "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/b.class */
public final class C15597b extends AbstractC15603e implements AbstractC15611m {

    /* renamed from: h */
    public static final /* synthetic */ l[] f44116h = {C22128a.m8621g0(C15597b.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/BottomSheetVideoCallerIdOnboardingConfigBinding;", 0)};

    /* renamed from: i */
    public static final C15600c f44117i = new C15600c(null);
    @Inject

    /* renamed from: e */
    public C15612n f44118e;
    @Inject

    /* renamed from: f */
    public AbstractC15980e1 f44119f;

    /* renamed from: g */
    public final ViewBindingProperty f44120g = new C19350a(new C15599b());

    /* renamed from: e.a.k.a.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/k/a/a/b$a.class */
    public static final class View$OnClickListenerC15598a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f44121a;

        /* renamed from: b */
        public final /* synthetic */ Object f44122b;

        public View$OnClickListenerC15598a(int i, Object obj) {
            this.f44121a = i;
            this.f44122b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f44121a;
            VideoCallerIdBottomSheetOnboardingData videoCallerIdBottomSheetOnboardingData = null;
            if (i == 0) {
                C15612n c15612n = ((C15597b) this.f44122b).f44118e;
                if (c15612n == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                AbstractC15611m abstractC15611m = (AbstractC15611m) c15612n.f57683a;
                if (abstractC15611m != null) {
                    abstractC15611m.mo18586u5();
                }
                AbstractC15611m abstractC15611m2 = (AbstractC15611m) c15612n.f57683a;
                if (abstractC15611m2 == null) {
                    return;
                }
                abstractC15611m2.dismissAllowingStateLoss();
            } else if (i != 1) {
                throw null;
            } else {
                C15612n c15612n2 = ((C15597b) this.f44122b).f44118e;
                if (c15612n2 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                AbstractC15611m abstractC15611m3 = (AbstractC15611m) c15612n2.f57683a;
                if (abstractC15611m3 != null) {
                    videoCallerIdBottomSheetOnboardingData = abstractC15611m3.mo18587k0();
                }
                if (videoCallerIdBottomSheetOnboardingData != null) {
                    String number = videoCallerIdBottomSheetOnboardingData.getNumber();
                    String analyticsContext = videoCallerIdBottomSheetOnboardingData.getAnalyticsContext();
                    s1.z.c.l.e(analyticsContext, "analyticsContext");
                    InitiateCallHelper.CallOptions callOptions = new InitiateCallHelper.CallOptions(number, analyticsContext, null, null, false, false, null, true, InitiateCallHelper.CallContextOption.ShowOnBoarded.a);
                    C16117k c16117k = (C16117k) c15612n2.f44138c;
                    Objects.requireNonNull(c16117k);
                    s1.z.c.l.e(callOptions, "callOptions");
                    ((InitiateCallHelper) c16117k.f45422i.get()).m35744b(callOptions);
                }
                AbstractC15611m abstractC15611m4 = (AbstractC15611m) c15612n2.f57683a;
                if (abstractC15611m4 == null) {
                    return;
                }
                abstractC15611m4.dismissAllowingStateLoss();
            }
        }
    }

    /* renamed from: e.a.k.a.a.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/a/b$b.class */
    public static final class C15599b extends m implements s1.z.b.l<C15597b, C16129c> {
        public C15599b() {
            super(1);
        }

        /* renamed from: d */
        public Object m18593d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.continueButton;
            AppCompatButton appCompatButton = (AppCompatButton) requireView.findViewById(i);
            if (appCompatButton != null) {
                i = C4718R.C4720id.image;
                AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
                if (appCompatImageView != null) {
                    i = C4718R.C4720id.notNowButton;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(i);
                    if (appCompatTextView != null) {
                        i = C4718R.C4720id.titleTv;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) requireView.findViewById(i);
                        if (appCompatTextView2 != null) {
                            return new C16129c((ConstraintLayout) requireView, appCompatButton, appCompatImageView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.k.a.a.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/a/b$c.class */
    public static final class C15600c {
        public C15600c(f fVar) {
        }
    }

    @Override // p193e.p194a.p947k.p948a.p949a.AbstractC15611m
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p947k.p948a.p949a.AbstractC15603e
    public Context getContext() {
        Context context = super.getContext();
        return context != null ? C17422k.m16113E(context, true) : null;
    }

    @Override // p193e.p194a.p947k.p948a.p949a.AbstractC15611m
    /* renamed from: k0 */
    public VideoCallerIdBottomSheetOnboardingData mo18587k0() {
        Intent intent;
        n3.r.a.l activity = getActivity();
        return (activity == null || (intent = activity.getIntent()) == null) ? null : (VideoCallerIdBottomSheetOnboardingData) intent.getParcelableExtra("ARG_ONBOARDING_DATA");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        LayoutInflater layoutInflater2 = getLayoutInflater();
        s1.z.c.l.d(layoutInflater2, "layoutInflater");
        View inflate = C17422k.m16050u0(layoutInflater2, true).inflate(C4718R.layout.bottom_sheet_video_caller_id_onboarding_config, viewGroup, false);
        s1.z.c.l.d(inflate, "layoutInflater.toThemeIn…config, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C15612n c15612n = this.f44118e;
        if (c15612n == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c15612n.f57683a = null;
        C15597b.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C15597b.super.onDismiss(dialogInterface);
        C15612n c15612n = this.f44118e;
        VideoCallerIdBottomSheetOnboardingData videoCallerIdBottomSheetOnboardingData = null;
        if (c15612n == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC15611m abstractC15611m = (AbstractC15611m) c15612n.f57683a;
        if (abstractC15611m != null) {
            videoCallerIdBottomSheetOnboardingData = abstractC15611m.mo18587k0();
        }
        if (videoCallerIdBottomSheetOnboardingData != null) {
            c15612n.f44139d.mo17882a(videoCallerIdBottomSheetOnboardingData.getOnboardingType());
        }
        AbstractC15611m abstractC15611m2 = (AbstractC15611m) c15612n.f57683a;
        if (abstractC15611m2 == null) {
            return;
        }
        abstractC15611m2.finish();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15597b.super.onViewCreated(view, bundle);
        C16129c c16129c = (C16129c) this.f44120g.m34468b(this, f44116h[0]);
        AppCompatButton appCompatButton = c16129c.f45460a;
        s1.z.c.l.d(appCompatButton, "continueButton");
        appCompatButton.setText(getString(C4718R.string.vid_settings_setup, new Object[]{getString(C4718R.string.video_caller_id)}));
        c16129c.f45460a.setOnClickListener(new View$OnClickListenerC15598a(0, this));
        c16129c.f45461b.setOnClickListener(new View$OnClickListenerC15598a(1, this));
        C15612n c15612n = this.f44118e;
        if (c15612n != null) {
            c15612n.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p947k.p948a.p949a.AbstractC15611m
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        AppCompatTextView appCompatTextView = ((C16129c) this.f44120g.m34468b(this, f44116h[0])).f45462c;
        s1.z.c.l.d(appCompatTextView, "binding.titleTv");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p947k.p948a.p949a.AbstractC15611m
    /* renamed from: u5 */
    public void mo18586u5() {
        Context context = getContext();
        if (context != null) {
            AbstractC15980e1 abstractC15980e1 = this.f44119f;
            if (abstractC15980e1 != null) {
                C19291g.m13643A1(abstractC15980e1, context, PreviewModes.ON_BOARDING, new OnboardingData(null, OnboardingContext.PACSCall, 1, null), null, null, 24, null);
            } else {
                s1.z.c.l.l("videoCallerIdRouter");
                throw null;
            }
        }
    }
}
