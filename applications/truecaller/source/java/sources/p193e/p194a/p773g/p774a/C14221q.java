package p193e.p194a.p773g.p774a;

import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.HistoryEvent;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$maybeLoadFilter$1", f = "AfterCallBasePresenter.kt", l = {477, 478}, m = "invokeSuspend")
/* renamed from: e.a.g.a.q */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/q.class */
public final class C14221q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f41094e;

    /* renamed from: f */
    public int f41095f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC14205m f41096g;

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$maybeLoadFilter$1$1", f = "AfterCallBasePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.q$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/q$a.class */
    public static final class C14222a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14222a(d dVar) {
            super(2, dVar);
            C14221q.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20373i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14222a(dVar);
        }

        /* renamed from: k */
        public final Object m20372k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14221q c14221q = C14221q.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14221q.f41096g.m20420ok();
            return sVar;
        }

        /* renamed from: s */
        public final Object m20371s(Object obj) {
            C25225a.m3932a3(obj);
            C14221q.this.f41096g.m20420ok();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14221q(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41096g = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20376i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14221q(this.f41096g, dVar);
    }

    /* renamed from: k */
    public final Object m20375k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14221q(this.f41096g, dVar).m20374s(s.a);
    }

    /* renamed from: s */
    public final Object m20374s(Object obj) {
        AbstractC14205m abstractC14205m;
        a aVar = a.a;
        int i = this.f41095f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            abstractC14205m = this.f41096g;
            HistoryEvent m20451Oj = abstractC14205m.m20451Oj();
            this.f41094e = abstractC14205m;
            this.f41095f = 1;
            Object m20457Lj = abstractC14205m.m20457Lj(m20451Oj, this);
            obj = m20457Lj;
            if (m20457Lj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            abstractC14205m = (AbstractC14205m) this.f41094e;
            C25225a.m3932a3(obj);
        }
        FilterMatch filterMatch = (FilterMatch) obj;
        Objects.requireNonNull(abstractC14205m);
        l.e(filterMatch, "<set-?>");
        abstractC14205m.f40995f = filterMatch;
        f fVar = this.f41096g.f41032y;
        C14222a c14222a = new C14222a(null);
        this.f41094e = null;
        this.f41095f = 2;
        if (s1.a.a.a.v0.f.d.a4(fVar, c14222a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
