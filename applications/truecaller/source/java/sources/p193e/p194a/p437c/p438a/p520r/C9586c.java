package p193e.p194a.p437c.p438a.p520r;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.d0;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.utils.FlowsKt$retryWhenThrowAndMap$2", f = "Flows.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.r.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/r/c.class */
public final class C9586c extends i implements q<g<? super R>, Throwable, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28999e;

    /* renamed from: f */
    public final /* synthetic */ Throwable f29000f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9586c(Throwable th, d dVar) {
        super(3, dVar);
        this.f29000f = th;
    }

    /* renamed from: h */
    public final Object m27413h(Object obj, Object obj2, Object obj3) {
        s sVar = s.a;
        Throwable th = (Throwable) obj2;
        d dVar = (d) obj3;
        l.e((g) obj, "$this$create");
        l.e(th, "e");
        l.e(dVar, "continuation");
        Throwable th2 = this.f29000f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (!(!l.a(d0.a(th.getClass()), d0.a(th2.getClass())))) {
            return sVar;
        }
        throw th;
    }

    /* renamed from: s */
    public final Object m27412s(Object obj) {
        C25225a.m3932a3(obj);
        Throwable th = (Throwable) this.f28999e;
        if (!(!l.a(d0.a(th.getClass()), d0.a(this.f29000f.getClass())))) {
            return s.a;
        }
        throw th;
    }
}
