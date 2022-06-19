package p193e.p194a.p739f0.p742f;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p194a.p739f0.p743g.AbstractC13885a;
import p193e.p194a.p739f0.p743g.C13886b;
import s1.z.c.l;
/* renamed from: e.a.f0.f.d */
/* loaded from: classes13-dex2jar.jar:e/a/f0/f/d.class */
public final class C13883d implements Object<AbstractC13885a> {

    /* renamed from: a */
    public final Provider<Context> f40261a;

    /* renamed from: b */
    public final Provider<SharedPreferences> f40262b;

    public C13883d(Provider<Context> provider, Provider<SharedPreferences> provider2) {
        this.f40261a = provider;
        this.f40262b = provider2;
    }

    public Object get() {
        Context context = (Context) this.f40261a.get();
        SharedPreferences sharedPreferences = (SharedPreferences) this.f40262b.get();
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sharedPreferences, "sharedPreferences");
        C13886b c13886b = new C13886b(sharedPreferences);
        c13886b.m13467n3(context);
        return c13886b;
    }
}
