package p193e.p194a.p773g;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p773g.p780e.AbstractC14241e;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p856b0.AbstractC14992a;
import p193e.p194a.p852i.p862c.p866d.AbstractC15025a;
import p193e.p194a.p852i.p896f0.AbstractC15161a;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15167c;
import p193e.p194a.p852i.p896f0.p898k.AbstractC15168a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.g.b */
/* loaded from: classes4-dex2jar.jar:e/a/g/b.class */
public final class C14233b implements AbstractC14241e {

    /* renamed from: a */
    public String f41122a;

    /* renamed from: b */
    public final Context f41123b;

    /* renamed from: c */
    public final Provider<AbstractC8438a> f41124c;

    /* renamed from: d */
    public final AbstractC15163d f41125d;

    /* renamed from: e */
    public final AbstractC15168a f41126e;

    /* renamed from: f */
    public final AbstractC14992a f41127f;

    /* renamed from: g */
    public final C20592g f41128g;

    /* renamed from: h */
    public final Provider<AbstractC15161a> f41129h;

    /* renamed from: i */
    public final Provider<AbstractC15167c> f41130i;

    /* renamed from: j */
    public final Provider<AbstractC15025a> f41131j;

    @e(c = "com.truecaller.acs.AcsAdsProviderImpl", f = "AcsAdsProviderImpl.kt", l = {55, 55}, m = "fetchAdCampaigns")
    /* renamed from: e.a.g.b$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/b$a.class */
    public static final class C14234a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41132d;

        /* renamed from: e */
        public int f41133e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14234a(d dVar) {
            super(dVar);
            C14233b.this = r4;
        }

        /* renamed from: s */
        public final Object m20335s(Object obj) {
            this.f41132d = obj;
            this.f41133e |= Integer.MIN_VALUE;
            return C14233b.this.m20339b(this);
        }
    }

    @Inject
    public C14233b(Context context, Provider<AbstractC8438a> provider, AbstractC15163d abstractC15163d, AbstractC15168a abstractC15168a, AbstractC14992a abstractC14992a, C20592g c20592g, Provider<AbstractC15161a> provider2, Provider<AbstractC15167c> provider3, Provider<AbstractC15025a> provider4) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(provider, "accountSettings");
        l.e(abstractC15163d, "adsProvider");
        l.e(abstractC15168a, "campaignReceiver");
        l.e(abstractC14992a, "adCampaignsManager");
        l.e(c20592g, "featuresRegistry");
        l.e(provider2, "adsAnalyticsProvider");
        l.e(provider3, "adUnitIdManagerProvider");
        l.e(provider4, "adRouterProvider");
        this.f41123b = context;
        this.f41124c = provider;
        this.f41125d = abstractC15163d;
        this.f41126e = abstractC15168a;
        this.f41127f = abstractC14992a;
        this.f41128g = c20592g;
        this.f41129h = provider2;
        this.f41130i = provider3;
        this.f41131j = provider4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
        if ((r0 / r0.getDisplayMetrics().density) >= 250.0f) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20340a(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "afterCallScreen"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 != 0) goto L4d
            r0 = r4
            java.lang.String r1 = "popupAfterCallScreen2.0"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 != 0) goto L4d
            r0 = r4
            java.lang.String r1 = "fullScreenAfterCallScreen"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L48
            r0 = r3
            android.content.Context r0 = r0.f41123b
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131165805(0x7f07026d, float:1.7945837E38)
            float r0 = r0.getDimension(r1)
            r5 = r0
            r0 = r3
            android.content.Context r0 = r0.f41123b
            android.content.res.Resources r0 = r0.getResources()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "context.resources"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r4
            android.util.DisplayMetrics r1 = r1.getDisplayMetrics()
            float r1 = r1.density
            float r0 = r0 / r1
            r1 = 1132068864(0x437a0000, float:250.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L48
            goto L4d
        L48:
            r0 = 0
            r6 = r0
            goto L4f
        L4d:
            r0 = 1
            r6 = r0
        L4f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.C14233b.m20340a(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m20339b(s1.w.d<? super com.truecaller.ads.campaigns.AdCampaigns> r7) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.C14233b.m20339b(s1.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public AbstractC15025a m20338c() {
        Object obj = this.f41131j.get();
        l.d(obj, "adRouterProvider.get()");
        return (AbstractC15025a) obj;
    }

    /* renamed from: d */
    public AbstractC15167c m20337d() {
        Object obj = this.f41130i.get();
        l.d(obj, "adUnitIdManagerProvider.get()");
        return (AbstractC15167c) obj;
    }

    /* renamed from: e */
    public boolean m20336e(C15222s c15222s) {
        l.e(c15222s, "unitConfig");
        return this.f41125d.m19089c(c15222s);
    }
}
