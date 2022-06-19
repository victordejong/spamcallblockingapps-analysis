package p193e.p194a.p619d.p628c.p635b;

import com.truecaller.voip.C4781R;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p657v.AbstractC11822b;
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
@e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$listenAudioRouteStateChanges$1", f = "OngoingVoipPresenter.kt", l = {170}, m = "invokeSuspend")
/* renamed from: e.a.d.c.b.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/j.class */
public final class C11281j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33245e;

    /* renamed from: f */
    public final /* synthetic */ C11292o f33246f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33247g;

    /* renamed from: e.a.d.c.b.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/j$a.class */
    public static final class C11282a implements g<C11519b> {
        public C11282a() {
            C11281j.this = r4;
        }

        /* renamed from: a */
        public Object m24913a(Object obj, d dVar) {
            C11519b c11519b = (C11519b) obj;
            boolean z = true;
            if (c11519b.f33812b.isEmpty()) {
                C11292o c11292o = C11281j.this.f33246f;
                Objects.requireNonNull(c11292o);
                AbstractC11514a abstractC11514a = c11519b.f33811a;
                if ((abstractC11514a instanceof AbstractC11514a.C11516b) || (abstractC11514a instanceof AbstractC11514a.C11518d)) {
                    z = false;
                }
                AbstractC11278h abstractC11278h = (AbstractC11278h) c11292o.f57683a;
                if (abstractC11278h != null) {
                    abstractC11278h.mo24929D1(C4781R.C4782drawable.tcx_selector_voip_toggle_speaker, z);
                }
            } else {
                C11292o c11292o2 = C11281j.this.f33246f;
                Objects.requireNonNull(c11292o2);
                int m13613K1 = C19291g.m13613K1(c11519b.f33811a);
                AbstractC11278h abstractC11278h2 = (AbstractC11278h) c11292o2.f57683a;
                if (abstractC11278h2 != null) {
                    abstractC11278h2.mo24929D1(m13613K1, true);
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11281j(C11292o c11292o, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33246f = c11292o;
        this.f33247g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24916i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11281j(this.f33246f, this.f33247g, dVar);
    }

    /* renamed from: k */
    public final Object m24915k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11281j(this.f33246f, this.f33247g, dVar).m24914s(s.a);
    }

    /* renamed from: s */
    public final Object m24914s(Object obj) {
        a aVar = a.a;
        int i = this.f33245e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11519b> mo23966Y = this.f33247g.mo23966Y();
            C11282a c11282a = new C11282a();
            this.f33245e = 1;
            if (mo23966Y.c(c11282a, this) == aVar) {
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
