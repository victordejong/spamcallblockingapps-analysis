package p193e.p194a.p947k.p948a.p964k;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import p193e.p194a.p947k.p972m.C16143q;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.k.m */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/m.class */
public final class C15840m extends m implements a<C16143q> {

    /* renamed from: b */
    public final /* synthetic */ FullScreenVideoPlayerView f44676b;

    /* renamed from: c */
    public final /* synthetic */ Context f44677c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15840m(FullScreenVideoPlayerView fullScreenVideoPlayerView, Context context) {
        super(0);
        this.f44676b = fullScreenVideoPlayerView;
        this.f44677c = context;
    }

    public Object invoke() {
        LayoutInflater from = LayoutInflater.from(this.f44677c);
        FullScreenVideoPlayerView fullScreenVideoPlayerView = this.f44676b;
        View inflate = from.inflate(C4718R.layout.layout_video_caller_id_avatar_player, (ViewGroup) fullScreenVideoPlayerView, false);
        fullScreenVideoPlayerView.addView(inflate);
        int i = C4718R.C4720id.loadingBackground;
        View findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C4718R.C4720id.loadingGroup;
            Group group = (Group) inflate.findViewById(i);
            if (group != null) {
                i = C4718R.C4720id.playerView;
                PlayerView playerView = (PlayerView) inflate.findViewById(i);
                if (playerView != null) {
                    i = C4718R.C4720id.progressBar;
                    ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                    if (progressBar != null) {
                        return new C16143q((ConstraintLayout) inflate, findViewById, group, playerView, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }
}
