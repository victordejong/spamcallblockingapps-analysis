package p193e.p194a.p947k.p948a.p949a.p950a;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.view.PreviewVideoType;
import com.truecaller.videocallerid.p187ui.view.PreviewView;
import com.truecaller.videocallerid.utils.OnboardingType;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p947k.p948a.p949a.AbstractC15607i;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bS\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0013R\u001d\u0010'\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001d\u0010*\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010$\u001a\u0004\b)\u0010&R\u001d\u0010.\u001a\u00020\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010$\u001a\u0004\b,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u001c8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u00104R\u001d\u0010:\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010$\u001a\u0004\b8\u00109R\u001d\u0010?\u001a\u00020;8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010$\u001a\u0004\b=\u0010>R\u001d\u0010B\u001a\u00020\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010$\u001a\u0004\bA\u0010-R\u001d\u0010E\u001a\u00020;8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010$\u001a\u0004\bD\u0010>R\"\u0010M\u001a\u00020F8��@��X\u0081.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u001d\u0010R\u001a\u00020N8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010$\u001a\u0004\bP\u0010Q¨\u0006T"}, d2 = {"Le/a/k/a/a/a/a;", "Ln3/b/a/q;", "Le/a/k/a/a/a/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Yb", "()V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/k/a/k/l;", "fullScreenVideoConfig", "P9", "(Le/a/k/a/k/l;)V", "", "title", "setTitle", "(Ljava/lang/String;)V", "onDestroyView", "onDestroy", "Landroid/widget/Button;", "l", "Ls1/g;", "getNegativeButton", "()Landroid/widget/Button;", "negativeButton", "n", "getPositiveButton", "positiveButton", "k", "getNegativeButtonDividerBottom", "()Landroid/view/View;", "negativeButtonDividerBottom", "Lcom/truecaller/videocallerid/utils/OnboardingType;", "n7", "()Lcom/truecaller/videocallerid/utils/OnboardingType;", "onboardingType", "W8", "()Ljava/lang/String;", "contactName", "Landroid/widget/ImageView;", "h", "getLogoImageView", "()Landroid/widget/ImageView;", "logoImageView", "Landroid/widget/TextView;", "j", "getSubtitleTextView", "()Landroid/widget/TextView;", "subtitleTextView", "m", "getNegativeButtonDividerTop", "negativeButtonDividerTop", "i", "getTitleTextView", "titleTextView", "Le/a/k/c/e1;", "e", "Le/a/k/c/e1;", "getVideoCallerIdRouter$video_caller_id_release", "()Le/a/k/c/e1;", "setVideoCallerIdRouter$video_caller_id_release", "(Le/a/k/c/e1;)V", "videoCallerIdRouter", "Lcom/truecaller/videocallerid/ui/view/PreviewView;", "g", "getPreviewView", "()Lcom/truecaller/videocallerid/ui/view/PreviewView;", "previewView", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.a.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/a/a.class */
public final class C15591a extends AbstractC15593b implements AbstractC15594c {
    @Inject

    /* renamed from: e */
    public AbstractC15980e1 f44097e;
    @Inject

    /* renamed from: f */
    public C15595d f44098f;

    /* renamed from: g */
    public final g f44099g = C19286f.m13659t(this, C4718R.C4720id.previewView);

    /* renamed from: h */
    public final g f44100h = C19286f.m13659t(this, C3700R.C3702id.logo);

    /* renamed from: i */
    public final g f44101i = C19286f.m13659t(this, C3700R.C3702id.title);

    /* renamed from: j */
    public final g f44102j = C19286f.m13659t(this, C3700R.C3702id.subtitle);

    /* renamed from: k */
    public final g f44103k = C19286f.m13659t(this, C3700R.C3702id.negativeButtonDividerBottom);

    /* renamed from: l */
    public final g f44104l = C19286f.m13659t(this, C3700R.C3702id.negativeButton);

    /* renamed from: m */
    public final g f44105m = C19286f.m13659t(this, C3700R.C3702id.negativeButtonDividerTop);

    /* renamed from: n */
    public final g f44106n = C19286f.m13659t(this, C3700R.C3702id.positiveButton);

    /* renamed from: e.a.k.a.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/k/a/a/a/a$a.class */
    public static final class View$OnClickListenerC15592a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f44107a;

        /* renamed from: b */
        public final /* synthetic */ Object f44108b;

        public View$OnClickListenerC15592a(int i, Object obj) {
            this.f44107a = i;
            this.f44108b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f44107a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C15595d c15595d = ((C15591a) this.f44108b).f44098f;
                if (c15595d == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC15594c abstractC15594c = (AbstractC15594c) c15595d.f57683a;
                if (abstractC15594c != null) {
                    abstractC15594c.dismiss();
                }
                ((C15591a) this.f44108b).dismissAllowingStateLoss();
                return;
            }
            C15595d c15595d2 = ((C15591a) this.f44108b).f44098f;
            if (c15595d2 == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC15594c abstractC15594c2 = (AbstractC15594c) c15595d2.f57683a;
            if (abstractC15594c2 == null) {
                return;
            }
            abstractC15594c2.mo18595Yb();
            AbstractC10908f.m25508d(c15595d2.f44115d.f44135a.f32407i, false, null, 3, null);
            abstractC15594c2.dismiss();
        }
    }

