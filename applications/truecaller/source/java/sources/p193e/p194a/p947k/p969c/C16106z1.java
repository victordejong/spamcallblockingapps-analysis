package p193e.p194a.p947k.p969c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$withSafeIOContext$2", f = "VideoFileUtil.kt", l = {204}, m = "invokeSuspend")
/* renamed from: e.a.k.c.z1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/z1.class */
public final class C16106z1 extends i implements p<i0, d<? super T>, Object> {

    /* renamed from: e */
    public int f45374e;

    /* renamed from: f */
    public final /* synthetic */ l f45375f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16106z1(l lVar, d dVar) {
        super(2, dVar);
        this.f45375f = lVar;
    }

    /* renamed from: i */
    public final d<s> m17880i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16106z1(this.f45375f, dVar);
    }

    /* renamed from: k */
    public final Object m17879k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C16106z1(this.f45375f, dVar).m17878s(s.a);
    }

    /* renamed from: s */
    public final Object m17878s(Object obj) {
        a aVar = a.a;
        int i = this.f45374e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                l lVar = this.f45375f;
                this.f45374e = 1;
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
        } catch (Exception e) {
            obj = null;
        }
        return obj;
    }
}
