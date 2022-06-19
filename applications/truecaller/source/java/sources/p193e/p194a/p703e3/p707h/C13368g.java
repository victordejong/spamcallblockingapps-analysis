package p193e.p194a.p703e3.p707h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p703e3.p710k.AbstractC13428d;
import p193e.p194a.p804h.p830o0.C14710d;
import p193e.p194a.p804h.p830o0.C14713f;
import s1.z.c.l;
/* renamed from: e.a.e3.h.g */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/g.class */
public final class C13368g implements Object<AbstractC13428d> {

    /* renamed from: a */
    public final Provider<Context> f38804a;

    public C13368g(Provider<Context> provider) {
        this.f38804a = provider;
    }

    public Object get() {
        Context context = (Context) this.f38804a.get();
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C14710d(((C14713f) C18334g0.m15241a(context)).f42215b);
    }
}
