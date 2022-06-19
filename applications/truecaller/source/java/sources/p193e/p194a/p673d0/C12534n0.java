package p193e.p194a.p673d0;

import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.p1;
import q3.a.x2.u0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$listenToMidCallReasonUpdates$1", f = "ContextCallCallerIdHelper.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d0.n0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/n0.class */
public final class C12534n0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f36639e;

    /* renamed from: f */
    public final /* synthetic */ C12528m0 f36640f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12574y f36641g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC12537o0 f36642h;

    @e(c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$listenToMidCallReasonUpdates$1$1", f = "ContextCallCallerIdHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d0.n0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/n0$a.class */
    public static final class C12535a extends i implements p<String, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f36643e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12535a(d dVar) {
            super(2, dVar);
            C12534n0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22891i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12535a c12535a = new C12535a(dVar);
            c12535a.f36643e = obj;
            return c12535a;
        }

        /* renamed from: k */
        public final Object m22890k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12534n0 c12534n0 = C12534n0.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            String str = (String) obj;
            boolean m22540r = C12864a2.m22540r(c12534n0.f36641g.mo22863g().mo11831c());
            if (str != null) {
                if (!Boolean.valueOf(str.length() > 0).booleanValue()) {
                    str = null;
                }
                if (str != null) {
                    if (!m22540r) {
                        c12534n0.f36642h.mo22887b();
                    }
                    p1 p1Var = c12534n0.f36640f.f36623b;
                    if (p1Var != null) {
                        s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                    }
                }
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m22889s(Object obj) {
            C25225a.m3932a3(obj);
            String str = (String) this.f36643e;
            boolean m22540r = C12864a2.m22540r(C12534n0.this.f36641g.mo22863g().mo11831c());
            if (str != null) {
                if (!Boolean.valueOf(str.length() > 0).booleanValue()) {
                    str = null;
                }
                if (str != null) {
                    if (!m22540r) {
                        C12534n0.this.f36642h.mo22887b();
                    }
                    p1 p1Var = C12534n0.this.f36640f.f36623b;
                    if (p1Var != null) {
                        s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                    }
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12534n0(C12528m0 c12528m0, AbstractC12574y abstractC12574y, AbstractC12537o0 abstractC12537o0, d dVar) {
        super(2, dVar);
        this.f36640f = c12528m0;
        this.f36641g = abstractC12574y;
        this.f36642h = abstractC12537o0;
    }

    /* renamed from: i */
    public final d<s> m22894i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12534n0 c12534n0 = new C12534n0(this.f36640f, this.f36641g, this.f36642h, dVar);
        c12534n0.f36639e = obj;
        return c12534n0;
    }

    /* renamed from: k */
    public final Object m22893k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12534n0 c12534n0 = new C12534n0(this.f36640f, this.f36641g, this.f36642h, dVar);
        c12534n0.f36639e = obj;
        s sVar = s.a;
        c12534n0.m22892s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m22892s(Object obj) {
        C25225a.m3932a3(obj);
        i0 i0Var = (i0) this.f36639e;
        p1 p1Var = this.f36640f.f36623b;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        C12528m0 c12528m0 = this.f36640f;
        c12528m0.f36623b = s1.a.a.a.v0.f.d.x2(new u0(c12528m0.f36626e.mo14502w(), new C12535a(null)), i0Var);
        return s.a;
    }
}
