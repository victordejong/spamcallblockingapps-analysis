package p193e.p194a.p982k0.p989n.p995e;

import android.media.MediaPlayer;
import android.net.Uri;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k0.n.e.q */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/q.class */
public final class C16438q extends m implements l<MediaPlayer, s> {

    /* renamed from: b */
    public final /* synthetic */ C16440s f46174b;

    /* renamed from: c */
    public final /* synthetic */ Uri f46175c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16438q(C16440s c16440s, Uri uri) {
        super(1);
        this.f46174b = c16440s;
        this.f46175c = uri;
    }

    /* renamed from: d */
    public Object m17397d(Object obj) {
        MediaPlayer mediaPlayer = (MediaPlayer) obj;
        s1.z.c.l.e(mediaPlayer, "$receiver");
        mediaPlayer.setDataSource(this.f46174b.f46179c, this.f46175c);
        mediaPlayer.prepare();
        return s.a;
    }
}
