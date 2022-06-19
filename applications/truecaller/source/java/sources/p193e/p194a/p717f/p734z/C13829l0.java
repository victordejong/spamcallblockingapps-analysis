package p193e.p194a.p717f.p734z;

import android.content.Context;
import android.os.PowerManager;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.f.z.l0 */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/l0.class */
public final class C13829l0 {

    /* renamed from: a */
    public final PowerManager.WakeLock f40126a;

    @Inject
    public C13829l0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f40126a = C19291g.m13562c0(C19291g.m13565b0(context));
    }

    /* renamed from: a */
    public void m21040a() {
        PowerManager.WakeLock wakeLock = this.f40126a;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        wakeLock.release();
    }
}
