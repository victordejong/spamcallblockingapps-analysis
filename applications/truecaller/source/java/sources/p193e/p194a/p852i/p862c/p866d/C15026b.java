package p193e.p194a.p852i.p862c.p866d;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.mediation.analytics.InternalEventStatus;
import com.truecaller.ads.provider.fetch.AdsConfigurationManager;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p862c.p863a.AbstractC15006u;
import p193e.p194a.p852i.p862c.p864b.C15009a;
import p193e.p194a.p852i.p870d0.AbstractC15104a;
import p193e.p194a.p852i.p879e.p893k.AbstractC15155a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.i.c.d.b */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b.class */
public final class C15026b implements AbstractC15025a, i0 {

    /* renamed from: a */
    public y f42859a = d.j((p1) null, 1, (Object) null);

    /* renamed from: b */
    public final Context f42860b;

    /* renamed from: c */
    public final AdsConfigurationManager f42861c;

    /* renamed from: d */
    public final AbstractC15155a f42862d;

    /* renamed from: e */
    public final AbstractC15047j f42863e;

    /* renamed from: f */
    public final AbstractC19321u f42864f;

    /* renamed from: g */
    public final AbstractC15037e f42865g;

    /* renamed from: h */
    public final a<C20592g> f42866h;

    /* renamed from: i */
    public final a<AbstractC15104a> f42867i;

    /* renamed from: j */
    public final AbstractC19222c f42868j;

    /* renamed from: k */
    public final AbstractC19462a f42869k;

    /* renamed from: l */
    public final AbstractC19230g f42870l;

    /* renamed from: m */
    public final f f42871m;

    /* renamed from: n */
    public final f f42872n;

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl", f = "AdRouterAdsProvider.kt", l = {210}, m = "downloadAd")
    /* renamed from: e.a.i.c.d.b$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$a.class */
    public static final class C15027a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42873d;

        /* renamed from: e */
        public int f42874e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15027a(s1.w.d dVar) {
            super(dVar);
            C15026b.this = r4;
        }

