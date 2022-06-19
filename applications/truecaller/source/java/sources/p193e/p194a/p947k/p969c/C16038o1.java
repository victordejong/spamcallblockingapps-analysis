package p193e.p194a.p947k.p969c;

import java.io.IOException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$withSafeIOContext$2", f = "VideoCallerIdStubManager.kt", l = {143}, m = "invokeSuspend")
/* renamed from: e.a.k.c.o1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/o1.class */
public final class C16038o1 extends i implements p<i0, d<? super T>, Object> {

    /* renamed from: e */
    public int f45221e;

    /* renamed from: f */
    public final /* synthetic */ l f45222f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16038o1(l lVar, d dVar) {
        super(2, dVar);
        this.f45222f = lVar;
    }

    /* renamed from: i */
    public final d<s> m17972i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16038o1(this.f45222f, dVar);
    }

    /* renamed from: k */
    public final Object m17971k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C16038o1(this.f45222f, dVar).m17970s(s.a);
    }

    /* renamed from: s */
    public final Object m17970s(Object obj) {
        a aVar = a.a;
        int i = this.f45221e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                l lVar = this.f45222f;
                this.f45221e = 1;
                Object d = lVar.d(this);
                obj = d;
                if (d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
        } catch (IOException | RuntimeException e) {
            obj = null;
        }
        return obj;
    }
}
