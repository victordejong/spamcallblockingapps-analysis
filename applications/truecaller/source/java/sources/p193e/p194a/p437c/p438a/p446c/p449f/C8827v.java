package p193e.p194a.p437c.p438a.p446c.p449f;

import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.c.f.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/v.class */
public final class C8827v extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C8828w f26916b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8827v(C8828w c8828w) {
        super(1);
        this.f26916b = c8828w;
    }

    /* renamed from: d */
    public Object m28027d(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (booleanValue) {
            C8829x c8829x = this.f26916b.f26917b;
            c8829x.f26919b.mo26813v(true);
            c8829x.f26919b.mo26853b(2);
        }
        C8829x c8829x2 = this.f26916b.f26917b;
        C10530c m28025d = c8829x2.m28025d();
        m28025d.m25826b("switch_now");
        m28025d.m25822f(booleanValue ? "permission_given" : "permission_not_given");
        c8829x2.f26921d.mo26757a(m28025d.m25827a());
        return s.a;
    }
}
