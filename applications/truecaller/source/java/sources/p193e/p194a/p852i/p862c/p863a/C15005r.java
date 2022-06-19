package p193e.p194a.p852i.p862c.p863a;

import android.widget.VideoView;
import java.util.TimerTask;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.i.c.a.r */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/r.class */
public final class C15005r extends TimerTask {

    /* renamed from: a */
    public final /* synthetic */ s f42826a;

    public C15005r(s sVar) {
        this.f42826a = sVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        Integer num;
        Integer num2;
        q qVar = this.f42826a.b;
        VideoView videoView = qVar.c;
        if (videoView == null) {
            l.l("videoView");
            throw null;
        }
        try {
            num = Integer.valueOf(videoView.getDuration());
        } catch (Throwable th) {
            num = C25225a.m3935a0(th);
        }
        if (s1.l.a(num) != null) {
            num = -1;
        }
        int intValue = ((Number) num).intValue();
        VideoView videoView2 = qVar.c;
        if (videoView2 == null) {
            l.l("videoView");
            throw null;
        }
        try {
            num2 = Integer.valueOf(videoView2.getCurrentPosition());
        } catch (Throwable th2) {
            num2 = C25225a.m3935a0(th2);
        }
        if (s1.l.a(num2) != null) {
            num2 = 0;
        }
        float intValue2 = (((Number) num2).intValue() / intValue) * 100;
        if (intValue2 >= 1.0f && intValue2 <= 9.99f) {
            qVar.l.m19048a();
        } else if (intValue2 >= 25.0f && intValue2 <= 49.99f) {
            qVar.m.m19048a();
        } else if (intValue2 >= 50.0f && intValue2 <= 74.99f) {
            qVar.n.m19048a();
        } else if (intValue2 < 75.0f || intValue2 > 99.99f) {
        } else {
            qVar.o.m19048a();
        }
    }
}
