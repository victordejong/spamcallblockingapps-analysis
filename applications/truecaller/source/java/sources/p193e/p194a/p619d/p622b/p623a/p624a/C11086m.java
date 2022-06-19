package p193e.p194a.p619d.p622b.p623a.p624a;

import com.truecaller.voip.legacy.incall.LegacyVoipService;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$onAttachView$1", f = "LegacyVoipPresenter.kt", l = {91}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.a.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/m.class */
public final class C11086m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32763e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC11076i f32764f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11086m(AbstractC11076i abstractC11076i, d dVar) {
        super(2, dVar);
        this.f32764f = abstractC11076i;
    }

    /* renamed from: i */
    public final d<s> m25291i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11086m(this.f32764f, dVar);
    }

    /* renamed from: k */
    public final Object m25290k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11086m(this.f32764f, dVar).m25289s(s.a);
    }

    /* renamed from: s */
    public final Object m25289s(Object obj) {
        a aVar = a.a;
        int i = this.f32763e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f32763e = 1;
            if (s1.a.a.a.v0.f.d.D0(2000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (!LegacyVoipService.f16356l) {
            this.f32764f.mo25312t();
        }
        return s.a;
    }
}
