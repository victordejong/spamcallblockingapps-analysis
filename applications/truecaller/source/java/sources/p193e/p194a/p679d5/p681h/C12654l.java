package p193e.p194a.p679d5.p681h;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17042c0;
import p193e.p194a.p1011l.p1025p2.C17203x;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.startup_dialogs.resolvers.PremiumPopupDialogResolver$prefetchData$2", f = "PremiumPopupDialogResolver.kt", l = {99}, m = "invokeSuspend")
/* renamed from: e.a.d5.h.l */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/l.class */
public final class C12654l extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f36876e;

    /* renamed from: f */
    public final /* synthetic */ C12656m f36877f;

    /* renamed from: e.a.d5.h.l$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/l$a.class */
    public static final class C12655a extends m implements l<C17203x, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12655a() {
            super(1);
            C12654l.this = r4;
        }

        /* renamed from: d */
        public Object m22793d(Object obj) {
            C17203x c17203x = (C17203x) obj;
            s1.z.c.l.e(c17203x, "it");
            return Boolean.valueOf(C12654l.this.f36877f.m22792w() ? true : s1.z.c.l.a(c17203x.f48287g, "none"));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12654l(C12656m c12656m, d dVar) {
        super(2, dVar);
        this.f36877f = c12656m;
    }

    /* renamed from: i */
    public final d<s> m22796i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C12654l(this.f36877f, dVar);
    }

    /* renamed from: k */
    public final Object m22795k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C12654l(this.f36877f, dVar).m22794s(s.a);
    }

    /* renamed from: s */
    public final Object m22794s(Object obj) {
        a aVar = a.a;
        int i = this.f36876e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC17042c0 abstractC17042c0 = this.f36877f.f36886q;
            C12655a c12655a = new C12655a();
            this.f36876e = 1;
            if (abstractC17042c0.mo16585c(c12655a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return Boolean.valueOf(this.f36877f.f36886q.mo16584d());
    }
}
