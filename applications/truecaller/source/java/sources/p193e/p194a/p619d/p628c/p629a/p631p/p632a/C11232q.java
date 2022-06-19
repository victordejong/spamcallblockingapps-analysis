package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import com.truecaller.voip.C4781R;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.p658k.AbstractC12015z;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTilePresenter$maybeListenInviteChanges$1", f = "VoipContactTilePresenter.kt", l = {310, 316}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.q */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/q.class */
public final class C11232q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33145e;

    /* renamed from: f */
    public final /* synthetic */ C11243u f33146f;

    /* renamed from: g */
    public final /* synthetic */ int f33147g;

    /* renamed from: e.a.d.c.a.p.a.q$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/q$a.class */
    public static final class C11233a implements g<Map<Integer, ? extends AbstractC12015z>> {
        public C11233a() {
            C11232q.this = r4;
        }

        /* renamed from: a */
        public Object m25001a(Object obj, d dVar) {
            a aVar;
            AbstractC11231p abstractC11231p;
            a aVar2 = s.a;
            AbstractC12015z abstractC12015z = (AbstractC12015z) ((Map) obj).get(new Integer(C11232q.this.f33147g));
            if (abstractC12015z != null) {
                C11243u c11243u = C11232q.this.f33146f;
                Objects.requireNonNull(c11243u);
                if (abstractC12015z instanceof AbstractC12015z.C12018c) {
                    int i = C4781R.string.voip_contact_tile_status_connecting;
                    int i2 = C4781R.color.voip_contact_tile_call_status_orange;
                    AbstractC11231p abstractC11231p2 = (AbstractC11231p) c11243u.f57683a;
                    if (abstractC11231p2 != null) {
                        abstractC11231p2.mo24974l(Integer.valueOf(i).intValue(), Integer.valueOf(i2).intValue());
                        abstractC11231p2.mo24971x0(false);
                        abstractC11231p2.mo24973o(false);
                    }
                } else if ((abstractC12015z instanceof AbstractC12015z.C12016a) && (abstractC11231p = (AbstractC11231p) c11243u.f57683a) != null) {
                    abstractC11231p.mo24975i(false);
                    int i3 = C4781R.string.voip_contact_tile_status_ended_invite_failed;
                    int i4 = C4781R.color.voip_contact_tile_call_status_red;
                    AbstractC11231p abstractC11231p3 = (AbstractC11231p) c11243u.f57683a;
                    if (abstractC11231p3 != null) {
                        abstractC11231p3.mo24974l(Integer.valueOf(i3).intValue(), Integer.valueOf(i4).intValue());
                        abstractC11231p3.mo24971x0(false);
                        abstractC11231p3.mo24973o(false);
                    }
                }
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* renamed from: e.a.d.c.a.p.a.q$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/q$b.class */
    public static final class C11234b implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f33149a;

        /* renamed from: e.a.d.c.a.p.a.q$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/q$b$a.class */
        public static final class C11235a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f33150a;

            @e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTilePresenter$maybeListenInviteChanges$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "VoipContactTilePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.c.a.p.a.q$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/q$b$a$a.class */
            public static final class C11236a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33151d;

                /* renamed from: e */
                public int f33152e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11236a(d dVar) {
                    super(dVar);
                    C11235a.this = r4;
                }

                /* renamed from: s */
                public final Object m24998s(Object obj) {
                    this.f33151d = obj;
                    this.f33152e |= Integer.MIN_VALUE;
                    return C11235a.this.m24999a(null, this);
                }
            }

            public C11235a(g gVar, C11234b c11234b) {
                this.f33150a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m24999a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11232q.C11234b.C11235a.C11236a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.c.a.p.a.q$b$a$a r0 = (p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11232q.C11234b.C11235a.C11236a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f33152e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33152e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.c.a.p.a.q$b$a$a r0 = new e.a.d.c.a.p.a.q$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f33151d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f33152e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L90
                L5e:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L68:
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r5
                    q3.a.x2.g r0 = r0.f33150a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f33152e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L90
                    r0 = r9
                    return r0
                L90:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11232q.C11234b.C11235a.m24999a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11234b(f fVar) {
            this.f33149a = fVar;
        }

        /* renamed from: c */
        public Object m25000c(g gVar, d dVar) {
            Object c = this.f33149a.c(new C11235a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11232q(C11243u c11243u, int i, d dVar) {
        super(2, dVar);
        this.f33146f = c11243u;
        this.f33147g = i;
    }

    /* renamed from: i */
    public final d<s> m25004i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11232q(this.f33146f, this.f33147g, dVar);
    }

    /* renamed from: k */
    public final Object m25003k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11232q(this.f33146f, this.f33147g, dVar).m25002s(s.a);
    }

    /* renamed from: s */
    public final Object m25002s(Object obj) {
        AbstractC11822b abstractC11822b;
        i1<Map<Integer, AbstractC12015z>> mo23905i;
        a aVar = a.a;
        int i = this.f33145e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C11234b c11234b = new C11234b(this.f33146f.f33173k.getState());
            this.f33145e = 1;
            Object O0 = s1.a.a.a.v0.f.d.O0(c11234b, this);
            obj = O0;
            if (O0 == aVar) {
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
        AbstractC11835f.C11836a c11836a = (AbstractC11835f.C11836a) obj;
        if (c11836a != null && (abstractC11822b = c11836a.f34807a) != null && (mo23905i = abstractC11822b.mo23905i()) != null) {
            C11233a c11233a = new C11233a();
            this.f33145e = 2;
            if (mo23905i.c(c11233a, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
