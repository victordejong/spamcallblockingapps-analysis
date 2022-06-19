package p193e.p194a.p947k.p948a.p958f;

import android.content.Context;
import android.net.Uri;
import android.util.Patterns;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import java.io.File;
import javax.inject.Inject;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24701h;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import s1.z.c.l;
/* renamed from: e.a.k.a.f.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/f/g.class */
public final class C15696g {

    /* renamed from: a */
    public final Context f44268a;

    /* renamed from: b */
    public final C20592g f44269b;

    @Inject
    public C15696g(Context context, C20592g c20592g) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20592g, "featuresRegistry");
        this.f44268a = context;
        this.f44269b = c20592g;
    }

    /* renamed from: a */
    public AbstractC15836l m18510a(String str) {
        AbstractC15836l.C15839c c15839c;
        boolean matches = Patterns.WEB_URL.matcher(String.valueOf(str)).matches();
        if (str == null) {
            c15839c = m18509b();
        } else if (matches) {
            c15839c = new AbstractC15836l.C15839c(new PlayingBehaviour.C4747c(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.FIRST_FRAME, PlayingBehaviour.Fallback.LessThanPartly.PLAY_PARTLY_ONCE_THEN_BUFFER)), str, str, false, null, null, 56);
        } else {
            PlayingBehaviour.C4745a c4745a = new PlayingBehaviour.C4745a(0.0f);
            Uri fromFile = Uri.fromFile(new File(str));
            l.d(fromFile, "Uri.fromFile(File(url.toString()))");
            c15839c = new AbstractC15836l.C15837a(c4745a, fromFile, new C24701h(this.f44268a), null, 8);
        }
        return c15839c;
    }

    /* renamed from: b */
    public AbstractC15836l m18509b() {
        C20592g c20592g = this.f44269b;
        String mo10938g = ((AbstractC20597i) c20592g.f57877Z5.m10941a(c20592g, C20592g.f57695p6[369])).mo10938g();
        return new AbstractC15836l.C15839c(new PlayingBehaviour.C4747c(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.FIRST_FRAME_WITH_LOADER, PlayingBehaviour.Fallback.LessThanPartly.FIRST_FRAME_WITH_LOADER)), mo10938g, mo10938g, false, null, null, 56);
    }
}
