package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.x0;
import q3.a.x2.y0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$listenSinglePeerCallSettings$1", f = "VoipPresenter.kt", l = {537}, m = "invokeSuspend")
/* renamed from: e.a.d.c.r */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/r.class */
public final class C11321r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33309e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33310f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12020a f33311g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC11822b f33312h;

    @e(c = "com.truecaller.voip.ui.VoipPresenter$listenSinglePeerCallSettings$1$1", f = "VoipPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.r$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/r$a.class */
    public static final class C11322a extends i implements q<C11821a, Long, d<? super k<? extends C11821a, ? extends Long>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33313e;

        /* renamed from: f */
        public /* synthetic */ Object f33314f;

        public C11322a(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m24834h(Object obj, Object obj2, Object obj3) {
            C11821a c11821a = (C11821a) obj;
            d dVar = (d) obj3;
            l.e(c11821a, "callSetting");
            l.e(dVar, "continuation");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return new k(c11821a, (Long) obj2);
        }

        /* renamed from: s */
        public final Object m24833s(Object obj) {
            C25225a.m3932a3(obj);
            return new k((C11821a) this.f33313e, (Long) this.f33314f);
        }
    }

    /* renamed from: e.a.d.c.r$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/r$b.class */
    public static final class C11323b implements g<k<? extends C11821a, ? extends Long>> {
        public C11323b() {
            C11321r.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* renamed from: a */
        public Object m24832a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            k kVar = (k) obj;
            C11821a c11821a = (C11821a) kVar.a;
            Long l = (Long) kVar.b;
            if (!C11321r.this.f33310f.f33318d) {
                k kVar2 = c11821a.f34737a ? new k(new Integer(C4781R.string.voip_status_call_muted), new Integer(C4781R.attr.voip_call_status_ok_color)) : c11821a.f34738b ? new k(new Integer(C4781R.string.voip_status_on_hold), new Integer(C4781R.attr.voip_call_status_warning_color)) : new k(new Integer(C4781R.string.voip_empty), new Integer(C4781R.attr.voip_call_status_neutral_color));
                AbstractC11302l abstractC11302l = (AbstractC11302l) C11321r.this.f33310f.f57683a;
                if (abstractC11302l != null) {
                    abstractC11302l.mo24868v3(((Number) kVar2.a).intValue(), ((Number) kVar2.b).intValue());
                }
                boolean z = !c11821a.f34737a && !c11821a.f34738b && l != null;
                AbstractC11302l abstractC11302l2 = (AbstractC11302l) C11321r.this.f33310f.f57683a;
                if (abstractC11302l2 != null) {
                    abstractC11302l2.mo24869u3(z, (l != null ? l.longValue() : false) == true ? 1L : 0L);
                    aVar = aVar2;
                } else {
                    aVar = null;
                }
                if (aVar == a.a) {
                    return aVar;
                }
            }
            return aVar2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11321r(C11325t c11325t, AbstractC12020a abstractC12020a, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33310f = c11325t;
        this.f33311g = abstractC12020a;
        this.f33312h = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24837i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11321r(this.f33310f, this.f33311g, this.f33312h, dVar);
    }

    /* renamed from: k */
    public final Object m24836k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11321r(this.f33310f, this.f33311g, this.f33312h, dVar).m24835s(s.a);
    }

    /* renamed from: s */
    public final Object m24835s(Object obj) {
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i = this.f33309e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f mo23702b = this.f33311g.mo23702b();
            f mo23704f = this.f33312h.mo23704f();
            C11322a c11322a = new C11322a(null);
            C11323b c11323b = new C11323b();
            this.f33309e = 1;
            Object h0 = s1.a.a.a.v0.f.d.h0(c11323b, new f[]{mo23702b, mo23704f}, y0.b, new x0(c11322a, (d) null), this);
            if (h0 != obj3) {
                h0 = obj2;
            }
            if (h0 == obj3) {
                return obj3;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj2;
    }
}
