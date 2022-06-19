package p193e.p194a.p982k0.p989n.p995e;

import android.media.MediaPlayer;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k0.n.e.p */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/p.class */
public final class C16437p extends m implements l<MediaPlayer, s> {

    /* renamed from: b */
    public final /* synthetic */ int f46173b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16437p(int i) {
        super(1);
        this.f46173b = i;
    }

    /* renamed from: d */
    public Object m17398d(Object obj) {
        MediaPlayer mediaPlayer = (MediaPlayer) obj;
        s1.z.c.l.e(mediaPlayer, "$receiver");
        mediaPlayer.seekTo(this.f46173b);
        return s.a;
    }
}
