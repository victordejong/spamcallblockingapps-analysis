package p193e.p194a.p773g.p774a;

import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p773g.C14233b;
import p193e.p194a.p773g.p780e.AbstractC14237a;
import p193e.p194a.p773g.p780e.AbstractC14241e;
import p193e.p194a.p773g.p780e.C14240d;
import p193e.p194a.p852i.C15222s;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$loadAds$1", f = "AfterCallBasePresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.g.a.o */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/o.class */
public final class C14219o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ AbstractC14205m f41091e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14219o(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41091e = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20382i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14219o(this.f41091e, dVar);
    }

    /* renamed from: k */
    public final Object m20381k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        AbstractC14205m abstractC14205m = this.f41091e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC14237a abstractC14237a = abstractC14205m.f40980N;
        C14199i c14199i = abstractC14205m.f41028w;
        C14240d c14240d = (C14240d) abstractC14237a;
        Objects.requireNonNull(c14240d);
        if (c14199i != null) {
            c14240d.f41139a = c14199i;
            AbstractC14241e abstractC14241e = c14240d.f41146h;
            if (((C14233b) abstractC14241e).m20336e(c14240d.m20328c()) && !c14240d.f41141c) {
                c14199i.onAdLoaded();
            }
            C14240d c14240d2 = (C14240d) abstractC14237a;
            AbstractC14241e abstractC14241e2 = c14240d2.f41146h;
            C15222s m20328c = c14240d2.m20328c();
            C14233b c14233b = (C14233b) abstractC14241e2;
            Objects.requireNonNull(c14233b);
            l.e(m20328c, "unitConfig");
            l.e(c14240d2, "adsListener");
            if (c14233b.f41125d.m19090b()) {
                c14233b.f41125d.m19084l(m20328c, c14240d2, c14233b.f41122a);
            }
            return sVar;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    /* renamed from: s */
    public final Object m20380s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC14205m abstractC14205m = this.f41091e;
        AbstractC14237a abstractC14237a = abstractC14205m.f40980N;
        C14199i c14199i = abstractC14205m.f41028w;
        C14240d c14240d = (C14240d) abstractC14237a;
        Objects.requireNonNull(c14240d);
        if (c14199i != null) {
            c14240d.f41139a = c14199i;
            AbstractC14241e abstractC14241e = c14240d.f41146h;
            if (((C14233b) abstractC14241e).m20336e(c14240d.m20328c()) && !c14240d.f41141c) {
                c14199i.onAdLoaded();
            }
            C14240d c14240d2 = (C14240d) abstractC14237a;
            AbstractC14241e abstractC14241e2 = c14240d2.f41146h;
            C15222s m20328c = c14240d2.m20328c();
            C14233b c14233b = (C14233b) abstractC14241e2;
            Objects.requireNonNull(c14233b);
            l.e(m20328c, "unitConfig");
            l.e(c14240d2, "adsListener");
            if (c14233b.f41125d.m19090b()) {
                c14233b.f41125d.m19084l(m20328c, c14240d2, c14233b.f41122a);
            }
            return s.a;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }
}
