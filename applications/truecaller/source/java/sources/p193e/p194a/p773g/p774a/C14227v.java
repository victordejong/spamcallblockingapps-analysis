package p193e.p194a.p773g.p774a;

import com.truecaller.acs.C2778R;
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
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onUnblockConfirmed$1", f = "AfterCallBasePresenter.kt", l = {1126}, m = "invokeSuspend")
/* renamed from: e.a.g.a.v */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/v.class */
public final class C14227v extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41108e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41109f;

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onUnblockConfirmed$1$whitelisted$1", f = "AfterCallBasePresenter.kt", l = {1127}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.v$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/v$a.class */
    public static final class C14228a extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f41110e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14228a(d dVar) {
            super(2, dVar);
            C14227v.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20355i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14228a(dVar);
        }

        /* renamed from: k */
        public final Object m20354k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14228a(dVar).m20353s(s.a);
        }

        /* renamed from: s */
        public final Object m20353s(Object obj) {
            a aVar = a.a;
            int i = this.f41110e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14205m abstractC14205m = C14227v.this.f41109f;
                this.f41110e = 1;
                Object m20450Ok = abstractC14205m.m20450Ok("unblock", this);
                obj = m20450Ok;
                if (m20450Ok == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14227v(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41109f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20358i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14227v(this.f41109f, dVar);
    }

    /* renamed from: k */
    public final Object m20357k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14227v(this.f41109f, dVar).m20356s(s.a);
    }

    /* renamed from: s */
    public final Object m20356s(Object obj) {
        a aVar = a.a;
        int i = this.f41108e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f41109f.f41034z;
            C14228a c14228a = new C14228a(null);
            this.f41108e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c14228a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Number) obj).intValue() > 0) {
            AbstractC14205m abstractC14205m = this.f41109f;
            abstractC14205m.m20429fk(false, abstractC14205m.m20451Oj().f11539f, null);
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f41109f.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20540a(C2778R.string.acs_whitelist_success);
            }
        } else {
            AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f41109f.f57683a;
            if (abstractC14198h2 != null) {
                abstractC14198h2.mo20540a(C2778R.string.acs_blacklist_update_fail);
            }
        }
        return s.a;
    }
}
