package p193e.p194a.p717f.p718a;

import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p717f.p731w.AbstractC13731a;
import p193e.p194a.p717f.p731w.C13732b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.InCallUIPresenter$loadAd$1", f = "InCallUIPresenter.kt", l = {315}, m = "invokeSuspend")
/* renamed from: e.a.f.a.q */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/q.class */
public final class C13653q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39570e;

    /* renamed from: f */
    public final /* synthetic */ C13649n f39571f;

    /* renamed from: g */
    public final /* synthetic */ C13642g f39572g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13653q(C13649n c13649n, C13642g c13642g, d dVar) {
        super(2, dVar);
        this.f39571f = c13649n;
        this.f39572g = c13642g;
    }

    /* renamed from: i */
    public final d<s> m21361i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13653q(this.f39571f, this.f39572g, dVar);
    }

    /* renamed from: k */
    public final Object m21360k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13653q(this.f39571f, this.f39572g, dVar).m21359s(s.a);
    }

    /* renamed from: s */
    public final Object m21359s(Object obj) {
        int ordinal;
        a aVar = a.a;
        int i = this.f39570e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC13731a abstractC13731a = this.f39571f.f39552o;
            String str = this.f39572g.f39515e;
            this.f39570e = 1;
            Object m21242a = ((C13732b) abstractC13731a).m21242a(str, this);
            obj = m21242a;
            if (m21242a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        String str2 = (String) obj;
        if (str2 != null) {
            C13649n c13649n = this.f39571f;
            CallState callState = (CallState) C19291g.m13593R0(c13649n.f39547j.mo21199h());
            if (callState != null && ((ordinal = callState.ordinal()) == 4 || ordinal == 5)) {
                AbstractC13648m abstractC13648m = (AbstractC13648m) c13649n.f57683a;
                if (abstractC13648m != null) {
                    abstractC13648m.mo21395C0();
                }
            } else {
                String substring = str2.substring(0, Math.min(str2.length(), 24));
                l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                AbstractC13648m abstractC13648m2 = (AbstractC13648m) c13649n.f57683a;
                if (abstractC13648m2 != null) {
                    abstractC13648m2.mo21383q1(substring);
                }
            }
        } else {
            AbstractC13648m abstractC13648m3 = (AbstractC13648m) this.f39571f.f57683a;
            if (abstractC13648m3 != null) {
                abstractC13648m3.mo21395C0();
            }
        }
        return s.a;
    }
}
