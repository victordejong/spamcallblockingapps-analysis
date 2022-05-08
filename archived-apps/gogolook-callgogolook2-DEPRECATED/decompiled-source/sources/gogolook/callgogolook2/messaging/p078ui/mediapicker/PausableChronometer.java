package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.Chronometer;
import p459j.p460a.p474c0.p491g.AbstractC12102r;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.PausableChronometer */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/PausableChronometer.class */
public class PausableChronometer extends Chronometer implements AbstractC12102r {

    /* renamed from: a */
    public long f11901a = 0;

    public PausableChronometer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m26956a() {
        stop();
        this.f11901a = SystemClock.elapsedRealtime() - getBase();
    }

    /* renamed from: b */
    public void m26955b() {
        stop();
        setBase(SystemClock.elapsedRealtime());
        this.f11901a = 0L;
    }

    /* renamed from: c */
    public void m26954c() {
        m26955b();
        start();
    }

    /* renamed from: d */
    public void m26953d() {
        setBase(SystemClock.elapsedRealtime() - this.f11901a);
        start();
    }
}
