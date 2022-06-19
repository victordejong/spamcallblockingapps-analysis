package p193e.p194a.p372b0.p394b.p400j;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import p193e.p194a.p372b0.p394b.C8369c;
import s1.z.c.l;
import u3.b0;
import u3.k0;
/* renamed from: e.a.b0.b.j.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/d.class */
public final class C8399d implements b0 {

    /* renamed from: a */
    public final Context f26078a;

    public C8399d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f26078a = context.getApplicationContext();
    }

    /* renamed from: a */
    public k0 m28612a(b0.a aVar) throws IOException {
        l.e(aVar, "chain");
        C8369c c8369c = C8369c.f25731b;
        Context context = this.f26078a;
        l.d(context, "appContext");
        c8369c.m28630a(context);
        return aVar.a(aVar.request());
    }
}
