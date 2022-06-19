package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.C11821a;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import q3.a.x2.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$setupGroupCallPeersListenerJobs$2", f = "VoipPresenter.kt", l = {406}, m = "invokeSuspend")
/* renamed from: e.a.d.c.x */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/x.class */
public final class C11331x extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33340e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33341f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33342g;

    @e(c = "com.truecaller.voip.ui.VoipPresenter$setupGroupCallPeersListenerJobs$2$1", f = "VoipPresenter.kt", l = {537}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.x$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/x$a.class */
    public static final class C11332a extends i implements p<C11821a, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33343e;

        /* renamed from: f */
        public int f33344f;

        /* renamed from: e.a.d.c.x$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/x$a$a.class */
        public static final class C11333a implements g<Long> {
            public C11333a() {
                C11332a.this = r4;
            }

            /* renamed from: a */
            public Object m24804a(Object obj, d dVar) {
                a aVar;
                a aVar2 = s.a;
                long longValue = ((Number) obj).longValue();
                AbstractC11302l abstractC11302l = (AbstractC11302l) C11331x.this.f33341f.f57683a;
                if (abstractC11302l != null) {
                    abstractC11302l.mo24868v3(C4781R.string.voip_empty, C4781R.attr.voip_call_status_neutral_color);
                }
                AbstractC11302l abstractC11302l2 = (AbstractC11302l) C11331x.this.f33341f.f57683a;
                if (abstractC11302l2 != null) {
                    abstractC11302l2.mo24869u3(true, longValue);
                    aVar = aVar2;
                } else {
                    aVar = null;
                }
                return aVar == a.a ? aVar : aVar2;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11332a(d dVar) {
            super(2, dVar);
            C11331x.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24807i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11332a c11332a = new C11332a(dVar);
            c11332a.f33343e = obj;
            return c11332a;
        }

        /* renamed from: k */
        public final Object m24806k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11332a c11332a = new C11332a(dVar);
            c11332a.f33343e = obj;
            return c11332a.m24805s(s.a);
        }

        /* renamed from: s */
        public final Object m24805s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f33344f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (((C11821a) this.f33343e).f34739c) {
                    C11325t c11325t = C11331x.this.f33341f;
                    c11325t.f33318d = true;
                    AbstractC11302l abstractC11302l = (AbstractC11302l) c11325t.f57683a;
                    if (abstractC11302l != null) {
                        abstractC11302l.mo24868v3(C4781R.string.voip_status_reconnecting, C4781R.attr.voip_call_status_warning_color);
                    }
                    AbstractC11302l abstractC11302l2 = (AbstractC11302l) C11331x.this.f33341f.f57683a;
                    if (abstractC11302l2 != null) {
                        C19291g.m13586T1(abstractC11302l2, false, 0L, 2, null);
                    }
                } else {
                    C11331x c11331x = C11331x.this;
                    c11331x.f33341f.f33318d = false;
                    i1<Long> mo23704f = c11331x.f33342g.mo23704f();
                    C11333a c11333a = new C11333a();
                    this.f33344f = 1;
                    Object c = mo23704f.c(new t0.a(c11333a), this);
                    if (c != obj3) {
                        c = obj2;
                    }
                    if (c == obj3) {
                        return obj3;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11331x(C11325t c11325t, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33341f = c11325t;
        this.f33342g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24810i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11331x(this.f33341f, this.f33342g, dVar);
    }

    /* renamed from: k */
    public final Object m24809k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11331x(this.f33341f, this.f33342g, dVar).m24808s(s.a);
    }

    /* renamed from: s */
    public final Object m24808s(Object obj) {
        a aVar = a.a;
        int i = this.f33340e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11821a> mo23922b = this.f33342g.mo23922b();
            C11332a c11332a = new C11332a(null);
            this.f33340e = 1;
            if (s1.a.a.a.v0.f.d.g0(mo23922b, c11332a, this) == aVar) {
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
