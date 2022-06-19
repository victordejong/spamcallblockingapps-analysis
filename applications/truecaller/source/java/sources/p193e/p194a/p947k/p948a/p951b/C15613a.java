package p193e.p194a.p947k.p948a.p951b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.VideoExpansionType;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import com.truecaller.videocallerid.utils.OnboardingType;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p972m.C16135i;
import q3.a.x2.i1;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� I2\u00020\u00012\u00020\u0002:\u0001JB\u0007¢\u0006\u0004\bH\u0010\u0011J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0011J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u001eH\u0016¢\u0006\u0004\b#\u0010!J\u0017\u0010&\u001a\u00020\r2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u0015\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u001eH\u0016¢\u0006\u0004\b0\u0010!J\u000f\u00101\u001a\u00020\rH\u0016¢\u0006\u0004\b1\u0010\u0011R\"\u00109\u001a\u0002028��@��X\u0081.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8��@��X\u0081.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001d\u0010G\u001a\u00020B8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F¨\u0006K"}, d2 = {"Le/a/k/a/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/k/a/b/f;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "gg", "u5", "Kk", "Le/a/k/a/k/l;", "videoXConfig", "", "analyticsContext", "qr", "(Le/a/k/a/k/l;Ljava/lang/String;)V", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;", "Ym", "()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;", "", "isLandscape", "tr", "(Z)V", "visible", "yA", "", "drawable", "ep", "(I)V", "Le/a/k/a/k/z/a;", "Y", "()Le/a/k/a/k/z/a;", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "p1", "()Lq3/a/x2/i1;", "mute", "Fr", "onPause", "Le/a/k/c/e1;", "f", "Le/a/k/c/e1;", "getVideoCallerIdRouter$video_caller_id_release", "()Le/a/k/c/e1;", "setVideoCallerIdRouter$video_caller_id_release", "(Le/a/k/c/e1;)V", "videoCallerIdRouter", "Le/a/k/a/b/e;", "e", "Le/a/k/a/b/e;", "RA", "()Le/a/k/a/b/e;", "setPresenter$video_caller_id_release", "(Le/a/k/a/b/e;)V", "presenter", "Le/a/k/m/i;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/k/m/i;", "binding", "<init>", "i", AbstractC2405c.f7629a, "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.b.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/b/a.class */
public final class C15613a extends AbstractC15627k implements AbstractC15622f {

