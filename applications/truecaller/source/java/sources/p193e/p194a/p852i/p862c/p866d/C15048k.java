package p193e.p194a.p852i.p862c.p866d;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.ads.adslogger.AdsPixelData;
import e.m.d.y.n;
import io.agora.rtc.Constants;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.p862c.p863a.AbstractC15006u;
import p193e.p194a.p852i.p862c.p865c.AbstractC15013c;
import p193e.p194a.p852i.p879e.p893k.AbstractC15155a;
import p193e.p194a.p852i.p896f0.AbstractC15161a;
import p193e.p194a.p852i.p906u.AbstractC15238b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.b0.b;
import s1.b0.c;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import x3.a0;
/* renamed from: e.a.i.c.d.k */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k.class */
public final class C15048k implements AbstractC15047j, i0 {

    /* renamed from: l */
    public static final /* synthetic */ l[] f42938l = {C22128a.m8629e0(C15048k.class, "pixelUploadResult", "getPixelUploadResult()Z", 0)};

    /* renamed from: a */
    public y f42939a = d.j((p1) null, 1, (Object) null);

    /* renamed from: b */
    public final c f42940b;

    /* renamed from: c */
    public final a<AbstractC19222c> f42941c;

    /* renamed from: d */
    public final a<C20592g> f42942d;

    /* renamed from: e */
    public final a<AbstractC15161a> f42943e;

    /* renamed from: f */
    public final a<AbstractC15238b> f42944f;

    /* renamed from: g */
    public final a<AbstractC19321u> f42945g;

    /* renamed from: h */
    public final a<AbstractC15013c> f42946h;

    /* renamed from: i */
    public final a<AbstractC15155a> f42947i;

    /* renamed from: j */
    public final a<e.a.i.e.h.a.l> f42948j;

    /* renamed from: k */
    public final f f42949k;

    /* renamed from: e.a.i.c.d.k$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k$a.class */
    public static final class C15049a extends b<Boolean> {
        public C15049a(Object obj, Object obj2) {
            super(obj2);
        }

