package p193e.p194a.p673d0.p674a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p673d0.C12560v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callerid.window.CallerIdWindowPresenter$registerMidCallReceivedListeners$1", f = "CallerIdWindowPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.s */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/s.class */
public final class C12456s extends i implements p<String, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C12439m f36390e;

    /* renamed from: f */
    public final /* synthetic */ C12560v f36391f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12456s(C12439m c12439m, C12560v c12560v, d dVar) {
        super(2, dVar);
        this.f36390e = c12439m;
        this.f36391f = c12560v;
    }

    /* renamed from: i */
    public final d<s> m22982i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12456s(this.f36390e, this.f36391f, dVar);
    }

    /* renamed from: k */
    public final Object m22981k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12439m c12439m = this.f36390e;
        C12560v c12560v = this.f36391f;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        c12439m.m23009Oj(c12560v);
        return sVar;
    }

    /* renamed from: s */
    public final Object m22980s(Object obj) {
        C25225a.m3932a3(obj);
        this.f36390e.m23009Oj(this.f36391f);
        return s.a;
    }
}
