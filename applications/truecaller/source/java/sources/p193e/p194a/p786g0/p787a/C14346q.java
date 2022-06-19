package p193e.p194a.p786g0.p787a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p786g0.AbstractC14353c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.suspension.ui.SuspensionPresenter$handleStatus$2", f = "SuspensionPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.g0.a.q */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/q.class */
public final class C14346q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C14347r f41447e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14353c f41448f;

    /* renamed from: g */
    public final /* synthetic */ l f41449g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14346q(C14347r c14347r, AbstractC14353c abstractC14353c, l lVar, d dVar) {
        super(2, dVar);
        this.f41447e = c14347r;
        this.f41448f = abstractC14353c;
        this.f41449g = lVar;
    }

    /* renamed from: i */
    public final d<s> m20217i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C14346q(this.f41447e, this.f41448f, this.f41449g, dVar);
    }

    /* renamed from: k */
    public final Object m20216k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        C14347r c14347r = this.f41447e;
        AbstractC14353c abstractC14353c = this.f41448f;
        l lVar = this.f41449g;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (s1.z.c.l.a(abstractC14353c, AbstractC14353c.C14354a.f41461a)) {
            AbstractC14339n abstractC14339n = (AbstractC14339n) c14347r.f57683a;
            if (abstractC14339n != null) {
                abstractC14339n.mo20246a0();
            } else {
                sVar = null;
            }
        } else if (!(abstractC14353c instanceof AbstractC14353c.C14355b)) {
            throw new s1.i();
        } else {
            AbstractC14339n abstractC14339n2 = (AbstractC14339n) c14347r.f57683a;
            if (abstractC14339n2 != null) {
                abstractC14339n2.mo20245b0();
            }
            sVar = (s) lVar.d(Boolean.valueOf(((AbstractC14353c.C14355b) abstractC14353c).f41462a));
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m20215s(Object obj) {
        s sVar;
        C25225a.m3932a3(obj);
        AbstractC14353c abstractC14353c = this.f41448f;
        if (s1.z.c.l.a(abstractC14353c, AbstractC14353c.C14354a.f41461a)) {
            AbstractC14339n abstractC14339n = (AbstractC14339n) this.f41447e.f57683a;
            if (abstractC14339n != null) {
                abstractC14339n.mo20246a0();
                sVar = s.a;
            } else {
                sVar = null;
            }
        } else if (!(abstractC14353c instanceof AbstractC14353c.C14355b)) {
            throw new s1.i();
        } else {
            AbstractC14339n abstractC14339n2 = (AbstractC14339n) this.f41447e.f57683a;
            if (abstractC14339n2 != null) {
                abstractC14339n2.mo20245b0();
            }
            sVar = (s) this.f41449g.d(Boolean.valueOf(((AbstractC14353c.C14355b) this.f41448f).f41462a));
        }
        return sVar;
    }
}
