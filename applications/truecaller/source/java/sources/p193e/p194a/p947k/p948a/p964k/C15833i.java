package p193e.p194a.p947k.p948a.p964k;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.k.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/i.class */
public final class C15833i extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ FullScreenRatioVideoPlayerView f44661b;

    /* renamed from: c */
    public final /* synthetic */ boolean f44662c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15833i(FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView, boolean z) {
        super(0);
        this.f44661b = fullScreenRatioVideoPlayerView;
        this.f44662c = z;
    }

    public Object invoke() {
        this.f44661b.getBinding().f45531b.setOnClickListener(null);
        AppCompatImageView appCompatImageView = this.f44661b.getBinding().f45531b;
        l.d(appCompatImageView, "binding.buttonPlay");
        C19286f.m13689O(appCompatImageView);
        CardView cardView = this.f44661b.getBinding().f45532c;
        l.d(cardView, "binding.containerVideoView");
        C19286f.m13684T(cardView);
        this.f44661b.m34441f(this.f44662c);
        return s.a;
    }
}
