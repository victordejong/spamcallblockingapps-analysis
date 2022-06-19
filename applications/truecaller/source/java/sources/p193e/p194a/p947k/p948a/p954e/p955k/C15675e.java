package p193e.p194a.p947k.p948a.p954e.p955k;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC15992h0;
import p193e.p194a.p947k.p973n.p975e.C16187g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.manageincomingvideo.confirmation.HiddenContactConfirmationPresenter$onGotItClicked$1", f = "HiddenContactConfirmationPresenter.kt", l = {19}, m = "invokeSuspend")
/* renamed from: e.a.k.a.e.k.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/k/e.class */
public final class C15675e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44237e;

    /* renamed from: f */
    public final /* synthetic */ C15676f f44238f;

    /* renamed from: g */
    public final /* synthetic */ List f44239g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15675e(C15676f c15676f, List list, d dVar) {
        super(2, dVar);
        this.f44238f = c15676f;
        this.f44239g = list;
    }

    /* renamed from: i */
    public final d<s> m18529i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15675e(this.f44238f, this.f44239g, dVar);
    }

    /* renamed from: k */
    public final Object m18528k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15675e(this.f44238f, this.f44239g, dVar).m18527s(s.a);
    }

    /* renamed from: s */
    public final Object m18527s(Object obj) {
        a aVar = a.a;
        int i = this.f44237e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC15992h0 abstractC15992h0 = this.f44238f.f44240d;
            C16187g c16187g = new C16187g(this.f44239g);
            this.f44237e = 1;
            if (abstractC15992h0.mo18007b(c16187g, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC15674d abstractC15674d = (AbstractC15674d) this.f44238f.f57683a;
        if (abstractC15674d != null) {
            abstractC15674d.dismiss();
        }
        return s.a;
    }
}
