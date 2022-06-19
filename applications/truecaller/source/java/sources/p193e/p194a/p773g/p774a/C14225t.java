package p193e.p194a.p773g.p774a;

import com.truecaller.acs.C2778R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onNotSpamConfirmed$1", f = "AfterCallBasePresenter.kt", l = {1162}, m = "invokeSuspend")
/* renamed from: e.a.g.a.t */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/t.class */
public final class C14225t extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41104e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41105f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14225t(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41105f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20364i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14225t(this.f41105f, dVar);
    }

    /* renamed from: k */
    public final Object m20363k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14225t(this.f41105f, dVar).m20362s(s.a);
    }

    /* renamed from: s */
    public final Object m20362s(Object obj) {
        a aVar = a.a;
        int i = this.f41104e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC14205m abstractC14205m = this.f41105f;
            this.f41104e = 1;
            Object m20450Ok = abstractC14205m.m20450Ok("notspam", this);
            obj = m20450Ok;
            if (m20450Ok == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Number) obj).intValue() > 0) {
            AbstractC14205m abstractC14205m2 = this.f41105f;
            abstractC14205m2.m20429fk(false, abstractC14205m2.m20451Oj().f11539f, null);
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f41105f.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20540a(C2778R.string.acs_whitelist_success);
            }
        } else {
            AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f41105f.f57683a;
            if (abstractC14198h2 != null) {
                abstractC14198h2.mo20540a(C2778R.string.acs_blacklist_update_fail);
            }
        }
        return s.a;
    }
}
