package p193e.p194a.p852i.p862c.p866d;

import android.content.Context;
import com.truecaller.ads.adsrouter.ui.AdRouterNativeAd;
import e.a.i.c.a.g;
import e.a.i.d0.k;
import e.a.i.d0.o;
import e.a.i.d0.r;
import e.a.i.d0.x;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p852i.p870d0.AbstractC15104a;
import p193e.p194a.p852i.p870d0.AbstractC15129j;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$fetchPartnerSDKAdsAsync$1", f = "AdRouterAdsProvider.kt", l = {123}, m = "invokeSuspend")
/* renamed from: e.a.i.c.d.d */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/d/d.class */
public final class C15036d extends i implements p<i0, d<? super AbstractC15129j<? extends e.a.i.c.a.i>>, Object> {

    /* renamed from: e */
    public int f42905e;

    /* renamed from: f */
    public final /* synthetic */ C15026b f42906f;

    /* renamed from: g */
    public final /* synthetic */ C15055l f42907g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15036d(C15026b c15026b, C15055l c15055l, d dVar) {
        super(2, dVar);
        this.f42906f = c15026b;
        this.f42907g = c15055l;
    }

    /* renamed from: i */
    public final d<s> m19237i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15036d(this.f42906f, this.f42907g, dVar);
    }

    /* renamed from: k */
    public final Object m19236k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15036d(this.f42906f, this.f42907g, dVar).m19235s(s.a);
    }

    /* renamed from: s */
    public final Object m19235s(Object obj) {
        k kVar;
        a aVar = a.a;
        int i = this.f42905e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f42906f.f42864f.mo13429d()) {
                return new e.a.i.d0.i(o.d);
            }
            C20592g c20592g = (C20592g) this.f42906f.f42866h.get();
            if (!c20592g.f57791N3.m10941a(c20592g, C20592g.f57695p6[249]).isEnabled()) {
                return new e.a.i.d0.i(x.d);
            }
            AbstractC15104a abstractC15104a = (AbstractC15104a) this.f42906f.f42867i.get();
            Context context = this.f42906f.f42860b;
            C15055l c15055l = this.f42907g;
            this.f42905e = 1;
            Object m19165a = abstractC15104a.m19165a(context, c15055l, this);
            obj = m19165a;
            if (m19165a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        k kVar2 = (AbstractC15129j) obj;
        if (kVar2 instanceof k) {
            Object obj2 = kVar2.a;
            kVar = obj2 instanceof AdRouterNativeAd ? new k(new e.a.i.c.a.k((AdRouterNativeAd) obj2), (String) null, 2) : obj2 instanceof e.a.i.c.a.e ? new k(new g((e.a.i.c.a.e) obj2), (String) null, 2) : new e.a.i.d0.i(r.d);
        } else if (!(kVar2 instanceof e.a.i.d0.i)) {
            throw new s1.i();
        } else {
            kVar = new e.a.i.d0.i(((e.a.i.d0.i) kVar2).a);
        }
        return kVar;
    }
}