        /* renamed from: s */
        public final Object m19260s(Object obj) {
            this.f42873d = obj;
            this.f42874e |= Integer.MIN_VALUE;
            return C15026b.this.mo19265e(null, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$dropCachedAd$1", f = "AdRouterAdsProvider.kt", l = {230}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.b$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$b.class */
    public static final class C15028b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f42876e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15028b(s1.w.d dVar) {
            super(2, dVar);
            C15026b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19259i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C15028b(dVar);
        }

        /* renamed from: k */
        public final Object m19258k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C15028b(dVar).m19257s(s.a);
        }

        /* renamed from: s */
        public final Object m19257s(Object obj) {
            s1.w.j.a aVar = s.a;
            s1.w.j.a aVar2 = s1.w.j.a.a;
            int i = this.f42876e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15037e abstractC15037e = C15026b.this.f42865g;
                this.f42876e = 1;
                s1.w.j.a mo19230e = ((AbstractC15040g) ((C15038f) abstractC15037e).f42909b.get()).mo19230e(this);
                if (mo19230e != aVar2) {
                    mo19230e = aVar;
                }
                if (mo19230e == aVar2) {
                    return aVar2;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return aVar;
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$dropOfflineAd$1", f = "AdRouterAdsProvider.kt", l = {234}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.b$c */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$c.class */
    public static final class C15029c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f42878e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15029c(s1.w.d dVar) {
            super(2, dVar);
            C15026b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19256i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C15029c(dVar);
        }

        /* renamed from: k */
        public final Object m19255k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C15029c(dVar).m19254s(s.a);
        }

        /* renamed from: s */
        public final Object m19254s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f42878e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15155a abstractC15155a = C15026b.this.f42862d;
                this.f42878e = 1;
                if (abstractC15155a.m19120e(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$invalidate$1", f = "AdRouterAdsProvider.kt", l = {226}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.b$d */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$d.class */
    public static final class C15030d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f42880e;

        /* renamed from: g */
        public final /* synthetic */ String[] f42882g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15030d(String[] strArr, s1.w.d dVar) {
            super(2, dVar);
            C15026b.this = r5;
            this.f42882g = strArr;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19253i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C15030d(this.f42882g, dVar);
        }

        /* renamed from: k */
        public final Object m19252k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C15030d(this.f42882g, dVar).m19251s(s.a);
        }

        /* renamed from: s */
        public final Object m19251s(Object obj) {
            s1.w.j.a aVar = s.a;
            s1.w.j.a aVar2 = s1.w.j.a.a;
            int i = this.f42880e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15037e abstractC15037e = C15026b.this.f42865g;
                String obj2 = s1.u.i.g(this.f42882g).toString();
                this.f42880e = 1;
                s1.w.j.a mo19228g = ((AbstractC15040g) ((C15038f) abstractC15037e).f42909b.get()).mo19228g(obj2, this);
                if (mo19228g != aVar2) {
                    mo19228g = aVar;
                }
                if (mo19228g == aVar2) {
                    return aVar2;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return aVar;
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$loadAd$1", f = "AdRouterAdsProvider.kt", l = {94, 110}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.b$e */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$e.class */
    public static final class C15031e extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f42883e;

        /* renamed from: f */
        public Object f42884f;

        /* renamed from: g */
        public Object f42885g;

        /* renamed from: h */
        public long f42886h;

        /* renamed from: i */
        public int f42887i;

        /* renamed from: k */
        public final /* synthetic */ C15055l f42889k;

        /* renamed from: l */
        public final /* synthetic */ boolean f42890l;

        /* renamed from: m */
        public final /* synthetic */ AbstractC15046i f42891m;

        @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$loadAd$1$1", f = "AdRouterAdsProvider.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.i.c.d.b$e$a */
        /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$e$a.class */
        public static final class C15032a extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f42893f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15032a(c0 c0Var, s1.w.d dVar) {
                super(2, dVar);
                C15031e.this = r5;
                this.f42893f = c0Var;
            }

            /* renamed from: i */
            public final s1.w.d<s> m19247i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C15032a(this.f42893f, dVar);
            }

            /* renamed from: k */
            public final Object m19246k(Object obj, Object obj2) {
                s sVar = s.a;
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                C15031e c15031e = C15031e.this;
                c0 c0Var = this.f42893f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                Object obj3 = c0Var.a;
                if (obj3 instanceof AbstractC15003c) {
                    c15031e.f42891m.mo10600a((AbstractC15003c) obj3);
                } else if (obj3 instanceof C15009a) {
                    c15031e.f42891m.mo10599b((C15009a) obj3);
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m19245s(Object obj) {
                C25225a.m3932a3(obj);
                Object obj2 = this.f42893f.a;
                if (obj2 instanceof AbstractC15003c) {
                    C15031e.this.f42891m.mo10600a((AbstractC15003c) obj2);
                } else if (obj2 instanceof C15009a) {
                    C15031e.this.f42891m.mo10599b((C15009a) obj2);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15031e(C15055l c15055l, boolean z, AbstractC15046i abstractC15046i, s1.w.d dVar) {
            super(2, dVar);
            C15026b.this = r5;
            this.f42889k = c15055l;
            this.f42890l = z;
            this.f42891m = abstractC15046i;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19250i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            C15031e c15031e = new C15031e(this.f42889k, this.f42890l, this.f42891m, dVar);
            c15031e.f42883e = obj;
            return c15031e;
        }

        /* renamed from: k */
        public final Object m19249k(Object obj, Object obj2) {
            return m19250i(obj, (s1.w.d) obj2).m19248s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:111:0x03e0  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x049a  */
        /* JADX WARN: Type inference failed for: r0v215, types: [long] */
        /* JADX WARN: Type inference failed for: r0v255, types: [long] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m19248s(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 1184
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15026b.C15031e.m19248s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl", f = "AdRouterAdsProvider.kt", l = {243, 245}, m = "loadAd")
    /* renamed from: e.a.i.c.d.b$f */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$f.class */
    public static final class C15033f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42894d;

        /* renamed from: e */
        public int f42895e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15033f(s1.w.d dVar) {
            super(dVar);
            C15026b.this = r4;
        }

        /* renamed from: s */
        public final Object m19244s(Object obj) {
            this.f42894d = obj;
            this.f42895e |= Integer.MIN_VALUE;
            return C15026b.this.m19262h(null, false, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$syncOfflineAds$1", f = "AdRouterAdsProvider.kt", l = {238}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.d.b$g */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/d/b$g.class */
    public static final class C15034g extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f42897e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15034g(s1.w.d dVar) {
            super(2, dVar);
            C15026b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m19243i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C15034g(dVar);
        }

        /* renamed from: k */
        public final Object m19242k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C15034g(dVar).m19241s(s.a);
        }

        /* renamed from: s */
        public final Object m19241s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f42897e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15155a abstractC15155a = C15026b.this.f42862d;
                this.f42897e = 1;
                if (abstractC15155a.m19121d(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C15026b(Context context, AdsConfigurationManager adsConfigurationManager, AbstractC15155a abstractC15155a, AbstractC15047j abstractC15047j, AbstractC19321u abstractC19321u, AbstractC15037e abstractC15037e, a<C20592g> aVar, a<AbstractC15104a> aVar2, AbstractC19222c abstractC19222c, AbstractC19462a abstractC19462a, AbstractC19230g abstractC19230g, @Named("UI") f fVar, @Named("IO") f fVar2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(adsConfigurationManager, "adsConfigurationManager");
        l.e(abstractC15155a, "offlineAdsManager");
        l.e(abstractC15047j, "adRouterPixelManager");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC15037e, "adsRepository");
        l.e(aVar, "featuresRegistry");
        l.e(aVar2, "mediationManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        this.f42860b = context;
        this.f42861c = adsConfigurationManager;
        this.f42862d = abstractC15155a;
        this.f42863e = abstractC15047j;
        this.f42864f = abstractC19321u;
        this.f42865g = abstractC15037e;
        this.f42866h = aVar;
        this.f42867i = aVar2;
        this.f42868j = abstractC19222c;
        this.f42869k = abstractC19462a;
        this.f42870l = abstractC19230g;
        this.f42871m = fVar;
        this.f42872n = fVar2;
    }

    /* renamed from: i */
    public static void m19261i(C15026b c15026b, InternalEventStatus internalEventStatus, long j, C15055l c15055l, String str, String str2, String str3, String str4, AbstractC15006u abstractC15006u, String str5, String str6, Integer num, String str7, int i) {
        if ((i & 8) != 0) {
            str = null;
        }
        if ((i & 16) != 0) {
            str2 = null;
        }
        if ((i & 32) != 0) {
            str3 = null;
        }
        if ((i & 64) != 0) {
            str4 = null;
        }
        if ((i & 512) != 0) {
            str6 = null;
        }
        if ((i & 1024) != 0) {
            num = null;
        }
        if ((i & 2048) != 0) {
            str7 = null;
        }
        Objects.requireNonNull(c15026b);
        List<String> list = c15055l.f42989c;
        String name = internalEventStatus.name();
        long mo13821a = c15026b.f42868j.mo13821a();
        List<String> list2 = c15055l.f42991e;
        String str8 = null;
        if (list2 != null) {
            str8 = (String) s1.u.i.B(list2);
        }
        c15026b.f42869k.mo13274b(new e.a.i.d0.b0.a(list, name, mo13821a - j, String.valueOf(str8), str5, c15026b.f42864f.mo13431b(), str, str6, str2, num, str7, str3, str4, c15055l.f42988b, abstractC15006u, c15026b.f42870l.mo13787j(), c15026b.f42870l.mo13776u(), c15055l.f42995i, (List) null, (String) null, 786432));
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    /* renamed from: a */
    public void mo19269a() {
        d.w2(this, (f) null, (j0) null, new C15034g(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    /* renamed from: b */
    public void mo19268b() {
        d.w2(this, (f) null, (j0) null, new C15029c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    /* renamed from: c */
    public void mo19267c(String... strArr) {
        l.e(strArr, "placement");
        d.w2(this, (f) null, (j0) null, new C15030d(strArr, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    public void cancel() {
        if (this.f42859a.b()) {
            d.Y(this.f42859a, (CancellationException) null, 1, (Object) null);
        }
        C20592g c20592g = (C20592g) this.f42866h.get();
        if (c20592g.f57791N3.m10941a(c20592g, C20592g.f57695p6[249]).isEnabled()) {
            ((AbstractC15104a) this.f42867i.get()).destroy();
        }
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    /* renamed from: d */
    public void mo19266d(C15055l c15055l, AbstractC15046i abstractC15046i, boolean z) {
        l.e(c15055l, "unitConfig");
        l.e(abstractC15046i, "listener");
        if (!this.f42861c.m35961b()) {
            return;
        }
        d.w2(this, (f) null, (j0) null, new C15031e(c15055l, z, abstractC15046i, null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1  */
    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19265e(p193e.p194a.p852i.p862c.p866d.C15055l r6, s1.w.d<? super com.truecaller.ads.adsrouter.model.C2813Ad> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p852i.p862c.p866d.C15026b.C15027a
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.i.c.d.b$a r0 = (p193e.p194a.p852i.p862c.p866d.C15026b.C15027a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f42874e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f42874e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.i.c.d.b$a r0 = new e.a.i.c.d.b$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f42873d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r7
            int r0 = r0.f42874e
            r9 = r0
            r0 = 0
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L68
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r6 = r0
            goto La3
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L68:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            com.truecaller.ads.provider.fetch.AdsConfigurationManager r0 = r0.f42861c
            boolean r0 = r0.m35961b()
            if (r0 != 0) goto L7b
            r0 = 0
            return r0
        L7b:
            r0 = r5
            e.a.i.c.d.e r0 = r0.f42865g
            r10 = r0
            r0 = r5
            r1 = r6
            java.util.Map r0 = r0.m19263g(r1)
            r6 = r0
            r0 = r7
            r1 = 1
            r0.f42874e = r1
            r0 = r10
            e.a.i.c.d.f r0 = (p193e.p194a.p852i.p862c.p866d.C15038f) r0
            r1 = r6
            r2 = 0
            r3 = r7
            java.lang.Object r0 = r0.m19234a(r1, r2, r3)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r11
            if (r0 != r1) goto La3
            r0 = r11
            return r0
        La3:
            r0 = r6
            e.a.i.c.c.h r0 = (p193e.p194a.p852i.p862c.p865c.AbstractC15023h) r0
            r7 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p852i.p862c.p865c.C15024i
            if (r0 == 0) goto Lbc
            r0 = r7
            e.a.i.c.c.i r0 = (p193e.p194a.p852i.p862c.p865c.C15024i) r0
            R r0 = r0.f42857a
            com.truecaller.ads.adsrouter.model.Ad r0 = (com.truecaller.ads.adsrouter.model.C2813Ad) r0
            r6 = r0
        Lbc:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15026b.mo19265e(e.a.i.c.d.l, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15025a
    /* renamed from: f */
    public void mo19264f() {
        d.w2(this, (f) null, (j0) null, new C15028b(null), 3, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0102, code lost:
        if (r17.length() == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0108, code lost:
        if (r18 == false) goto L34;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> m19263g(p193e.p194a.p852i.p862c.p866d.C15055l r16) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15026b.m19263g(e.a.i.c.d.l):java.util.Map");
    }

    public f getCoroutineContext() {
        return this.f42872n.plus(this.f42859a);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m19262h(java.util.Map<java.lang.String, ? extends java.lang.Object> r6, boolean r7, s1.w.d<? super p193e.p194a.p852i.p862c.p865c.AbstractC15023h<com.truecaller.ads.adsrouter.model.C2813Ad>> r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p866d.C15026b.m19262h(java.util.Map, boolean, s1.w.d):java.lang.Object");
    }
}
