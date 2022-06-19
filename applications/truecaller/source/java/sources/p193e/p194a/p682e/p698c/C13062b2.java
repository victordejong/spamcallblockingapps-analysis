package p193e.p194a.p682e.p698c;

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
@e(c = "com.truecaller.ui.details.DetailsHeaderPresenter$maybeShowSpamCount$1", f = "DetailsHeaderPresenter.kt", l = {133}, m = "invokeSuspend")
/* renamed from: e.a.e.c.b2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/b2.class */
public final class C13062b2 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f37913e;

    /* renamed from: f */
    public final /* synthetic */ C13066c2 f37914f;

    /* renamed from: g */
    public final /* synthetic */ Contact f37915g;

    /* renamed from: h */
    public final /* synthetic */ boolean f37916h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13062b2(C13066c2 c13066c2, Contact contact, boolean z, d dVar) {
        super(2, dVar);
        this.f37914f = c13066c2;
        this.f37915g = contact;
        this.f37916h = z;
    }

    /* renamed from: i */
    public final d<s> m22097i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13062b2(this.f37914f, this.f37915g, this.f37916h, dVar);
    }

    /* renamed from: k */
    public final Object m22096k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13062b2(this.f37914f, this.f37915g, this.f37916h, dVar).m22095s(s.a);
    }

    /* renamed from: s */
    public final Object m22095s(Object obj) {
        a aVar = a.a;
        int i = this.f37913e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C13066c2 c13066c2 = this.f37914f;
            Contact contact = this.f37915g;
            boolean z = this.f37916h;
            this.f37913e = 1;
            if (c13066c2.m22094Ij(contact, z, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
