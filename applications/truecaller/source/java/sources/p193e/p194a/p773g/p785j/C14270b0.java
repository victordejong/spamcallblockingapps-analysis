package p193e.p194a.p773g.p785j;

import java.io.IOException;
import java.util.UUID;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p751f4.p762g.C14022p;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import x3.a0;
@e(c = "com.truecaller.acs.util.AcsSearchHelperImpl$search$2", f = "AcsSearchHelperImpl.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.g.j.b0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/b0.class */
public final class C14270b0 extends i implements p<i0, d<? super Object>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C14272c0 f41309e;

    /* renamed from: f */
    public final /* synthetic */ int f41310f;

    /* renamed from: g */
    public final /* synthetic */ String f41311g;

    /* renamed from: h */
    public final /* synthetic */ String f41312h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14270b0(C14272c0 c14272c0, int i, String str, String str2, d dVar) {
        super(2, dVar);
        this.f41309e = c14272c0;
        this.f41310f = i;
        this.f41311g = str;
        this.f41312h = str2;
    }

    /* renamed from: i */
    public final d<s> m20306i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14270b0(this.f41309e, this.f41310f, this.f41311g, this.f41312h, dVar);
    }

    /* renamed from: k */
    public final Object m20305k(Object obj, Object obj2) {
        return m20306i(obj, (d) obj2).m20304s(s.a);
    }

    /* renamed from: s */
    public final Object m20304s(Object obj) {
        a0 a0Var;
        C25225a.m3932a3(obj);
        try {
            C14022p c14022p = new C14022p(this.f41309e.f41314a, UUID.randomUUID(), "afterCall");
            c14022p.f40565o = this.f41310f;
            c14022p.f40566p = this.f41311g;
            a0Var = c14022p.m20845c(this.f41312h).m20846b().execute();
        } catch (IOException e) {
            a0Var = s.a;
        }
        return a0Var;
    }
}
