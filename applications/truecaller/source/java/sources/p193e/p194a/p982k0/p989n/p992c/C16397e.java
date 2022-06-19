package p193e.p194a.p982k0.p989n.p992c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p982k0.AbstractC16304b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callrecording.ui.floatingbutton.CallRecordingFloatingButtonPresenterImpl$onError$1", f = "CallRecordingFloatingButtonPresenterImpl.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k0.n.c.e */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/c/e.class */
public final class C16397e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16398f f46089e;

    /* renamed from: f */
    public final /* synthetic */ Exception f46090f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16397e(C16398f c16398f, Exception exc, d dVar) {
        super(2, dVar);
        this.f46089e = c16398f;
        this.f46090f = exc;
    }

    /* renamed from: i */
    public final d<s> m17462i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16397e(this.f46089e, this.f46090f, dVar);
    }

    /* renamed from: k */
    public final Object m17461k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16398f c16398f = this.f46089e;
        Exception exc = this.f46090f;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        AbstractC16304b abstractC16304b = c16398f.f46095h;
        if (abstractC16304b != null) {
            abstractC16304b.onError(exc);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m17460s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC16304b abstractC16304b = this.f46089e.f46095h;
        if (abstractC16304b != null) {
            abstractC16304b.onError(this.f46090f);
        }
        return s.a;
    }
}
