package p193e.p194a.p619d.p666y.p669c;

import com.truecaller.voip.C4781R;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26451r;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.y.c.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/l.class */
public final class C12327l extends m implements a<C26450q> {

    /* renamed from: b */
    public final /* synthetic */ C12329n f35998b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12327l(C12329n c12329n) {
        super(0);
        this.f35998b = c12329n;
    }

    public Object invoke() {
        C12329n c12329n = this.f35998b;
        C26450q c26450q = new C26450q(c12329n.f36004e, c12329n.m23259d().mo19425a("missed_calls"));
        c26450q.f74137R.icon = C4781R.C4782drawable.ic_notification_call_missed;
        c26450q.m1845x(new C26451r());
        c26450q.f74121B = "social";
        C12329n c12329n2 = this.f35998b;
        c26450q.f74126G = c12329n2.f36000a;
        c26450q.f74127H = c12329n2.f36001b;
        c26450q.m1846w(null);
        c26450q.f74137R.vibrate = new long[]{0};
        l.d(c26450q, "NotificationCompat.Build…etVibrate(longArrayOf(0))");
        return c26450q;
    }
}
