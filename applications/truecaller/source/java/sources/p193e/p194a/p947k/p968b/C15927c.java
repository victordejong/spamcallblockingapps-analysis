package p193e.p194a.p947k.p968b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.debug.CachedVideosDebugDialog$deleteCacheAndRefresh$1", f = "CachedVideosDebugDialog.kt", l = {116}, m = "invokeSuspend")
/* renamed from: e.a.k.b.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/c.class */
public final class C15927c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44915e;

    /* renamed from: f */
    public final /* synthetic */ C15918a f44916f;

    /* renamed from: g */
    public final /* synthetic */ String f44917g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15927c(C15918a c15918a, String str, d dVar) {
        super(2, dVar);
        this.f44916f = c15918a;
        this.f44917g = str;
    }

    /* renamed from: i */
    public final d<s> m18132i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15927c(this.f44916f, this.f44917g, dVar);
    }

    /* renamed from: k */
    public final Object m18131k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15927c(this.f44916f, this.f44917g, dVar).m18130s(s.a);
    }

    /* renamed from: s */
    public final Object m18130s(Object obj) {
        a aVar = a.a;
        int i = this.f44915e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16044q m18143RA = this.f44916f.m18143RA();
            String str = this.f44917g;
            this.f44915e = 1;
            if (m18143RA.mo17958e(str, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C15918a c15918a = this.f44916f;
        s1.a.l[] lVarArr = C15918a.f44897k;
        c15918a.m18142SA();
        return s.a;
    }
}
