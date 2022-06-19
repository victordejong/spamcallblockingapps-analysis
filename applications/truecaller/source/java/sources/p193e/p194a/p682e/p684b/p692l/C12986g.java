package p193e.p194a.p682e.p684b.p692l;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter$onAttachView$1", f = "LanguageSettingsPresenter.kt", l = {37, 38}, m = "invokeSuspend")
/* renamed from: e.a.e.b.l.g */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/l/g.class */
public final class C12986g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f37701e;

    /* renamed from: f */
    public final /* synthetic */ C12978f f37702f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12986g(C12978f c12978f, d dVar) {
        super(2, dVar);
        this.f37702f = c12978f;
    }

    /* renamed from: i */
    public final d<s> m22283i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12986g(this.f37702f, dVar);
    }

    /* renamed from: k */
    public final Object m22282k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12986g(this.f37702f, dVar).m22281s(s.a);
    }

    /* renamed from: s */
    public final Object m22281s(Object obj) {
        a aVar = a.a;
        int i = this.f37701e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12978f c12978f = this.f37702f;
            this.f37701e = 1;
            if (c12978f.m22302Jj(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        C12978f c12978f2 = this.f37702f;
        this.f37701e = 2;
        if (c12978f2.m22301Kj(this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
