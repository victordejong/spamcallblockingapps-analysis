package p193e.p194a.p947k.p948a.p964k;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenRatioVideoPlayerView;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import java.util.Objects;
import p193e.p194a.p947k.p972m.C16141o;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.k.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/g.class */
public final class C15831g extends m implements a<C16141o> {

    /* renamed from: b */
    public final /* synthetic */ FullScreenRatioVideoPlayerView f44658b;

    /* renamed from: c */
    public final /* synthetic */ Context f44659c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15831g(FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView, Context context) {
        super(0);
        this.f44658b = fullScreenRatioVideoPlayerView;
        this.f44659c = context;
    }

    public Object invoke() {
        LayoutInflater from = LayoutInflater.from(this.f44659c);
        FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView = this.f44658b;
        Objects.requireNonNull(fullScreenRatioVideoPlayerView, "parent");
        from.inflate(C4718R.layout.layout_landscape_video_caller_id, fullScreenRatioVideoPlayerView);
        int i = C4718R.C4720id.buttonPlay;
        AppCompatImageView appCompatImageView = (AppCompatImageView) fullScreenRatioVideoPlayerView.findViewById(i);
        if (appCompatImageView != null) {
            i = C4718R.C4720id.container_video_view;
            CardView cardView = (CardView) fullScreenRatioVideoPlayerView.findViewById(i);
            if (cardView != null) {
                i = C4718R.C4720id.fullscreen_video_player;
                FullScreenVideoPlayerView fullScreenVideoPlayerView = (FullScreenVideoPlayerView) fullScreenRatioVideoPlayerView.findViewById(i);
                if (fullScreenVideoPlayerView != null) {
                    i = C4718R.C4720id.mute_button;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) fullScreenRatioVideoPlayerView.findViewById(i);
                    if (appCompatImageView2 != null) {
                        return new C16141o(fullScreenRatioVideoPlayerView, appCompatImageView, cardView, fullScreenVideoPlayerView, appCompatImageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(fullScreenRatioVideoPlayerView.getResources().getResourceName(i)));
    }
}
