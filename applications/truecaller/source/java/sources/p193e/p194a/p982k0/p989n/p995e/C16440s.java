package p193e.p194a.p982k0.p989n.p995e;

import android.content.Context;
import android.media.MediaPlayer;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p982k0.p989n.p995e.AbstractC16426i;
import q3.a.x2.a1;
import q3.a.x2.k1;
import s1.l;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.k0.n.e.s */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/s.class */
public final class C16440s implements AbstractC16431j {

    /* renamed from: a */
    public MediaPlayer f46177a;

    /* renamed from: b */
    public final a1<AbstractC16426i> f46178b = k1.a(AbstractC16426i.C16429c.f46166a);

    /* renamed from: c */
    public final Context f46179c;

    @Inject
    public C16440s(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f46179c = context;
    }

    /* renamed from: a */
    public int m17395a() {
        MediaPlayer mediaPlayer = this.f46177a;
        return mediaPlayer != null ? mediaPlayer.getDuration() : 0;
    }

    /* renamed from: b */
    public boolean m17394b() {
        Object obj;
        boolean booleanValue;
        MediaPlayer mediaPlayer = this.f46177a;
        if (mediaPlayer != null) {
            try {
                obj = Boolean.valueOf(mediaPlayer.isPlaying());
            } catch (Throwable th) {
                obj = C25225a.m3935a0(th);
            }
            Object obj2 = obj;
            if (obj instanceof l.a) {
                obj2 = null;
            }
            Boolean bool = (Boolean) obj2;
            if (bool != null) {
                booleanValue = bool.booleanValue();
                return booleanValue;
            }
        }
        booleanValue = false;
        return booleanValue;
    }

    /* renamed from: c */
    public final void m17393c(s1.z.b.l<? super MediaPlayer, s> lVar) {
        try {
            MediaPlayer mediaPlayer = this.f46177a;
            if (mediaPlayer != null && ((s) lVar.d(mediaPlayer)) != null) {
                return;
            }
            this.f46178b.setValue(AbstractC16426i.C16430d.f46167a);
        } catch (IOException e) {
            this.f46178b.setValue(new AbstractC16426i.C16427a(e));
        } catch (IllegalStateException e2) {
            this.f46178b.setValue(new AbstractC16426i.C16428b(e2));
        }
    }
}
