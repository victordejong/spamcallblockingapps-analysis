package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.C11821a;
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
@e(c = "com.truecaller.voip.ui.VoipPresenter$listenGroupCallSettings$1", f = "VoipPresenter.kt", l = {537}, m = "invokeSuspend")
/* renamed from: e.a.d.c.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/o.class */
public final class C11312o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33293e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33294f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33295g;

    /* renamed from: e.a.d.c.o$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/o$a.class */
    public static final class C11313a implements g<C11821a> {
        public C11313a() {
            C11312o.this = r4;
        }

        /* renamed from: a */
        public Object m24849a(Object obj, d dVar) {
            if (((C11821a) obj).f34738b) {
                C11312o.this.f33294f.m24823Mj(false);
                C11325t c11325t = C11312o.this.f33294f;
                c11325t.f33323i = true;
                AbstractC11302l abstractC11302l = (AbstractC11302l) c11325t.f57683a;
                if (abstractC11302l != null) {
                    abstractC11302l.mo24868v3(C4781R.string.voip_status_on_hold, C4781R.attr.voip_call_status_warning_color);
                    C19291g.m13586T1(abstractC11302l, false, 0L, 2, null);
                }
            } else {
                C11312o c11312o = C11312o.this;
                C11325t.m24826Jj(c11312o.f33294f, c11312o.f33295g);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11312o(C11325t c11325t, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33294f = c11325t;
        this.f33295g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24852i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11312o(this.f33294f, this.f33295g, dVar);
    }

    /* renamed from: k */
    public final Object m24851k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11312o(this.f33294f, this.f33295g, dVar).m24850s(s.a);
    }

    /* renamed from: s */
    public final Object m24850s(Object obj) {
        a aVar = a.a;
        int i = this.f33293e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11821a> mo23922b = this.f33295g.mo23922b();
            C11313a c11313a = new C11313a();
            this.f33293e = 1;
            if (mo23922b.c(c11313a, this) == aVar) {
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
