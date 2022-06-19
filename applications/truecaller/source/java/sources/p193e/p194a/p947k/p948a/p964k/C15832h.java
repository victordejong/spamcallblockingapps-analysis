package p193e.p194a.p947k.p948a.p964k;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.k.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/h.class */
public final class C15832h extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ FullScreenRatioVideoPlayerView f44660b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15832h(FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView) {
        super(0);
        this.f44660b = fullScreenRatioVideoPlayerView;
    }

    public Object invoke() {
        CardView cardView = this.f44660b.getBinding().f45532c;
        l.d(cardView, "binding.containerVideoView");
        C19286f.m13689O(cardView);
        AppCompatImageView appCompatImageView = this.f44660b.getBinding().f45531b;
        l.d(appCompatImageView, "binding.buttonPlay");
        C19286f.m13684T(appCompatImageView);
        this.f44660b.m34441f(false);
        return s.a;
    }
}
