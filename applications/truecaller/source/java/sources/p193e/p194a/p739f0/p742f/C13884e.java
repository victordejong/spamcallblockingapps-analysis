package p193e.p194a.p739f0.p742f;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.f0.f.e */
/* loaded from: classes13-dex2jar.jar:e/a/f0/f/e.class */
public final class C13884e implements Object<SharedPreferences> {

    /* renamed from: a */
    public final Provider<Context> f40263a;

    public C13884e(Provider<Context> provider) {
        this.f40263a = provider;
    }

    public Object get() {
        return C22128a.m8731B0((Context) this.f40263a.get(), AnalyticsConstants.CONTEXT, "social_media.prefs", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
    }
}
