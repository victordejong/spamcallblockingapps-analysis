package p193e.p194a.p619d.p628c;

import com.truecaller.voip.C4781R;
import com.truecaller.voip.p192ui.util.drawable.RingDrawableState;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.g;
import q3.a.x2.i1;
import q3.a.x2.t0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.VoipPresenter$setupOngoingGroupCallStatusJob$1", f = "VoipPresenter.kt", l = {537, 540}, m = "invokeSuspend")
/* renamed from: e.a.d.c.y */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/y.class */
public final class C11334y extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33347e;

    /* renamed from: f */
    public final /* synthetic */ C11325t f33348f;

    /* renamed from: g */
    public final /* synthetic */ Set f33349g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC11822b f33350h;

    /* renamed from: e.a.d.c.y$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/y$a.class */
    public static final class C11335a implements g<AbstractC12022c> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC12020a f33352b;

        public C11335a(AbstractC12020a abstractC12020a) {
            C11334y.this = r4;
            this.f33352b = abstractC12020a;
        }

        /* renamed from: a */
        public Object m24800a(Object obj, d dVar) {
            RingDrawableState ringDrawableState;
            k kVar;
            AbstractC11302l abstractC11302l;
            int i;
            AbstractC11302l abstractC11302l2;
            AbstractC12022c abstractC12022c = (AbstractC12022c) obj;
            C11325t c11325t = C11334y.this.f33348f;
            Objects.requireNonNull(c11325t);
            AbstractC12022c.C12033c c12033c = AbstractC12022c.C12033c.f35254b;
            AbstractC12022c.C12034d c12034d = AbstractC12022c.C12034d.f35255b;
            AbstractC12022c.C12023a c12023a = AbstractC12022c.C12023a.f35245b;
            if (l.a(abstractC12022c, c12023a)) {
                ringDrawableState = null;
            } else if (l.a(abstractC12022c, c12034d) || l.a(abstractC12022c, c12033c)) {
                ringDrawableState = RingDrawableState.OK;
            } else if (!(abstractC12022c instanceof AbstractC12022c.AbstractC12024b)) {
                throw new s1.i();
            } else {
                ringDrawableState = RingDrawableState.ERROR;
            }
            if (ringDrawableState != null && (abstractC11302l2 = (AbstractC11302l) c11325t.f57683a) != null) {
                abstractC11302l2.setRingState(ringDrawableState);
            }
            if (l.a(abstractC12022c, c12023a)) {
                kVar = new k(Integer.valueOf(C4781R.string.voip_status_connecting), Integer.valueOf(C4781R.attr.voip_call_status_warning_color));
            } else if (l.a(abstractC12022c, c12034d)) {
                kVar = new k(Integer.valueOf(C4781R.string.voip_contact_tile_status_ringing), Integer.valueOf(C4781R.attr.voip_call_status_ok_color));
            } else if (l.a(abstractC12022c, c12033c)) {
                kVar = null;
            } else if (!(abstractC12022c instanceof AbstractC12022c.AbstractC12024b)) {
                throw new s1.i();
            } else {
                if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12028d) {
                    i = C4781R.string.voip_contact_tile_status_ended_invite_canceled;
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12029e) {
                    i = C4781R.string.voip_contact_tile_status_ended_invite_rejected;
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12032h) {
                    i = C4781R.string.voip_contact_tile_status_ended_offline;
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12031g) {
                    i = C4781R.string.voip_contact_tile_status_ended_no_answer;
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12025a) {
                    i = C4781R.string.voip_contact_tile_status_ended_busy;
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12026b) {
                    i = C4781R.string.voip_contact_tile_status_ended_failed;
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12027c) {
                    i = C19291g.m13607M1(((AbstractC12022c.AbstractC12024b.C12027c) abstractC12022c).f35248b);
                } else if (!(abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12030f)) {
                    throw new s1.i();
                } else {
                    i = C4781R.string.voip_contact_tile_status_ended;
                }
                kVar = new k(Integer.valueOf(i), Integer.valueOf(C4781R.attr.voip_call_status_error_color));
            }
            if (kVar != null && (abstractC11302l = (AbstractC11302l) c11325t.f57683a) != null) {
                abstractC11302l.mo24868v3(((Number) kVar.a).intValue(), ((Number) kVar.b).intValue());
            }
            if (abstractC12022c instanceof AbstractC12022c.C12033c) {
                C11334y c11334y = C11334y.this;
                C11325t c11325t2 = c11334y.f33348f;
                AbstractC11822b abstractC11822b = c11334y.f33350h;
                AbstractC12020a abstractC12020a = this.f33352b;
                Objects.requireNonNull(c11325t2);
                c11325t2.f33322h = s1.a.a.a.v0.f.d.w2(c11325t2, (f) null, (j0) null, new C11321r(c11325t2, abstractC12020a, abstractC11822b, null), 3, (Object) null);
            } else {
                AbstractC11302l abstractC11302l3 = (AbstractC11302l) C11334y.this.f33348f.f57683a;
                if (abstractC11302l3 != null) {
                    C19291g.m13586T1(abstractC11302l3, false, 0L, 2, null);
                }
                p1 p1Var = C11334y.this.f33348f.f33322h;
                if (p1Var != null) {
                    s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.c.y$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/y$b.class */
    public static final class C11336b implements g<Long> {
        public C11336b() {
            C11334y.this = r4;
        }

        /* renamed from: a */
        public Object m24799a(Object obj, d dVar) {
            long longValue = ((Number) obj).longValue();
            AbstractC11302l abstractC11302l = (AbstractC11302l) C11334y.this.f33348f.f57683a;
            if (abstractC11302l != null) {
                abstractC11302l.mo24868v3(C4781R.string.voip_empty, C4781R.attr.voip_call_status_neutral_color);
                abstractC11302l.mo24869u3(true, longValue);
            } else {
                abstractC11302l = null;
            }
            return abstractC11302l == a.a ? abstractC11302l : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11334y(C11325t c11325t, Set set, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33348f = c11325t;
        this.f33349g = set;
        this.f33350h = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24803i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11334y(this.f33348f, this.f33349g, this.f33350h, dVar);
    }

    /* renamed from: k */
    public final Object m24802k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11334y(this.f33348f, this.f33349g, this.f33350h, dVar).m24801s(s.a);
    }

    /* renamed from: s */
    public final Object m24801s(Object obj) {
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i = this.f33347e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f33349g.size() == 1) {
                this.f33348f.f33323i = false;
                AbstractC12020a abstractC12020a = (AbstractC12020a) s1.u.i.A(this.f33349g);
                i1<AbstractC12022c> state = abstractC12020a.getState();
                C11335a c11335a = new C11335a(abstractC12020a);
                this.f33347e = 1;
                if (state.c(c11335a, this) == obj3) {
                    return obj3;
                }
            } else {
                AbstractC11302l abstractC11302l = (AbstractC11302l) this.f33348f.f57683a;
                if (abstractC11302l != null) {
                    abstractC11302l.mo24868v3(C4781R.string.voip_empty, C4781R.attr.voip_call_status_neutral_color);
                }
                this.f33348f.f33323i = true;
                i1<Long> mo23704f = this.f33350h.mo23704f();
                C11336b c11336b = new C11336b();
                this.f33347e = 2;
                Object c = mo23704f.c(new t0.a(c11336b), this);
                if (c != obj3) {
                    c = obj2;
                }
                if (c == obj3) {
                    return obj3;
                }
            }
        } else if (i != 1 && i != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj2;
    }
}
