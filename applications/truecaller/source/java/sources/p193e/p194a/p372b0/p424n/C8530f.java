package p193e.p194a.p372b0.p424n;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p194a.p372b0.p394b.p404m.C8410d;
import s1.z.c.l;
/* renamed from: e.a.b0.n.f */
/* loaded from: classes7-dex2jar.jar:e/a/b0/n/f.class */
public final class C8530f implements AbstractC8529e {

    /* renamed from: a */
    public final Context f26321a;

    @Inject
    public C8530f(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f26321a = context;
    }

    @Override // p193e.p194a.p372b0.p424n.AbstractC8529e
    /* renamed from: a */
    public void mo28413a() {
        C27062a.m968b(this.f26321a).m966d(new Intent(C8410d.f26088a));
    }
}
