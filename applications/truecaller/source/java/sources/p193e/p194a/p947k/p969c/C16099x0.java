package p193e.p194a.p947k.p969c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC16083t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.utils.VideoCallerIdExtensionKt$subscribeVideoCallerIdPlaying$1", f = "VideoCallerIdExtension.kt", l = {34}, m = "invokeSuspend")
/* renamed from: e.a.k.c.x0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/x0.class */
public final class C16099x0 extends i implements p<AbstractC16083t0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45353e;

    /* renamed from: f */
    public int f45354f;

    /* renamed from: g */
    public final /* synthetic */ String f45355g;

    /* renamed from: h */
    public final /* synthetic */ p f45356h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16099x0(String str, p pVar, d dVar) {
        super(2, dVar);
        this.f45355g = str;
        this.f45356h = pVar;
    }

    /* renamed from: i */
    public final d<s> m17894i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16099x0 c16099x0 = new C16099x0(this.f45355g, this.f45356h, dVar);
        c16099x0.f45353e = obj;
        return c16099x0;
    }

    /* renamed from: k */
    public final Object m17893k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16099x0 c16099x0 = new C16099x0(this.f45355g, this.f45356h, dVar);
        c16099x0.f45353e = obj;
        return c16099x0.m17892s(s.a);
    }

    /* renamed from: s */
    public final Object m17892s(Object obj) {
        a aVar = a.a;
        int i = this.f45354f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16083t0 abstractC16083t0 = (AbstractC16083t0) this.f45353e;
            if (abstractC16083t0 instanceof AbstractC16083t0.C16086c) {
                AbstractC16083t0.C16086c c16086c = (AbstractC16083t0.C16086c) abstractC16083t0;
                if (l.a(c16086c.f45323b, this.f45355g)) {
                    p pVar = this.f45356h;
                    String str = c16086c.f45322a;
                    this.f45354f = 1;
                    if (pVar.k(str, this) == aVar) {
                        return aVar;
                    }
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
