package p193e.p194a.p982k0.p989n.p995e;

import android.media.MediaPlayer;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k0.n.e.l */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/l.class */
public final class C16433l extends m implements l<MediaPlayer, s> {

    /* renamed from: b */
    public final /* synthetic */ a f46169b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16433l(a aVar) {
        super(1);
        this.f46169b = aVar;
    }

    /* renamed from: d */
    public Object m17402d(Object obj) {
        MediaPlayer mediaPlayer = (MediaPlayer) obj;
        s1.z.c.l.e(mediaPlayer, "$receiver");
        mediaPlayer.setOnCompletionListener(new C16432k(this));
        return s.a;
    }
}
