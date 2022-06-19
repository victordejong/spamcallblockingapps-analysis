package p193e.p194a.p773g.p774a;

import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$showNameFeedbackThanksAnimation$1", f = "AfterCallBasePresenter.kt", l = {1430}, m = "invokeSuspend")
/* renamed from: e.a.g.a.y */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/y.class */
public final class C14231y extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41118e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41119f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14231y(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f41119f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20346i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14231y(this.f41119f, dVar);
    }

    /* renamed from: k */
    public final Object m20345k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14231y(this.f41119f, dVar).m20344s(s.a);
    }

    /* renamed from: s */
    public final Object m20344s(Object obj) {
        a aVar = a.a;
        int i = this.f41118e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f41119f.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20530ck();
            }
            this.f41118e = 1;
            if (s1.a.a.a.v0.f.d.D0(1500L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Contact contact = this.f41119f.m20451Oj().f11539f;
        if (contact != null) {
            this.f41119f.m20454Mk(contact);
        }
        return s.a;
    }
}
