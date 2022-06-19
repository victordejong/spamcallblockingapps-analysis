package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$listenEndCallAction$1", f = "VoipPresenter.kt", l = {537}, m = "invokeSuspend")
/* renamed from: e.a.d.c.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/m.class */
public final class C11303m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33276e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33277f;

    /* renamed from: e.a.d.c.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/m$a.class */
    public static final class C11304a implements g<Boolean> {
        public C11304a() {
            C11303m.this = r4;
        }

        /* renamed from: a */
        public Object m24863a(Object obj, d dVar) {
            AbstractC11822b mo23961b;
            AbstractC11302l abstractC11302l;
            s sVar = s.a;
            if (((Boolean) obj).booleanValue() && (((mo23961b = C11303m.this.f33277f.f33327m.mo23961b()) == null || !(mo23961b.getState().getValue() instanceof AbstractC11840h.C11851c)) && (abstractC11302l = (AbstractC11302l) C11303m.this.f33277f.f57683a) != null)) {
                abstractC11302l.mo24868v3(C4781R.string.voip_status_ending, C4781R.attr.voip_call_status_warning_color);
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11303m(C11325t c11325t, d dVar) {
        super(2, dVar);
        this.f33277f = c11325t;
    }

    /* renamed from: i */
    public final d<s> m24866i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11303m(this.f33277f, dVar);
    }

    /* renamed from: k */
    public final Object m24865k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11303m(this.f33277f, dVar).m24864s(s.a);
    }

    /* renamed from: s */
    public final Object m24864s(Object obj) {
        a aVar = a.a;
        int i = this.f33276e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<Boolean> mo23957f = this.f33277f.f33327m.mo23957f();
            C11304a c11304a = new C11304a();
            this.f33276e = 1;
            if (mo23957f.c(c11304a, this) == aVar) {
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
