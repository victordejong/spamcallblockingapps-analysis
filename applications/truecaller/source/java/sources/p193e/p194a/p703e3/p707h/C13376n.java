package p193e.p194a.p703e3.p707h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p703e3.p710k.AbstractC13426b;
import p193e.p194a.p804h.p830o0.C14707b;
import p193e.p194a.p804h.p830o0.C14713f;
import s1.z.c.l;
/* renamed from: e.a.e3.h.n */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/n.class */
public final class C13376n implements Object<AbstractC13426b> {

    /* renamed from: a */
    public final Provider<Context> f38812a;

    public C13376n(Provider<Context> provider) {
        this.f38812a = provider;
    }

    public Object get() {
        Context context = (Context) this.f38812a.get();
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C14707b(((C14713f) C18334g0.m15241a(context)).f42215b);
    }
}
