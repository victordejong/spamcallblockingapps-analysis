package p193e.p194a.p852i.p862c.p863a;

import android.media.MediaPlayer;
import android.widget.MediaController;
import p193e.p194a.p852i.p904h0.C15203k;
/* renamed from: e.a.i.c.a.q$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/q$c.class */
public final class q$c implements MediaPlayer.OnInfoListener {

    /* renamed from: a */
    public final /* synthetic */ q f42823a;

    public q$c(q qVar, int i, int i2, MediaController mediaController, n nVar) {
        this.f42823a = qVar;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 3) {
            try {
                this.f42823a.k.m19048a();
                this.f42823a.l.m19048a();
                return true;
            } catch (IllegalStateException e) {
                C15203k.f43270c.m19049a(e);
                e.printStackTrace();
                return true;
            }
        }
        return false;
    }
}
