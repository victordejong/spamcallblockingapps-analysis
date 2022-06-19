package p193e.p194a.p947k.p948a.p964k;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import q3.a.i0;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018��2\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010G\u001a\u00020F\u0012\b\u0010I\u001a\u0004\u0018\u00010H\u0012\u0006\u0010K\u001a\u00020J¢\u0006\u0004\bL\u0010MJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u000f\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\rJ\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H$¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0014H$¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u001a\u001a\u00020\u0019H\u0080@ø\u0001��¢\u0006\u0004\b\u001a\u0010\u001bR(\u0010$\u001a\u00020\u001c8��@��X\u0081.¢\u0006\u0018\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b#\u0010\u0005\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010+\u001a\u00020%8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001a\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u00102\u001a\u00020,8��@��X\u0081.¢\u0006\u0012\n\u0004\b\t\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R$\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0003\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u00104R\"\u0010<\u001a\u0002068��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0011\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0019\u0010A\u001a\b\u0012\u0004\u0012\u00020>0=8F@\u0006¢\u0006\u0006\u001a\u0004\b?\u0010@R\u0013\u0010E\u001a\u00020B8F@\u0006¢\u0006\u0006\u001a\u0004\bC\u0010D\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006N"}, d2 = {"Le/a/k/a/k/c;", "Landroid/widget/FrameLayout;", "Le/a/k/a/k/x;", "Ls1/s;", "onAttachedToWindow", "()V", "", "url", "", "a", "(Ljava/lang/String;)Z", "visible", "setVisibility", "(Z)V", "E", "onDetachedFromWindow", "mirrorPlayback", C22021b.f61237c, "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "player", "Lcom/google/android/exoplayer2/ui/PlayerView;", "e", "(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;", "getVideoPlayerView", "()Lcom/google/android/exoplayer2/ui/PlayerView;", "Le/m/a/c/c0;", "d", "(Ls1/w/d;)Ljava/lang/Object;", "Ls1/w/f;", AbstractC2405c.f7629a, "Ls1/w/f;", "getUiContext$video_caller_id_release", "()Ls1/w/f;", "setUiContext$video_caller_id_release", "(Ls1/w/f;)V", "getUiContext$video_caller_id_release$annotations", "uiContext", "Le/a/k/a/k/z/c;", "Le/a/k/a/k/z/c;", "getPlayingManager$video_caller_id_release", "()Le/a/k/a/k/z/c;", "setPlayingManager$video_caller_id_release", "(Le/a/k/a/k/z/c;)V", "playingManager", "Le/a/k/a/k/w;", "Le/a/k/a/k/w;", "getPresenter$video_caller_id_release", "()Le/a/k/a/k/w;", "setPresenter$video_caller_id_release", "(Le/a/k/a/k/w;)V", "presenter", "Lkotlin/Function1;", "Ls1/z/b/l;", "playerViewCallback", "Le/a/k/c/q;", "Le/a/k/c/q;", "getExoplayerUtil$video_caller_id_release", "()Le/a/k/c/q;", "setExoplayerUtil$video_caller_id_release", "(Le/a/k/c/q;)V", "exoplayerUtil", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "getPlayingState", "()Lq3/a/x2/i1;", "playingState", "Le/a/k/a/k/z/a;", "getAudioState", "()Le/a/k/a/k/z/a;", "audioState", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.k.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/c.class */
public abstract class AbstractC15821c extends FrameLayout implements AbstractC15862x {
    @Inject

    /* renamed from: a */
    public AbstractC15861w f44625a;
    @Inject

    /* renamed from: b */
    public AbstractC16044q f44626b;
    @Inject

    /* renamed from: c */
    public f f44627c;
    @Inject

    /* renamed from: d */
    public AbstractC15875c f44628d;

    /* renamed from: e */
    public l<? super PlayerView, s> f44629e;

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.BaseVideoPlayerView$createExoPlayer$2$1", f = "BaseVideoPlayerView.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/c$a.class */
    public static final class C15822a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ SimpleExoPlayer f44630e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC15821c f44631f;

        /* renamed from: g */
        public final /* synthetic */ d f44632g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15822a(SimpleExoPlayer simpleExoPlayer, d dVar, AbstractC15821c abstractC15821c, d dVar2) {
            super(2, dVar);
            this.f44630e = simpleExoPlayer;
            this.f44631f = abstractC15821c;
            this.f44632g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m18278i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15822a(this.f44630e, dVar, this.f44631f, this.f44632g);
        }

        /* renamed from: k */
        public final Object m18277k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            SimpleExoPlayer simpleExoPlayer = this.f44630e;
            AbstractC15821c abstractC15821c = this.f44631f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            s1.z.c.l.d(simpleExoPlayer, "player");
            PlayerView mo18279e = abstractC15821c.mo18279e(simpleExoPlayer);
            l<? super PlayerView, s> lVar = abstractC15821c.f44629e;
            if (lVar != null) {
                s sVar2 = (s) lVar.d(mo18279e);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m18276s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC15821c abstractC15821c = this.f44631f;
            SimpleExoPlayer simpleExoPlayer = this.f44630e;
            s1.z.c.l.d(simpleExoPlayer, "player");
            PlayerView mo18279e = abstractC15821c.mo18279e(simpleExoPlayer);
            l<? super PlayerView, s> lVar = this.f44631f.f44629e;
            if (lVar != null) {
                s sVar = (s) lVar.d(mo18279e);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.BaseVideoPlayerView", f = "BaseVideoPlayerView.kt", l = {104}, m = "createExoPlayer$video_caller_id_release")
    /* renamed from: e.a.k.a.k.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/c$b.class */
    public static final class C15823b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44633d;

        /* renamed from: e */
        public int f44634e;

        /* renamed from: g */
        public Object f44636g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15823b(d dVar) {
            super(dVar);
            AbstractC15821c.this = r4;
        }

        /* renamed from: s */
        public final Object m18275s(Object obj) {
            this.f44633d = obj;
            this.f44634e |= Integer.MIN_VALUE;
            return AbstractC15821c.this.m18280d(this);
        }
    }

    /* renamed from: e.a.k.a.k.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/c$c.class */
    public static final class C15824c extends m implements l<PlayerView, s> {

        /* renamed from: b */
        public final /* synthetic */ boolean f44637b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15824c(boolean z) {
            super(1);
            this.f44637b = z;
        }

        /* renamed from: d */
        public Object m18274d(Object obj) {
            PlayerView playerView = (PlayerView) obj;
            s1.z.c.l.e(playerView, "playerView");
            View videoSurfaceView = playerView.getVideoSurfaceView();
            if (videoSurfaceView != null) {
                videoSurfaceView.setScaleX(this.f44637b ? -1.0f : 1.0f);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC15821c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Named("UI")
    public static /* synthetic */ void getUiContext$video_caller_id_release$annotations() {
    }

    /* renamed from: E */
    public void mo18220E(boolean z) {
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    /* renamed from: a */
    public boolean mo18219a(String str) {
        s1.z.c.l.e(str, "url");
        AbstractC16044q abstractC16044q = this.f44626b;
        if (abstractC16044q != null) {
            return abstractC16044q.mo17962a(str);
        }
        s1.z.c.l.l("exoplayerUtil");
        throw null;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    /* renamed from: b */
    public void mo18218b(boolean z) {
        C15824c c15824c = new C15824c(z);
        PlayerView videoPlayerView = getVideoPlayerView();
        if (videoPlayerView != null) {
            c15824c.d(videoPlayerView);
        } else {
            this.f44629e = c15824c;
        }
    }

    /* renamed from: c */
    public void mo18217c(AvatarXConfig avatarXConfig, boolean z) {
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18280d(s1.w.d<? super p193e.p1577m.p1578a.p1596c.AbstractC24196c0> r14) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.AbstractC15821c.m18280d(s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public abstract PlayerView mo18279e(SimpleExoPlayer simpleExoPlayer);

    public final AbstractC15864a getAudioState() {
        AbstractC15875c abstractC15875c = this.f44628d;
        if (abstractC15875c != null) {
            return abstractC15875c.mo18216Y();
        }
        s1.z.c.l.l("playingManager");
        throw null;
    }

    public final AbstractC16044q getExoplayerUtil$video_caller_id_release() {
        AbstractC16044q abstractC16044q = this.f44626b;
        if (abstractC16044q != null) {
            return abstractC16044q;
        }
        s1.z.c.l.l("exoplayerUtil");
        throw null;
    }

    public final AbstractC15875c getPlayingManager$video_caller_id_release() {
        AbstractC15875c abstractC15875c = this.f44628d;
        if (abstractC15875c != null) {
            return abstractC15875c;
        }
        s1.z.c.l.l("playingManager");
        throw null;
    }

    public final i1<AbstractC15868b> getPlayingState() {
        AbstractC15875c abstractC15875c = this.f44628d;
        if (abstractC15875c != null) {
            return abstractC15875c.mo18199p1();
        }
        s1.z.c.l.l("playingManager");
        throw null;
    }

    public final AbstractC15861w getPresenter$video_caller_id_release() {
        AbstractC15861w abstractC15861w = this.f44625a;
        if (abstractC15861w != null) {
            return abstractC15861w;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    public final f getUiContext$video_caller_id_release() {
        f fVar = this.f44627c;
        if (fVar != null) {
            return fVar;
        }
        s1.z.c.l.l("uiContext");
        throw null;
    }

    public abstract PlayerView getVideoPlayerView();

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        AbstractC15861w abstractC15861w = this.f44625a;
        if (abstractC15861w != null) {
            ((C15850r) abstractC15861w).mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC15861w abstractC15861w = this.f44625a;
        if (abstractC15861w == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C15850r) abstractC15861w).mo9806c();
        super.onDetachedFromWindow();
    }

    public void setAvatarXConfig(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
    }

    public final void setExoplayerUtil$video_caller_id_release(AbstractC16044q abstractC16044q) {
        s1.z.c.l.e(abstractC16044q, "<set-?>");
        this.f44626b = abstractC16044q;
    }

    public final void setPlayingManager$video_caller_id_release(AbstractC15875c abstractC15875c) {
        s1.z.c.l.e(abstractC15875c, "<set-?>");
        this.f44628d = abstractC15875c;
    }

    public final void setPresenter$video_caller_id_release(AbstractC15861w abstractC15861w) {
        s1.z.c.l.e(abstractC15861w, "<set-?>");
        this.f44625a = abstractC15861w;
    }

    public final void setUiContext$video_caller_id_release(f fVar) {
        s1.z.c.l.e(fVar, "<set-?>");
        this.f44627c = fVar;
    }

    public void setVisibility(boolean z) {
        setAlpha(z ? 1.0f : 0.0f);
    }
}
