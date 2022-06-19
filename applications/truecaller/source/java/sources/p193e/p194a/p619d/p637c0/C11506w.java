package p193e.p194a.p619d.p637c0;

import android.content.Context;
import android.os.PowerManager;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c0.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/w.class */
public final class C11506w implements AbstractC11501v {

    /* renamed from: a */
    public final g f33788a = C25225a.m3978P1(new C11507a());

    /* renamed from: b */
    public final Context f33789b;

    /* renamed from: e.a.d.c0.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/w$a.class */
    public static final class C11507a extends m implements a<PowerManager.WakeLock> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11507a() {
            super(0);
            C11506w.this = r4;
        }

        public Object invoke() {
            return C19291g.m13562c0(C19291g.m13565b0(C11506w.this.f33789b));
        }
    }

    @Inject
    public C11506w(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f33789b = context;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11501v
    /* renamed from: a */
    public void mo24566a() {
        PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) this.f33788a.getValue();
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        wakeLock.release();
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11501v
    /* renamed from: b */
    public void mo24565b() {
        PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) this.f33788a.getValue();
        if (wakeLock == null || wakeLock.isHeld()) {
            return;
        }
        wakeLock.acquire(TimeUnit.HOURS.toMillis(5L));
    }
}
