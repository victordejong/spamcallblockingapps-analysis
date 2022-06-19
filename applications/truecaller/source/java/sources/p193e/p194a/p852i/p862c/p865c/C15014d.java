package p193e.p194a.p852i.p862c.p865c;

import com.truecaller.ads.adsrouter.model.AdResponse;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p852i.p879e.p894l.AbstractC15157a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import x3.a0;
import x3.b;
/* renamed from: e.a.i.c.c.d */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/c/d.class */
public final class C15014d implements AbstractC15013c {

    /* renamed from: a */
    public final AbstractC15010a f42835a;

    /* renamed from: b */
    public final AbstractC15157a f42836b;

    @e(c = "com.truecaller.ads.adsrouter.network.AdRouterRestManagerImpl", f = "AdRouterRestManager.kt", l = {31}, m = "getAd")
    /* renamed from: e.a.i.c.c.d$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/c/d$a.class */
    public static final class C15015a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42837d;

        /* renamed from: e */
        public int f42838e;

        /* renamed from: g */
        public Object f42840g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15015a(d dVar) {
            super(dVar);
            C15014d.this = r4;
        }

        /* renamed from: s */
        public final Object m19280s(Object obj) {
            this.f42837d = obj;
            this.f42838e |= Integer.MIN_VALUE;
            return C15014d.this.mo19283b(null, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.network.AdRouterRestManagerImpl$getAd$response$1", f = "AdRouterRestManager.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: e.a.i.c.c.d$b */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/c/d$b.class */
    public static final class C15016b extends i implements l<d<? super a0<AdResponse>>, Object> {

        /* renamed from: e */
        public int f42841e;

        /* renamed from: g */
        public final /* synthetic */ Map f42843g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15016b(Map map, d dVar) {
            super(1, dVar);
            C15014d.this = r5;
            this.f42843g = map;
        }

        /* renamed from: d */
        public final Object m19279d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C15016b(this.f42843g, dVar).m19277s(s.a);
        }

        /* renamed from: l */
        public final d<s> m19278l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15016b(this.f42843g, dVar);
        }

        /* renamed from: s */
        public final Object m19277s(Object obj) {
            a aVar = a.a;
            int i = this.f42841e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15010a abstractC15010a = C15014d.this.f42835a;
                Map<String, ? extends Object> map = this.f42843g;
                this.f42841e = 1;
                Object mo19287b = abstractC15010a.mo19287b(map, this);
                obj = mo19287b;
                if (mo19287b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return C18334g0.m15210p0((b) obj);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.network.AdRouterRestManagerImpl", f = "AdRouterRestManager.kt", l = {51}, m = "getOnlineLeadGenForm")
    /* renamed from: e.a.i.c.c.d$c */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/c/d$c.class */
    public static final class C15017c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42844d;

        /* renamed from: e */
        public int f42845e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15017c(d dVar) {
            super(dVar);
            C15014d.this = r4;
        }

        /* renamed from: s */
        public final Object m19276s(Object obj) {
            this.f42844d = obj;
            this.f42845e |= Integer.MIN_VALUE;
            return C15014d.this.mo19281d(null, 0, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.network.AdRouterRestManagerImpl", f = "AdRouterRestManager.kt", l = {39}, m = "recordTrackingUrl")
    /* renamed from: e.a.i.c.c.d$d */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/c/d$d.class */
    public static final class C15018d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42847d;

        /* renamed from: e */
        public int f42848e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15018d(d dVar) {
            super(dVar);
            C15014d.this = r4;
        }

        /* renamed from: s */
        public final Object m19275s(Object obj) {
            this.f42847d = obj;
            this.f42848e |= Integer.MIN_VALUE;
            return C15014d.this.mo19284a(null, this);
        }
    }

    @e(c = "com.truecaller.ads.adsrouter.network.AdRouterRestManagerImpl", f = "AdRouterRestManager.kt", l = {43}, m = "uploadLeadGenForm")
    /* renamed from: e.a.i.c.c.d$e */
    /* loaded from: classes2-dex2jar.jar:e/a/i/c/c/d$e.class */
    public static final class C15019e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42850d;

        /* renamed from: e */
        public int f42851e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15019e(d dVar) {
            super(dVar);
            C15014d.this = r4;
        }

        /* renamed from: s */
        public final Object m19274s(Object obj) {
            this.f42850d = obj;
            this.f42851e |= Integer.MIN_VALUE;
            return C15014d.this.mo19282c(null, null, this);
        }
    }

    @Inject
    public C15014d(AbstractC15010a abstractC15010a, AbstractC15157a abstractC15157a) {
        s1.z.c.l.e(abstractC15010a, "adRouterRestAdapter");
        s1.z.c.l.e(abstractC15157a, "offlineLeadGenRestAdapter");
        this.f42835a = abstractC15010a;
        this.f42836b = abstractC15157a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15013c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19284a(java.lang.String r6, s1.w.d<? super s1.s> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p852i.p862c.p865c.C15014d.C15018d
            if (r0 == 0) goto L28
            r0 = r7
            e.a.i.c.c.d$d r0 = (p193e.p194a.p852i.p862c.p865c.C15014d.C15018d) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f42848e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f42848e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.i.c.c.d$d r0 = new e.a.i.c.c.d$d
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f42847d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f42848e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L82
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.i.c.c.a r0 = r0.f42835a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f42848e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo19288a(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L82
            r0 = r10
            return r0
        L82:
            r0 = r6
            x3.b r0 = (x3.b) r0
            x3.a0 r0 = p193e.p194a.p1066n.C18334g0.m15210p0(r0)
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p865c.C15014d.mo19284a(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ab  */
    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15013c
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19283b(java.util.Map<java.lang.String, ? extends java.lang.Object> r7, s1.w.d<? super p193e.p194a.p852i.p862c.p865c.AbstractC15023h<com.truecaller.ads.adsrouter.model.C2813Ad>> r8) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p865c.C15014d.mo19283b(java.util.Map, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012a  */
    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15013c
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19282c(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, s1.w.d<? super p193e.p194a.p852i.p879e.AbstractC15136c<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p865c.C15014d.mo19282c(java.lang.String, java.util.Map, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    @Override // p193e.p194a.p852i.p862c.p865c.AbstractC15013c
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19281d(java.lang.String r7, int r8, s1.w.d<? super p193e.p194a.p852i.p879e.AbstractC15136c<com.truecaller.ads.offline.dto.OfflineAdsDto>> r9) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p865c.C15014d.mo19281d(java.lang.String, int, s1.w.d):java.lang.Object");
    }
}
