package p193e.p194a.p703e3.p707h;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.call_alert.utils.calling_cache.CallingCacheDatabase;
import javax.inject.Provider;
import p1727n3.p1751c0.AbstractC25677q;
import p193e.p194a.p703e3.p710k.p711s.AbstractC13465a;
import s1.z.c.l;
/* renamed from: e.a.e3.h.k */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/k.class */
public final class C13373k implements Object<AbstractC13465a> {

    /* renamed from: a */
    public final Provider<Context> f38808a;

    public C13373k(Provider<Context> provider) {
        this.f38808a = provider;
    }

    public Object get() {
        CallingCacheDatabase callingCacheDatabase;
        AbstractC13465a mo35802a;
        Context context = (Context) this.f38808a.get();
        l.e(context, AnalyticsConstants.CONTEXT);
        synchronized (CallingCacheDatabase.f10545c) {
            l.e(context, AnalyticsConstants.CONTEXT);
            if (CallingCacheDatabase.f10543a == null) {
                AbstractC25677q.C25678a m43274R = MediaSessionCompat.m43274R(context.getApplicationContext(), CallingCacheDatabase.class, "calling-cache.db");
                m43274R.m3065b(CallingCacheDatabase.f10544b);
                CallingCacheDatabase.f10543a = (CallingCacheDatabase) m43274R.m3064c();
            }
            callingCacheDatabase = CallingCacheDatabase.f10543a;
        }
        if (callingCacheDatabase == null || (mo35802a = callingCacheDatabase.mo35802a()) == null) {
            throw new IllegalArgumentException("Cannot initialize calling cache database");
        }
        return mo35802a;
    }
}
