package p193e.p194a.p773g.p774a.p775a;

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
@e(c = "com.truecaller.acs.ui.popup.AfterCallPopupPresenter$setSpamDataInternal$1", f = "AfterCallPopupPresenter.kt", l = {488}, m = "invokeSuspend")
/* renamed from: e.a.g.a.a.j */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/j.class */
public final class C14113j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f40782e;

    /* renamed from: f */
    public final /* synthetic */ C14105i f40783f;

    /* renamed from: g */
    public final /* synthetic */ Contact f40784g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14113j(C14105i c14105i, Contact contact, d dVar) {
        super(2, dVar);
        this.f40783f = c14105i;
        this.f40784g = contact;
    }

    /* renamed from: i */
    public final d<s> m20731i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14113j(this.f40783f, this.f40784g, dVar);
    }

    /* renamed from: k */
    public final Object m20730k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14113j(this.f40783f, this.f40784g, dVar).m20729s(s.a);
    }

    /* renamed from: s */
    public final Object m20729s(Object obj) {
        AbstractC14104h abstractC14104h;
        a aVar = a.a;
        int i = this.f40782e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7395n abstractC7395n = this.f40783f.f41011n0;
            Contact contact = this.f40784g;
            this.f40782e = 1;
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
        this.f40783f.m20467Ek(this.f40784g.m35533a0(), (SpamCategoryModel) obj);
        if (this.f40784g.m35565G0() && (abstractC14104h = (AbstractC14104h) this.f40783f.f57683a) != null) {
            abstractC14104h.mo20767c5(C2778R.color.white, C2778R.C2779drawable.background_spam_popup_acs);
        }
        return s.a;
    }
}
