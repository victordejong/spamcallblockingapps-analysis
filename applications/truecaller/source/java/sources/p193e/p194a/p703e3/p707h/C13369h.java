package p193e.p194a.p703e3.p707h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p703e3.p710k.AbstractC13427c;
import p193e.p194a.p804h.p830o0.C14709c;
import p193e.p194a.p804h.p830o0.C14713f;
import s1.z.c.l;
/* renamed from: e.a.e3.h.h */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/h.class */
public final class C13369h implements Object<AbstractC13427c> {

    /* renamed from: a */
    public final Provider<Context> f38805a;

    public C13369h(Provider<Context> provider) {
        this.f38805a = provider;
    }

    public Object get() {
        Context context = (Context) this.f38805a.get();
        l.e(context, AnalyticsConstants.CONTEXT);
        Objects.requireNonNull((C14713f) C18334g0.m15241a(context));
        return new C14709c();
    }
}