    /* renamed from: h */
    public static final /* synthetic */ l[] f44140h = {C22128a.m8621g0(C15613a.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/FragmentFullscreenPopupVideoBinding;", 0)};

    /* renamed from: i */
    public static final C15616c f44141i = new C15616c(null);
    @Inject

    /* renamed from: e */
    public AbstractC15621e f44142e;
    @Inject

    /* renamed from: f */
    public AbstractC15980e1 f44143f;

    /* renamed from: g */
    public final ViewBindingProperty f44144g = new C19350a(new C15615b());

    /* renamed from: e.a.k.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/k/a/b/a$a.class */
    public static final class View$OnClickListenerC15614a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f44145a;

        /* renamed from: b */
        public final /* synthetic */ Object f44146b;

        public View$OnClickListenerC15614a(int i, Object obj) {
            this.f44145a = i;
            this.f44146b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f44145a;
            if (i == 0) {
                AbstractC15622f abstractC15622f = (AbstractC15622f) ((C15624h) ((C15613a) this.f44146b).m18584RA()).f57683a;
                if (abstractC15622f == null) {
                    return;
                }
                abstractC15622f.mo18581Kk();
            } else if (i != 1) {
                throw null;
            } else {
                C15624h c15624h = (C15624h) ((C15613a) this.f44146b).m18584RA();
                Boolean bool = c15624h.f44151d;
                if (bool == null) {
                    return;
                }
                c15624h.m18568Ij(true ^ bool.booleanValue());
            }
        }
    }

    /* renamed from: e.a.k.a.b.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/b/a$b.class */
    public static final class C15615b extends m implements s1.z.b.l<C15613a, C16135i> {
        public C15615b() {
            super(1);
        }

        /* renamed from: d */
        public Object m18583d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
            int i = C4718R.C4720id.image;
            AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
            if (appCompatImageView != null) {
                i = C4718R.C4720id.ivCloseVideo;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) requireView.findViewById(i);
                if (appCompatImageView2 != null) {
                    i = C4718R.C4720id.ivMuteAudio;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) requireView.findViewById(i);
                    if (appCompatImageView3 != null) {
                        i = C4718R.C4720id.onboardingLayout;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView.findViewById(i);
                        if (constraintLayout2 != null) {
                            i = C4718R.C4720id.ratio_video_player;
                            FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = (FullScreenRatioVideoPlayerView) requireView.findViewById(i);
                            if (fullScreenRatioVideoPlayerView != null) {
                                i = C4718R.C4720id.subTitle;
                                TextView textView = (TextView) requireView.findViewById(i);
                                if (textView != null) {
                                    i = C4718R.C4720id.title;
                                    TextView textView2 = (TextView) requireView.findViewById(i);
                                    if (textView2 != null) {
                                        i = C4718R.C4720id.video_player_container;
                                        FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                                        if (frameLayout != null) {
                                            return new C16135i((ConstraintLayout) requireView, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, constraintLayout2, fullScreenRatioVideoPlayerView, textView, textView2, frameLayout);
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

    /* renamed from: e.a.k.a.b.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/b/a$c.class */
    public static final class C15616c {
        public C15616c(f fVar) {
        }
    }

    /* renamed from: e.a.k.a.b.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/b/a$d.class */
    public static final class View$OnClickListenerC15617d implements View.OnClickListener {
        public View$OnClickListenerC15617d() {
            C15613a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C15624h c15624h = (C15624h) C15613a.this.m18584RA();
            AbstractC15622f abstractC15622f = (AbstractC15622f) c15624h.f57683a;
            if (abstractC15622f != null) {
                abstractC15622f.mo18573u5();
            }
            c15624h.f44154g.mo17882a(OnboardingType.PACSExpand);
        }
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: Fr */
    public void mo18582Fr(boolean z) {
        m18585QA().f45484d.m34444c(z);
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: Kk */
    public void mo18581Kk() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* renamed from: QA */
    public final C16135i m18585QA() {
        return (C16135i) this.f44144g.m34468b(this, f44140h[0]);
    }

    /* renamed from: RA */
    public final AbstractC15621e m18584RA() {
        AbstractC15621e abstractC15621e = this.f44142e;
        if (abstractC15621e != null) {
            return abstractC15621e;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: Y */
    public AbstractC15864a mo18580Y() {
        return m18585QA().f45484d.getAudioState();
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: Ym */
    public VideoExpansionType mo18579Ym() {
        Intent intent;
        n3.r.a.l activity = getActivity();
        return (activity == null || (intent = activity.getIntent()) == null) ? null : (VideoExpansionType) intent.getParcelableExtra("ARG_VID_EXPANSION_TYPE");
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: ep */
    public void mo18578ep(int i) {
        m18585QA().f45482b.setImageResource(i);
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: gg */
    public void mo18577gg() {
        ConstraintLayout constraintLayout = m18585QA().f45483c;
        C19286f.m13684T(constraintLayout);
        TextView textView = m18585QA().f45485e;
        s1.z.c.l.d(textView, "binding.subTitle");
        textView.setText(getString(C4718R.string.vid_settings_setup, new Object[]{getString(C4718R.string.video_caller_id)}));
        constraintLayout.setOnClickListener(new View$OnClickListenerC15617d());
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        LayoutInflater layoutInflater2 = getLayoutInflater();
        s1.z.c.l.d(layoutInflater2, "layoutInflater");
        return C17422k.m16050u0(layoutInflater2, true).inflate(C4718R.layout.fragment_fullscreen_popup_video, viewGroup, false);
    }

    public void onDestroyView() {
        C15613a.super.onDestroyView();
        AbstractC15621e abstractC15621e = this.f44142e;
        if (abstractC15621e != null) {
            ((AbstractC20574a) abstractC15621e).mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onPause() {
        C15613a.super.onPause();
        AbstractC15621e abstractC15621e = this.f44142e;
        if (abstractC15621e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C15624h c15624h = (C15624h) abstractC15621e;
        if (!s1.z.c.l.a(c15624h.f44151d, Boolean.FALSE)) {
            return;
        }
        c15624h.m18568Ij(true);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15613a.super.onViewCreated(view, bundle);
        AbstractC15621e abstractC15621e = this.f44142e;
        if (abstractC15621e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C15624h) abstractC15621e).mo9029Y0(this);
        TextView textView = m18585QA().f45486f;
        s1.z.c.l.d(textView, "binding.title");
        textView.setText(getString(C4718R.string.vid_caller_id_onboarding_pacs_expanded_title, new Object[]{getString(C4718R.string.video_caller_id)}));
        m18585QA().f45481a.setOnClickListener(new View$OnClickListenerC15614a(0, this));
        m18585QA().f45482b.setOnClickListener(new View$OnClickListenerC15614a(1, this));
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: p1 */
    public i1<AbstractC15868b> mo18576p1() {
        return m18585QA().f45484d.getPlayingState();
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: qr */
    public void mo18575qr(AbstractC15836l abstractC15836l, String str) {
        s1.z.c.l.e(abstractC15836l, "videoXConfig");
        s1.z.c.l.e(str, "analyticsContext");
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = m18585QA().f45484d;
        fullScreenRatioVideoPlayerView.setClipToOutline(true);
        fullScreenRatioVideoPlayerView.m34442e(abstractC15836l, str);
        FullScreenRatioVideoPlayerView.m34445b(fullScreenRatioVideoPlayerView, false, 1);
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: tr */
    public void mo18574tr(boolean z) {
        m18585QA().f45484d.setLandscape(z);
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: u5 */
    public void mo18573u5() {
        AbstractC15980e1 abstractC15980e1 = this.f44143f;
        if (abstractC15980e1 == null) {
            s1.z.c.l.l("videoCallerIdRouter");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13643A1(abstractC15980e1, requireContext, PreviewModes.ON_BOARDING, new OnboardingData(null, OnboardingContext.PACSExpand, 1, null), null, null, 24, null);
    }

    @Override // p193e.p194a.p947k.p948a.p951b.AbstractC15622f
    /* renamed from: yA */
    public void mo18572yA(boolean z) {
        AppCompatImageView appCompatImageView = m18585QA().f45482b;
        s1.z.c.l.d(appCompatImageView, "binding.ivMuteAudio");
        C19286f.m13683U(appCompatImageView, z);
    }
}
