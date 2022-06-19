package p193e.p194a.p773g.p774a.p776b;

import com.truecaller.acs.C2778R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p288a0.AbstractC7395n;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$setCallerLabel$1", f = "AfterCallScreenPresenter.kt", l = {554}, m = "invokeSuspend")
/* renamed from: e.a.g.a.b.n */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/n.class */
public final class C14162n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f40890e;

    /* renamed from: f */
    public final /* synthetic */ C14153l f40891f;

    /* renamed from: g */
    public final /* synthetic */ Contact f40892g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14162n(C14153l c14153l, Contact contact, d dVar) {
        super(2, dVar);
        this.f40891f = c14153l;
        this.f40892g = contact;
    }

    /* renamed from: i */
    public final d<s> m20624i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14162n(this.f40891f, this.f40892g, dVar);
    }

    /* renamed from: k */
    public final Object m20623k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14162n(this.f40891f, this.f40892g, dVar).m20622s(s.a);
    }

    /* renamed from: s */
    public final Object m20622s(Object obj) {
        AbstractC14149h abstractC14149h;
        a aVar = a.a;
        int i = this.f40890e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7395n abstractC7395n = this.f40891f.f41011n0;
            Contact contact = this.f40892g;
            this.f40890e = 1;
            Object m16093Y = C17422k.m16093Y(abstractC7395n, contact, this);
            obj = m16093Y;
            if (m16093Y == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f40891f.m20467Ek(this.f40892g.m35533a0(), (SpamCategoryModel) obj);
        if (this.f40892g.m35565G0() && (abstractC14149h = (AbstractC14149h) this.f40891f.f57683a) != null) {
            abstractC14149h.mo20665ya(C2778R.string.acs_caller_label_verified_business);
            abstractC14149h.mo20586By();
        }
        return s.a;
    }
}