    @Override // p193e.p194a.p947k.p948a.p949a.p950a.AbstractC15594c
    /* renamed from: P9 */
    public void mo18597P9(AbstractC15836l abstractC15836l) {
        l.e(abstractC15836l, "fullScreenVideoConfig");
        ((PreviewView) this.f44099g.getValue()).m34436f1(abstractC15836l, PreviewVideoType.StockVideo, null);
    }

    @Override // p193e.p194a.p947k.p948a.p949a.p950a.AbstractC15594c
    /* renamed from: W8 */
    public String mo18596W8() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("ARG_CONTACT_NAME") : null;
    }

    @Override // p193e.p194a.p947k.p948a.p949a.p950a.AbstractC15594c
    /* renamed from: Yb */
    public void mo18595Yb() {
        Context context = getContext();
        if (context != null) {
            AbstractC15980e1 abstractC15980e1 = this.f44097e;
            if (abstractC15980e1 == null) {
                l.l("videoCallerIdRouter");
                throw null;
            }
            l.d(context, "it");
            C19291g.m13643A1(abstractC15980e1, context, PreviewModes.ON_BOARDING, new OnboardingData(null, OnboardingContext.FACS, 1, null), null, null, 24, null);
        }
    }

    @Override // p193e.p194a.p947k.p948a.p949a.p950a.AbstractC15594c
    /* renamed from: n7 */
    public OnboardingType mo18594n7() {
        Bundle arguments = getArguments();
        OnboardingType serializable = arguments != null ? arguments.getSerializable("ARG_VID_ONBOARDING_TYPE") : null;
        if (!(serializable instanceof OnboardingType)) {
            serializable = null;
        }
        return serializable;
    }

    public void onCreate(Bundle bundle) {
        C15591a.super.onCreate(bundle);
        setStyle(0, C3700R.style.StyleX_Dialog_Startup);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4718R.layout.layout_vid_caller_id_dialog, viewGroup, false);
    }

    public void onDestroy() {
        AbstractC15607i activity = getActivity();
        if (activity instanceof AbstractC15607i) {
            activity.onDismiss();
        }
        C15591a.super.onDestroy();
    }

    public void onDestroyView() {
        C15595d c15595d = this.f44098f;
        if (c15595d == null) {
            l.l("presenter");
            throw null;
        }
        c15595d.f57683a = null;
        C15591a.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        OnboardingType mo18594n7;
        l.e(dialogInterface, "dialog");
        C15591a.super.onDismiss(dialogInterface);
        DialogInterface.OnDismissListener activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof DialogInterface.OnDismissListener)) {
            lVar = null;
        }
        DialogInterface.OnDismissListener onDismissListener = lVar;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
        C15595d c15595d = this.f44098f;
        if (c15595d == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC15594c abstractC15594c = (AbstractC15594c) c15595d.f57683a;
        if (abstractC15594c == null || (mo18594n7 = abstractC15594c.mo18594n7()) == null) {
            return;
        }
        c15595d.f44114c.mo17882a(mo18594n7);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C15591a.super.onViewCreated(view, bundle);
        Button button = (Button) this.f44106n.getValue();
        String string = getString(C4718R.string.vid_settings_setup, new Object[]{getString(C4718R.string.video_caller_id)});
        l.d(string, "getString(R.string.vid_s….string.video_caller_id))");
        button.setText(string);
        C19286f.m13683U((View) this.f44103k.getValue(), true);
        button.setOnClickListener(new View$OnClickListenerC15592a(0, this));
        Button button2 = (Button) this.f44104l.getValue();
        String string2 = getString(C4718R.string.StrNotNow);
        l.d(string2, "getString(R.string.StrNotNow)");
        button2.setText(string2);
        C19286f.m13683U(button2, true);
        C19286f.m13683U((View) this.f44105m.getValue(), true);
        button2.setOnClickListener(new View$OnClickListenerC15592a(1, this));
        TextView textView = (TextView) this.f44102j.getValue();
        String string3 = getString(C4718R.string.vid_preview_on_boarding_description);
        l.d(string3, "getString(R.string.vid_p…_on_boarding_description)");
        textView.setText(string3);
        ImageView imageView = (ImageView) this.f44100h.getValue();
        C19286f.m13683U(imageView, true);
        C19291g.m13528n1(imageView, C4718R.C4719drawable.background_transparent, true);
        C15595d c15595d = this.f44098f;
        if (c15595d != null) {
            c15595d.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p947k.p948a.p949a.p950a.AbstractC15594c
    public void setTitle(String str) {
        l.e(str, "title");
        ((TextView) this.f44101i.getValue()).setText(str);
    }
}
