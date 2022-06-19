package p193e.p194a.p852i.p862c.p863a;

import android.media.MediaPlayer;
import android.widget.MediaController;
/* renamed from: e.a.i.c.a.q$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/q$b.class */
public final class q$b implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    public final /* synthetic */ q f42822a;

    public q$b(q qVar, int i, int i2, MediaController mediaController, n nVar) {
        this.f42822a = qVar;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        q qVar = this.f42822a;
        qVar.g = mediaPlayer;
        qVar.f = true;
        mediaPlayer.setVolume(0.0f, 0.0f);
    }
}
