package p193e.p194a.p717f;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1114o5.p1119c2.C18995r0;
import s1.z.c.l;
/* renamed from: e.a.f.q */
/* loaded from: classes10-dex2jar.jar:e/a/f/q.class */
public final class C13723q {

    /* renamed from: a */
    public final Context f39753a;

    @Inject
    public C13723q(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f39753a = context;
    }

    /* renamed from: a */
    public Integer m21248a() {
        AbstractC18977k.C18980c m14264b = C18995r0.m14264b(this.f39753a);
        l.d(m14264b, "PartnerUtil.getTheme(context)");
        if (!m14264b.m14266a()) {
            return null;
        }
        return Integer.valueOf(m14264b.f53122a);
    }
}
