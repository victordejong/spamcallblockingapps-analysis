package p193e.p194a.p852i.p862c.p863a;

import android.media.MediaPlayer;
import android.widget.MediaController;
import android.widget.VideoView;
import com.truecaller.ads.C2808R;
/* renamed from: e.a.i.c.a.q$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/q$a.class */
public final class q$a implements MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    public final /* synthetic */ VideoView f42820a;

    /* renamed from: b */
    public final /* synthetic */ q f42821b;

    public q$a(VideoView videoView, q qVar, int i, int i2, MediaController mediaController, n nVar) {
        this.f42820a = videoView;
        this.f42821b = qVar;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        this.f42821b.p.m19048a();
        this.f42820a.seekTo(1);
        this.f42821b.getAdVideoPlayPause().setImageResource(C2808R.C2809drawable.ic_play);
    }
}
