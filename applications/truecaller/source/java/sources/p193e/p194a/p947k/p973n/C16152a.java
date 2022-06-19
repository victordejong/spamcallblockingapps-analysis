package p193e.p194a.p947k.p973n;

import com.truecaller.log.AssertionUtil;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.videocallerid.db.VideoCallerIdDatabaseKt$runSafeWithContext$2", f = "VideoCallerIdDatabase.kt", l = {71}, m = "invokeSuspend")
/* renamed from: e.a.k.n.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/a.class */
public final class C16152a extends i implements p<i0, d<? super T>, Object> {

    /* renamed from: e */
    public int f45595e;

    /* renamed from: f */
    public final /* synthetic */ l f45596f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16152a(l lVar, d dVar) {
        super(2, dVar);
        this.f45596f = lVar;
    }

    /* renamed from: i */
    public final d<s> m17800i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16152a(this.f45596f, dVar);
    }

    /* renamed from: k */
    public final Object m17799k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C16152a(this.f45596f, dVar).m17798s(s.a);
    }

    /* renamed from: s */
    public final Object m17798s(Object obj) {
        a aVar = a.a;
        int i = this.f45595e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                l lVar = this.f45596f;
                this.f45595e = 1;
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
            AssertionUtil.reportThrowableButNeverCrash(e);
            obj = null;
        }
        return obj;
    }
}
