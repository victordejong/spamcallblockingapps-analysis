package p193e.p194a.p947k.p981q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p981q.AbstractC16262b;
import q3.a.n;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$downloadVideo$2$2", f = "VideoCallerIdCachingWorker.kt", l = {163}, m = "invokeSuspend")
/* renamed from: e.a.k.q.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/q/d.class */
public final class C16267d extends i implements q<g<? super n<? super Boolean>>, AbstractC16262b, d<? super Boolean>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45827e;

    /* renamed from: f */
    public /* synthetic */ Object f45828f;

    /* renamed from: g */
    public int f45829g;

    /* renamed from: h */
    public int f45830h;

    /* renamed from: i */
    public final /* synthetic */ n f45831i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16267d(n nVar, d dVar) {
        super(3, dVar);
        this.f45831i = nVar;
    }

    /* renamed from: h */
    public final Object m17657h(Object obj, Object obj2, Object obj3) {
        g gVar = (g) obj;
        AbstractC16262b abstractC16262b = (AbstractC16262b) obj2;
        d dVar = (d) obj3;
        l.e(gVar, "$this$create");
        l.e(abstractC16262b, "state");
        l.e(dVar, "continuation");
        C16267d c16267d = new C16267d(this.f45831i, dVar);
        c16267d.f45827e = gVar;
        c16267d.f45828f = abstractC16262b;
        return c16267d.m17656s(s.a);
    }

    /* renamed from: s */
    public final Object m17656s(Object obj) {
        int i;
        a aVar = a.a;
        int i2 = this.f45830h;
        boolean z = false;
        if (i2 == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f45827e;
            AbstractC16262b abstractC16262b = (AbstractC16262b) this.f45828f;
            i = (!(abstractC16262b instanceof AbstractC16262b.C16263a) && !(abstractC16262b instanceof AbstractC16262b.C16264b)) ? 0 : 1;
            n nVar = this.f45831i;
            this.f45827e = null;
            this.f45829g = i;
            this.f45830h = 1;
            if (gVar.a(nVar, this) == aVar) {
                return aVar;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            i = this.f45829g;
            C25225a.m3932a3(obj);
        }
        if (i == 0) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
