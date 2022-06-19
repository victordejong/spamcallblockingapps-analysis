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
@e(c = "com.truecaller.videocallerid.utils.VideoCallerIdExtensionKt$subscribeVideoCallerIdDownloaded$1", f = "VideoCallerIdExtension.kt", l = {21}, m = "invokeSuspend")
/* renamed from: e.a.k.c.w0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/w0.class */
public final class C16096w0 extends i implements p<AbstractC16083t0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45341e;

    /* renamed from: f */
    public int f45342f;

    /* renamed from: g */
    public final /* synthetic */ String f45343g;

    /* renamed from: h */
    public final /* synthetic */ float f45344h;

    /* renamed from: i */
    public final /* synthetic */ p f45345i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16096w0(String str, float f, p pVar, d dVar) {
        super(2, dVar);
        this.f45343g = str;
        this.f45344h = f;
        this.f45345i = pVar;
    }

    /* renamed from: i */
    public final d<s> m17900i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16096w0 c16096w0 = new C16096w0(this.f45343g, this.f45344h, this.f45345i, dVar);
        c16096w0.f45341e = obj;
        return c16096w0;
    }

    /* renamed from: k */
    public final Object m17899k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16096w0 c16096w0 = new C16096w0(this.f45343g, this.f45344h, this.f45345i, dVar);
        c16096w0.f45341e = obj;
        return c16096w0.m17898s(s.a);
    }

    /* renamed from: s */
    public final Object m17898s(Object obj) {
        a aVar = a.a;
        int i = this.f45342f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16083t0 abstractC16083t0 = (AbstractC16083t0) this.f45341e;
            if (abstractC16083t0 instanceof AbstractC16083t0.C16084a) {
                AbstractC16083t0.C16084a c16084a = (AbstractC16083t0.C16084a) abstractC16083t0;
                if (l.a(c16084a.f45319b, this.f45343g) && c16084a.f45320c >= this.f45344h) {
                    p pVar = this.f45345i;
                    String str = c16084a.f45318a;
                    this.f45342f = 1;
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
