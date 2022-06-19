package p193e.p194a.p852i.p862c.p866d;

import com.truecaller.ads.adsrouter.model.C2813Ad;
import com.truecaller.ads.adsrouter.model.Size;
import e.a.i.d0.c0.m;
import e.a.i.v.f;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p852i.p907v.C15244i;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.i.c.d.h */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/d/h.class */
public final class C15041h implements AbstractC15040g {

    /* renamed from: a */
    public final a<f> f42916a;

    /* renamed from: b */
    public final a<m> f42917b;

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterCacheManagerImpl", f = "AdRouterCacheManager.kt", l = {34, 35}, m = "getAd")
    /* renamed from: e.a.i.c.d.h$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/h$a.class */
    public static final class C15042a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42918d;

        /* renamed from: e */
        public int f42919e;

        /* renamed from: g */
        public Object f42921g;

        /* renamed from: h */
        public Object f42922h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15042a(d dVar) {
            super(dVar);
            C15041h.this = r4;
        }

        /* renamed from: s */
        public final Object m19227s(Object obj) {
            this.f42918d = obj;
            this.f42919e |= Integer.MIN_VALUE;
            return C15041h.this.mo19231d(null, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterCacheManagerImpl", f = "AdRouterCacheManager.kt", l = {45, 46}, m = "invalidate")
    /* renamed from: e.a.i.c.d.h$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/h$b.class */
    public static final class C15043b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42923d;

        /* renamed from: e */
        public int f42924e;

        /* renamed from: g */
        public Object f42926g;

        /* renamed from: h */
        public Object f42927h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15043b(d dVar) {
            super(dVar);
            C15041h.this = r4;
        }

        /* renamed from: s */
        public final Object m19226s(Object obj) {
            this.f42923d = obj;
            this.f42924e |= Integer.MIN_VALUE;
            return C15041h.this.mo19228g(null, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterCacheManagerImpl", f = "AdRouterCacheManager.kt", l = {50, 51}, m = "invalidate")
    /* renamed from: e.a.i.c.d.h$c */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/h$c.class */
    public static final class C15044c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42928d;

        /* renamed from: e */
        public int f42929e;

        /* renamed from: g */
        public Object f42931g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15044c(d dVar) {
            super(dVar);
            C15041h.this = r4;
        }

        /* renamed from: s */
        public final Object m19225s(Object obj) {
            this.f42928d = obj;
            this.f42929e |= Integer.MIN_VALUE;
            return C15041h.this.mo19230e(this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterCacheManagerImpl", f = "AdRouterCacheManager.kt", l = {55, 57}, m = "isAdExpired")
    /* renamed from: e.a.i.c.d.h$d */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/h$d.class */
    public static final class C15045d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42932d;

        /* renamed from: e */
        public int f42933e;

        /* renamed from: g */
        public Object f42935g;

        /* renamed from: h */
        public Object f42936h;

        /* renamed from: i */
        public boolean f42937i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15045d(d dVar) {
            super(dVar);
            C15041h.this = r4;
        }

        /* renamed from: s */
        public final Object m19224s(Object obj) {
            this.f42932d = obj;
            this.f42933e |= Integer.MIN_VALUE;
            return C15041h.this.m19232a(null, this);
        }
    }

    @Inject
    public C15041h(a<f> aVar, a<m> aVar2) {
        l.e(aVar, "cachedAdsDao");
        l.e(aVar2, "partnerAdsDao");
        this.f42916a = aVar;
        this.f42917b = aVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f1  */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m19232a(java.lang.String r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15041h.m19232a(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0119  */
    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15040g
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19231d(java.lang.String r29, s1.w.d<? super p193e.p194a.p852i.p862c.p865c.AbstractC15023h<com.truecaller.ads.adsrouter.model.C2813Ad>> r30) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15041h.mo19231d(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bf  */
    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15040g
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19230e(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p852i.p862c.p866d.C15041h.C15044c
            if (r0 == 0) goto L25
            r0 = r6
            e.a.i.c.d.h$c r0 = (p193e.p194a.p852i.p862c.p866d.C15041h.C15044c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f42929e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f42929e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.i.c.d.h$c r0 = new e.a.i.c.d.h$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f42928d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f42929e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6f
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L5f
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L55
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lc2
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5f:
            r0 = r6
            java.lang.Object r0 = r0.f42931g
            e.a.i.c.d.h r0 = (p193e.p194a.p852i.p862c.p866d.C15041h) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L9c
        L6f:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            o3.a<e.a.i.v.f> r0 = r0.f42916a
            java.lang.Object r0 = r0.get()
            e.a.i.v.f r0 = (e.a.i.v.f) r0
            r7 = r0
            r0 = r6
            r1 = r5
            r0.f42931g = r1
            r0 = r6
            r1 = 1
            r0.f42929e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.a(r1)
            r1 = r10
            if (r0 != r1) goto L9a
            r0 = r10
            return r0
        L9a:
            r0 = r5
            r7 = r0
        L9c:
            r0 = r7
            o3.a<e.a.i.d0.c0.m> r0 = r0.f42917b
            java.lang.Object r0 = r0.get()
            e.a.i.d0.c0.m r0 = (e.a.i.d0.c0.m) r0
            r7 = r0
            r0 = r6
            r1 = 0
            r0.f42931g = r1
            r0 = r6
            r1 = 2
            r0.f42929e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.a(r1)
            r1 = r10
            if (r0 != r1) goto Lc2
            r0 = r10
            return r0
        Lc2:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15041h.mo19230e(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15040g
    /* renamed from: f */
    public Object mo19229f(C2813Ad c2813Ad, String str, d<? super s> dVar) {
        f fVar = (f) this.f42916a.get();
        l.e(c2813Ad, "$this$mapToEntity");
        l.e(str, "placement");
        String adType = c2813Ad.getAdType();
        String htmlContent = c2813Ad.getHtmlContent();
        String videoUrl = c2813Ad.getVideoUrl();
        String logo = c2813Ad.getLogo();
        String image = c2813Ad.getImage();
        String title = c2813Ad.getTitle();
        String body = c2813Ad.getBody();
        String landingUrl = c2813Ad.getLandingUrl();
        String cta = c2813Ad.getCta();
        String ecpm = c2813Ad.getEcpm();
        String rawEcpm = c2813Ad.getRawEcpm();
        String advertiserName = c2813Ad.getAdvertiserName();
        Size size = c2813Ad.getSize();
        Integer valueOf = size != null ? Integer.valueOf(size.getHeight()) : null;
        Size size2 = c2813Ad.getSize();
        Integer valueOf2 = size2 != null ? Integer.valueOf(size2.getWidth()) : null;
        List<String> click = c2813Ad.getTracking().getClick();
        List<String> impression = c2813Ad.getTracking().getImpression();
        List<String> viewImpression = c2813Ad.getTracking().getViewImpression();
        List<String> videoImpression = c2813Ad.getTracking().getVideoImpression();
        int ttl = c2813Ad.getMeta().getTtl();
        b G = new b().G(c2813Ad.getMeta().getTtl());
        l.d(G, "DateTime.now().plusMinutes(meta.ttl)");
        Object t = fVar.t(new C15244i(str, adType, htmlContent, videoUrl, logo, image, title, body, landingUrl, cta, ecpm, rawEcpm, advertiserName, valueOf, valueOf2, click, impression, viewImpression, videoImpression, ttl, ((w3.b.a.e0.e) G).a, c2813Ad.getMeta().getPartner(), c2813Ad.getMeta().getCampaignType(), c2813Ad.getMeta().getPublisher(), c2813Ad.getMeta().getPartnerLogo(), c2813Ad.getMeta().getPartnerPolicy()), str, dVar);
        return t == s1.w.j.a.a ? t : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0103  */
    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15040g
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19228g(java.lang.String r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15041h.mo19228g(java.lang.String, s1.w.d):java.lang.Object");
    }
}
