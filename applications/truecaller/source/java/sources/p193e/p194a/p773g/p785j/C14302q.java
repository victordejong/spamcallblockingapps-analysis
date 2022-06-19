package p193e.p194a.p773g.p785j;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1114o5.p1119c2.C18995r0;
import s1.z.c.l;
/* renamed from: e.a.g.j.q */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/q.class */
public final class C14302q {

    /* renamed from: a */
    public final Context f41375a;

    @Inject
    public C14302q(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f41375a = context;
    }

    /* renamed from: a */
    public Integer m20279a() {
        AbstractC18977k.C18980c m14264b = C18995r0.m14264b(this.f41375a);
        l.d(m14264b, "PartnerUtil.getTheme(context)");
        if (!m14264b.m14266a()) {
            return null;
        }
        return Integer.valueOf(m14264b.f53122a);
    }
}
