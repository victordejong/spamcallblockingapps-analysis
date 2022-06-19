package p193e.p194a.p372b0.p412h;

import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import e.m.d.b0.k;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p613c0.C10912h;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b0.h.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/h/a.class */
public final class C8445a implements AbstractC20235a {

    /* renamed from: a */
    public final Provider<k> f26147a;

    /* renamed from: b */
    public final C8447c f26148b;

    /* renamed from: c */
    public final a<C10912h> f26149c;

    @Inject
    public C8445a(Provider<k> provider, C8447c c8447c, a<C10912h> aVar) {
        l.e(provider, "firebaseRemoteConfig");
        l.e(c8447c, "settings");
        l.e(aVar, "experimentRegistry");
        this.f26147a = provider;
        this.f26148b = c8447c;
        this.f26149c = aVar;
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    /* renamed from: a */
    public boolean mo11313a(String str, boolean z) {
        l.e(str, AnalyticsConstants.KEY);
        Boolean valueOf = Boolean.valueOf(getString(str));
        l.d(valueOf, "java.lang.Boolean.valueOf(boolString)");
        return valueOf.booleanValue();
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    /* renamed from: b */
    public void mo11312b() {
        for (AbstractC10908f abstractC10908f : i.S0(((C10912h) this.f26149c.get()).f32399a)) {
            String str = abstractC10908f.mo25497a().f32396b;
            String c = ((k) this.f26147a.get()).c(str);
            l.d(c, "firebaseRemoteConfig.get().getString(variantKey)");
            if (!this.f26148b.contains(str)) {
                this.f26148b.putString(str, c);
            }
        }
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    public int getInt(String str, int i) {
        l.e(str, AnalyticsConstants.KEY);
        try {
            return Integer.parseInt(getString(str));
        } catch (NumberFormatException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return i;
        }
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    public long getLong(String str, long j) {
        l.e(str, AnalyticsConstants.KEY);
        try {
            return Long.parseLong(getString(str));
        } catch (NumberFormatException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return j;
        }
    }

    @Override // p193e.p194a.p1220s4.AbstractC20235a
    public String getString(String str) {
        l.e(str, AnalyticsConstants.KEY);
        return this.f26148b.getString(str, "");
    }
}
