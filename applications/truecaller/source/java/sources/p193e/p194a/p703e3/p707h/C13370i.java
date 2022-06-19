package p193e.p194a.p703e3.p707h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p703e3.p710k.AbstractC13429e;
import p193e.p194a.p804h.p830o0.C14713f;
import s1.z.c.l;
/* renamed from: e.a.e3.h.i */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/i.class */
public final class C13370i implements Object<AbstractC13429e> {

    /* renamed from: a */
    public final Provider<Context> f38806a;

    public C13370i(Provider<Context> provider) {
        this.f38806a = provider;
    }

    /* renamed from: a */
    public static AbstractC13429e m21875a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        AbstractC13429e mo12374g4 = ((C14713f) C18334g0.m15241a(context)).m19739a().mo12374g4();
        l.d(mo12374g4, "trueGraph.callAlertNotificationHelper()");
        return mo12374g4;
    }

    public Object get() {
        return m21875a((Context) this.f38806a.get());
    }
}
