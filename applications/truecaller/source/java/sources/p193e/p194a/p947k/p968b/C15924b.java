package p193e.p194a.p947k.p968b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Number;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.videoplayer.AvatarVideoPlayerView;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import n3.r.a.k;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p972m.C16136j;
import s1.a.l;
import s1.i;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018�� \u001f2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, d2 = {"Le/a/k/b/b;", "Ln3/r/a/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "PA", "()Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarXConfig", "Le/a/k/m/j;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/k/m/j;", "binding", "Le/a/k/a/k/a;", C22021b.f61237c, "Le/a/k/a/k/a;", "avatarVideoConfig", "<init>", "()V", "d", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.b.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/b.class */
public final class C15924b extends k {

    /* renamed from: c */
    public static final /* synthetic */ l[] f44911c = {C22128a.m8621g0(C15924b.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/FragmentVideoCallerIdDebugVideoAvatarBinding;", 0)};

    /* renamed from: d */
    public static final C15926b f44912d = new C15926b(null);

    /* renamed from: a */
    public final ViewBindingProperty f44913a = new C19350a(new C15925a());

    /* renamed from: b */
    public AbstractC15816a f44914b = new AbstractC15816a.C15817a(new AvatarXConfig(null, "1234", null, "S", false, false, false, false, false, false, false, false, false, false, null, false, 65525));

    /* renamed from: e.a.k.b.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/b$a.class */
    public static final class C15925a extends m implements s1.z.b.l<C15924b, C16136j> {
        public C15925a() {
            super(1);
        }

        /* renamed from: d */
        public Object m18133d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.gold;
            SwitchMaterial findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4718R.C4720id.premium;
                SwitchMaterial findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4718R.C4720id.priority;
                    SwitchMaterial findViewById3 = requireView.findViewById(i);
                    if (findViewById3 != null) {
                        i = C4718R.C4720id.video;
                        SwitchMaterial findViewById4 = requireView.findViewById(i);
                        if (findViewById4 != null) {
                            i = C4718R.C4720id.videoAvatarXView;
                            AvatarVideoPlayerView avatarVideoPlayerView = (AvatarVideoPlayerView) requireView.findViewById(i);
                            if (avatarVideoPlayerView != null) {
                                return new C16136j((LinearLayout) requireView, findViewById, findViewById2, findViewById3, findViewById4, avatarVideoPlayerView);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.k.b.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/b$b.class */
    public static final class C15926b {
        public C15926b(f fVar) {
        }
    }

    /* renamed from: OA */
    public static final void m18136OA(C15924b c15924b, AvatarXConfig avatarXConfig) {
        AbstractC15816a.C15817a c15817a;
        AbstractC15816a abstractC15816a = c15924b.f44914b;
        if (abstractC15816a instanceof AbstractC15816a.C15817a) {
            Objects.requireNonNull((AbstractC15816a.C15817a) abstractC15816a);
            s1.z.c.l.e(avatarXConfig, "avatarXConfig");
            c15817a = new AbstractC15816a.C15817a(avatarXConfig);
        } else if (abstractC15816a instanceof AbstractC15816a.C15819c) {
            AbstractC15816a.C15819c c15819c = (AbstractC15816a.C15819c) abstractC15816a;
            String str = c15819c.f44618b;
            PlayingBehaviour playingBehaviour = c15819c.f44619c;
            boolean z = c15819c.f44620d;
            String str2 = c15819c.f44621e;
            String str3 = c15819c.f44622f;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = c15819c.f44623g;
            s1.z.c.l.e(avatarXConfig, "avatarXConfig");
            s1.z.c.l.e(str, "url");
            s1.z.c.l.e(playingBehaviour, "playingBehaviour");
            c15817a = new AbstractC15816a.C15819c(avatarXConfig, str, playingBehaviour, z, str2, str3, videoPlayerAnalyticsInfo);
        } else if (!(abstractC15816a instanceof AbstractC15816a.C15818b)) {
            throw new i();
        } else {
            AbstractC15816a.C15818b c15818b = (AbstractC15816a.C15818b) abstractC15816a;
            List<Number> list = c15818b.f44614b;
            PlayingBehaviour playingBehaviour2 = c15818b.f44615c;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo2 = c15818b.f44616d;
            s1.z.c.l.e(avatarXConfig, "avatarXConfig");
            s1.z.c.l.e(list, "numbers");
            s1.z.c.l.e(playingBehaviour2, "playingBehaviour");
            c15817a = new AbstractC15816a.C15818b(avatarXConfig, list, playingBehaviour2, videoPlayerAnalyticsInfo2);
        }
        c15924b.f44914b = c15817a;
        AvatarVideoPlayerView.m34449g(c15924b.m18134QA().f45492e, c15924b.f44914b, null, 2);
    }

    /* renamed from: PA */
    public final AvatarXConfig m18135PA() {
        return this.f44914b.mo18281b();
    }

    /* renamed from: QA */
    public final C16136j m18134QA() {
        return (C16136j) this.f44913a.m34468b(this, f44911c[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4718R.layout.fragment_video_caller_id_debug_video_avatar, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…avatar, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15924b.super.onViewCreated(view, bundle);
        m18134QA().f45491d.setOnCheckedChangeListener(new u(0, this));
        m18134QA().f45489b.setOnCheckedChangeListener(new u(1, this));
        m18134QA().f45488a.setOnCheckedChangeListener(new u(2, this));
        m18134QA().f45490c.setOnCheckedChangeListener(new u(3, this));
        AvatarVideoPlayerView.m34449g(m18134QA().f45492e, this.f44914b, null, 2);
    }
}
