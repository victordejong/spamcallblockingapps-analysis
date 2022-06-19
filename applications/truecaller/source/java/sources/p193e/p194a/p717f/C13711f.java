package p193e.p194a.p717f;

import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p717f.p734z.AbstractC13816f;
import p193e.p194a.p852i.p856b0.AbstractC14992a;
import p193e.p194a.p852i.p896f0.p898k.AbstractC15168a;
import p193e.p194a.p852i.p907v.AbstractC15241a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/f.class */
public final class C13711f implements AbstractC13816f {

    /* renamed from: a */
    public final f f39699a;

    /* renamed from: b */
    public final Provider<CallingSettings> f39700b;

    /* renamed from: c */
    public final Provider<AbstractC15168a> f39701c;

    /* renamed from: d */
    public final Provider<AbstractC15241a> f39702d;

    /* renamed from: e */
    public final C20592g f39703e;

    /* renamed from: f */
    public final Provider<AbstractC14992a> f39704f;

    @Inject
    public C13711f(@Named("Async") f fVar, Provider<CallingSettings> provider, Provider<AbstractC15168a> provider2, Provider<AbstractC15241a> provider3, C20592g c20592g, Provider<AbstractC14992a> provider4) {
        l.e(fVar, "asyncCoroutineContext");
        l.e(provider, "callingSettings");
        l.e(provider2, "campaignsReceiver");
        l.e(provider3, "acsAdCacheManager");
        l.e(c20592g, "featuresRegistry");
        l.e(provider4, "adCampaignsManager");
        this.f39699a = fVar;
        this.f39700b = provider;
        this.f39701c = provider2;
        this.f39702d = provider3;
        this.f39703e = c20592g;
        this.f39704f = provider4;
    }
}
