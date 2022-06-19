package p193e.p194a.p372b0.p373a.p378c;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showSampleConfigs$1$1", f = "GroupAvatarXView.kt", l = {207}, m = "invokeSuspend")
/* renamed from: e.a.b0.a.c.k */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/k.class */
public final class C8272k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f25507e;

    /* renamed from: f */
    public final /* synthetic */ C8273l f25508f;

    /* renamed from: g */
    public final /* synthetic */ c0 f25509g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8272k(C8273l c8273l, c0 c0Var, d dVar) {
        super(2, dVar);
        this.f25508f = c8273l;
        this.f25509g = c0Var;
    }

    /* renamed from: i */
    public final d<s> m28703i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8272k(this.f25508f, this.f25509g, dVar);
    }

    /* renamed from: k */
    public final Object m28702k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8272k(this.f25508f, this.f25509g, dVar).m28701s(s.a);
    }

    /* renamed from: s */
    public final Object m28701s(Object obj) {
        a aVar = a.a;
        int i = this.f25507e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f25507e = 1;
            if (this.f25508f.f25510b.mo28708a((List) this.f25509g.a, this) == aVar) {
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
