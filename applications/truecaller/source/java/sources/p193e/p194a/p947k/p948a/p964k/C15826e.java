package p193e.p194a.p947k.p948a.p964k;

import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.videoplayer.ExoPlayerProviderImpl$create$2", f = "ExoPlayerProvider.kt", l = {63}, m = "invokeSuspend")
/* renamed from: e.a.k.a.k.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/e.class */
public final class C15826e extends i implements p<i0, d<? super AbstractC24196c0>, Object> {

    /* renamed from: e */
    public int f44638e;

    /* renamed from: f */
    public final /* synthetic */ C15827f f44639f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15826e(C15827f c15827f, d dVar) {
        super(2, dVar);
        this.f44639f = c15827f;
    }

    /* renamed from: i */
    public final d<s> m18273i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15826e(this.f44639f, dVar);
    }

    /* renamed from: k */
    public final Object m18272k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15826e(this.f44639f, dVar).m18271s(s.a);
    }

    /* renamed from: s */
    public final Object m18271s(Object obj) {
        a aVar = a.a;
        int i = this.f44638e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC15821c abstractC15821c = this.f44639f.f44644e;
            this.f44638e = 1;
            Object m18280d = abstractC15821c.m18280d(this);
            obj = m18280d;
            if (m18280d == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