        /* renamed from: c */
        public boolean m19219c(l<?> lVar, Boolean bool, Boolean bool2) {
            s1.z.c.l.e(lVar, "property");
            bool2.booleanValue();
            return bool.booleanValue();
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$recordAdPixel$1", f = "AdRouterPixelManager.kt", l = {126}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.k$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k$b.class */
    public static final class C15050b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f42950e;

        /* renamed from: f */
        public int f42951f;

        /* renamed from: h */
        public final /* synthetic */ C15055l f42953h;

        /* renamed from: i */
        public final /* synthetic */ String f42954i;

        /* renamed from: j */
        public final /* synthetic */ String f42955j;

        /* renamed from: k */
        public final /* synthetic */ String f42956k;

        @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$recordAdPixel$1$1$1", f = "AdRouterPixelManager.kt", l = {126}, m = "invokeSuspend")
        /* renamed from: e.a.i.c.d.k$b$a */
        /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k$b$a.class */
        public static final class C15051a extends i implements s1.z.b.l<s1.w.d<? super a0<s>>, Object> {

            /* renamed from: e */
            public int f42957e;

            /* renamed from: f */
            public final /* synthetic */ Map f42958f;

            /* renamed from: g */
            public final /* synthetic */ C15050b f42959g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15051a(Map map, s1.w.d dVar, C15050b c15050b) {
                super(1, dVar);
                this.f42958f = map;
                this.f42959g = c15050b;
            }

            /* renamed from: d */
            public final Object m19215d(Object obj) {
                s1.w.d dVar = (s1.w.d) obj;
                s1.z.c.l.e(dVar, "completion");
                return new C15051a(this.f42958f, dVar, this.f42959g).m19213s(s.a);
            }

            /* renamed from: l */
            public final s1.w.d<s> m19214l(s1.w.d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C15051a(this.f42958f, dVar, this.f42959g);
            }

            /* renamed from: s */
            public final Object m19213s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f42957e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    AbstractC15238b abstractC15238b = (AbstractC15238b) C15048k.this.f42944f.get();
                    String str = this.f42959g.f42956k;
                    Map<String, String> map = this.f42958f;
                    this.f42957e = 1;
                    Object mo19015a = abstractC15238b.mo19015a(str, map, this);
                    obj = mo19015a;
                    if (mo19015a == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15050b(C15055l c15055l, String str, String str2, String str3, s1.w.d dVar) {
            super(2, dVar);
            C15048k.this = r5;
            this.f42953h = c15055l;
            this.f42954i = str;
            this.f42955j = str2;
            this.f42956k = str3;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19218i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15050b(this.f42953h, this.f42954i, this.f42955j, this.f42956k, dVar);
        }

        /* renamed from: k */
        public final Object m19217k(Object obj, Object obj2) {
            return m19218i(obj, (s1.w.d) obj2).m19216s(s.a);
        }

        /* renamed from: s */
        public final Object m19216s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f42951f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C15055l c15055l = this.f42953h;
                String str = c15055l.f42987a;
                String str2 = this.f42954i;
                String str3 = c15055l.f42988b;
                String str4 = this.f42955j;
                s1.z.c.l.e(str, "adUnitId");
                s1.z.c.l.e(str2, "partnerId");
                s1.z.c.l.e(str3, "trackerId");
                s1.z.c.l.e(str3, "renderId");
                s1.z.c.l.e(str4, "adType");
                Map e0 = s1.u.i.e0(new k[]{new k("auid", str), new k("partnerId", str2), new k("publisherId", "734f7b23d66740c0abcca5ec9c532200"), new k("trackerId", str3), new k("renderId", str3), new k(RemoteMessageConst.MessageBody.PARAM, str4)});
                String K = n.K();
                if (K != null) {
                    e0.put("gaid", K);
                }
                C15051a c15051a = new C15051a(e0, null, this);
                this.f42950e = e0;
                this.f42951f = 1;
                if (n.m1(c15051a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                Map map = (Map) this.f42950e;
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$recordPixel$1", f = "AdRouterPixelManager.kt", l = {66, 73, 74, 82}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.k$c */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k$c.class */
    public static final class C15052c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f42960e;

        /* renamed from: f */
        public Object f42961f;

        /* renamed from: g */
        public int f42962g;

        /* renamed from: i */
        public final /* synthetic */ AbstractC15006u f42964i;

        /* renamed from: j */
        public final /* synthetic */ List f42965j;

        /* renamed from: k */
        public final /* synthetic */ String f42966k;

        /* renamed from: l */
        public final /* synthetic */ String f42967l;

        /* renamed from: m */
        public final /* synthetic */ String f42968m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15052c(AbstractC15006u abstractC15006u, List list, String str, String str2, String str3, s1.w.d dVar) {
            super(2, dVar);
            C15048k.this = r5;
            this.f42964i = abstractC15006u;
            this.f42965j = list;
            this.f42966k = str;
            this.f42967l = str2;
            this.f42968m = str3;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19212i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15052c(this.f42964i, this.f42965j, this.f42966k, this.f42967l, this.f42968m, dVar);
        }

        /* renamed from: k */
        public final Object m19211k(Object obj, Object obj2) {
            return m19212i(obj, (s1.w.d) obj2).m19210s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0182  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0113 -> B:26:0x0118). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m19210s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 642
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15048k.C15052c.m19210s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$uploadOfflineAdPixels$2$3$1", f = "AdRouterPixelManager.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.k$d */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k$d.class */
    public static final class C15053d extends i implements s1.z.b.l<s1.w.d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f42969e;

        /* renamed from: f */
        public final /* synthetic */ List f42970f;

        /* renamed from: g */
        public final /* synthetic */ e.a.i.e.h.a.l f42971g;

        /* renamed from: h */
        public final /* synthetic */ C15048k f42972h;

        /* renamed from: i */
        public final /* synthetic */ s1.w.d f42973i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15053d(List list, s1.w.d dVar, e.a.i.e.h.a.l lVar, C15048k c15048k, s1.w.d dVar2) {
            super(1, dVar);
            this.f42970f = list;
            this.f42971g = lVar;
            this.f42972h = c15048k;
            this.f42973i = dVar2;
        }

        /* renamed from: d */
        public final Object m19209d(Object obj) {
            return m19208l((s1.w.d) obj).m19207s(s.a);
        }

        /* renamed from: l */
        public final s1.w.d<s> m19208l(s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15053d(this.f42970f, dVar, this.f42971g, this.f42972h, this.f42973i);
        }

        /* renamed from: s */
        public final Object m19207s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f42969e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15238b abstractC15238b = (AbstractC15238b) this.f42972h.f42944f.get();
                List<AdsPixelData> list = this.f42970f;
                this.f42969e = 1;
                Object mo19014b = abstractC15238b.mo19014b(list, this);
                obj = mo19014b;
                if (mo19014b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.valueOf(((a0) obj).b());
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl", f = "AdRouterPixelManager.kt", l = {96, 102, Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "uploadOfflineAdPixels")
    /* renamed from: e.a.i.c.d.k$e */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/k$e.class */
    public static final class C15054e extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f42974d;

        /* renamed from: e */
        public int f42975e;

        /* renamed from: g */
        public Object f42977g;

        /* renamed from: h */
        public Object f42978h;

        /* renamed from: i */
        public Object f42979i;

        /* renamed from: j */
        public Object f42980j;

        /* renamed from: k */
        public Object f42981k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15054e(s1.w.d dVar) {
            super(dVar);
            C15048k.this = r4;
        }

        /* renamed from: s */
        public final Object m19206s(Object obj) {
            this.f42974d = obj;
            this.f42975e |= Integer.MIN_VALUE;
            return C15048k.this.mo19221c(this);
        }
    }

    @Inject
    public C15048k(a<AbstractC19222c> aVar, a<C20592g> aVar2, a<AbstractC15161a> aVar3, a<AbstractC15238b> aVar4, a<AbstractC19321u> aVar5, a<AbstractC15013c> aVar6, a<AbstractC15155a> aVar7, a<e.a.i.e.h.a.l> aVar8, @Named("IO") f fVar) {
        s1.z.c.l.e(aVar, "clock");
        s1.z.c.l.e(aVar2, "featuresRegistry");
        s1.z.c.l.e(aVar3, "adsAnalytics");
        s1.z.c.l.e(aVar4, "adsPixelLoggerRepository");
        s1.z.c.l.e(aVar5, "networkUtil");
        s1.z.c.l.e(aVar6, "adRouterRestManager");
        s1.z.c.l.e(aVar7, "offlineAdsManager");
        s1.z.c.l.e(aVar8, "trackerDao");
        s1.z.c.l.e(fVar, "asyncContext");
        this.f42941c = aVar;
        this.f42942d = aVar2;
        this.f42943e = aVar3;
        this.f42944f = aVar4;
        this.f42945g = aVar5;
        this.f42946h = aVar6;
        this.f42947i = aVar7;
        this.f42948j = aVar8;
        this.f42949k = fVar;
        Boolean bool = Boolean.TRUE;
        this.f42940b = new C15049a(bool, bool);
    }

    /* renamed from: d */
    public static final String m19220d(C15048k c15048k, String str, String str2, String str3, String str4) {
        Objects.requireNonNull(c15048k);
        return r.t(r.t(r.t(str, "%%event%%", str2, false, 4), "%%timestamp%%", str4, false, 4), "%%uuid%%", str3, false, 4);
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15047j
    /* renamed from: a */
    public void mo19223a(String str, C15055l c15055l, String str2, String str3) {
        s1.z.c.l.e(str, "type");
        s1.z.c.l.e(c15055l, "unitConfig");
        s1.z.c.l.e(str2, "partnerId");
        s1.z.c.l.e(str3, "adType");
        C20592g c20592g = (C20592g) this.f42942d.get();
        if (!c20592g.f57798O3.m10941a(c20592g, C20592g.f57695p6[250]).isEnabled()) {
            return;
        }
        d.w2(this, (f) null, (j0) null, new C15050b(c15055l, str2, str3, str, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15047j
    /* renamed from: b */
    public void mo19222b(AbstractC15006u abstractC15006u, String str, String str2, List<String> list, String str3) {
        s1.z.c.l.e(abstractC15006u, "adSource");
        s1.z.c.l.e(str, "renderId");
        s1.z.c.l.e(str2, "pixelType");
        s1.z.c.l.e(list, "trackingUrls");
        s1.z.c.l.e(str3, "event");
        d.w2(this, (f) null, (j0) null, new C15052c(abstractC15006u, list, str3, str, str2, null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03a3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0357 -> B:67:0x035d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0375 -> B:69:0x0386). Please submit an issue!!! */
    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15047j
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19221c(s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15048k.mo19221c(s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f42949k.plus(this.f42939a);
    }
}
