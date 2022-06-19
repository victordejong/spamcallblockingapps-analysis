package p193e.p194a.p947k.p948a.p964k;

import android.view.View;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.truecaller.videocallerid.p187ui.videoplayer.AvatarVideoPlayerView;
import java.util.Objects;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.k.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/b.class */
public final class C15820b extends m implements a<PlayerView> {

    /* renamed from: b */
    public final /* synthetic */ AvatarVideoPlayerView f44624b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15820b(AvatarVideoPlayerView avatarVideoPlayerView) {
        super(0);
        this.f44624b = avatarVideoPlayerView;
    }

    public Object invoke() {
        View inflate = this.f44624b.f16067g.f45537c.inflate();
        Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.google.android.exoplayer2.ui.PlayerView");
        return (PlayerView) inflate;
    }
}
