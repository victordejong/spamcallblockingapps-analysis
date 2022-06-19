package p193e.p194a.p619d.p670z.p671b;

import com.truecaller.voip.C4781R;
import io.agora.rtc.Constants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.u1;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.z.b.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c.class */
public final class C12334c extends AbstractC20574a<AbstractC12333b> implements AbstractC12332a {

    /* renamed from: d */
    public p1 f36017d;

    /* renamed from: e */
    public final f f36018e;

    /* renamed from: f */
    public final AbstractC11824d f36019f;

    /* renamed from: g */
    public final AbstractC12095d f36020g;

    /* renamed from: h */
    public final AbstractC19223c0 f36021h;

    /* renamed from: i */
    public final AbstractC11405f0 f36022i;

    @e(c = "com.truecaller.voip.service.call.CallServicePresenter$exitWhenIdle$1", f = "CallServicePresenter.kt", l = {267}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.b.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$a.class */
    public static final class C12335a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36023e;

        @e(c = "com.truecaller.voip.service.call.CallServicePresenter$exitWhenIdle$1$1", f = "CallServicePresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.z.b.c$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$a$a.class */
        public static final class C12336a extends i implements p<AbstractC11835f, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f36025e;

            public C12336a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m23230i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12336a c12336a = new C12336a(dVar);
                c12336a.f36025e = obj;
                return c12336a;
            }

            /* renamed from: k */
            public final Object m23229k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(((AbstractC11835f) obj) instanceof AbstractC11835f.C11837b);
            }

            /* renamed from: s */
            public final Object m23228s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(((AbstractC11835f) this.f36025e) instanceof AbstractC11835f.C11837b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12335a(d dVar) {
            super(2, dVar);
            C12334c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23233i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12335a(dVar);
        }

        /* renamed from: k */
        public final Object m23232k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12335a(dVar).m23231s(s.a);
        }

        /* renamed from: s */
        public final Object m23231s(Object obj) {
            a aVar = a.a;
            int i = this.f36023e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<AbstractC11835f> state = C12334c.this.f36019f.getState();
                C12336a c12336a = new C12336a(null);
                this.f36023e = 1;
                if (s1.a.a.a.v0.f.d.N0(state, c12336a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC12333b abstractC12333b = (AbstractC12333b) C12334c.this.f57683a;
            if (abstractC12333b != null) {
                abstractC12333b.mo23245k(null);
            }
            AbstractC12333b abstractC12333b2 = (AbstractC12333b) C12334c.this.f57683a;
            if (abstractC12333b2 != null) {
                abstractC12333b2.mo23243t();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.z.b.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$b.class */
    public static final class C12337b extends m implements s1.z.b.l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12337b() {
            super(1);
            C12334c.this = r4;
        }

        /* renamed from: d */
        public Object m23227d(Object obj) {
            Throwable th = (Throwable) obj;
            C12334c.this.f36017d = null;
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.service.call.CallServicePresenter", f = "CallServicePresenter.kt", l = {126, Constants.ERR_WATERMARKR_INFO}, m = "handleNewOutgoingCall")
    /* renamed from: e.a.d.z.b.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$c.class */
    public static final class C12338c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36027d;

        /* renamed from: e */
        public int f36028e;

        /* renamed from: g */
        public Object f36030g;

        /* renamed from: h */
        public Object f36031h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12338c(d dVar) {
            super(dVar);
            C12334c.this = r4;
        }

        /* renamed from: s */
        public final Object m23226s(Object obj) {
            this.f36027d = obj;
            this.f36028e |= Integer.MIN_VALUE;
            return C12334c.this.m23238Mj(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.service.call.CallServicePresenter$listenEndCallAction$1", f = "CallServicePresenter.kt", l = {331}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.b.c$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$d.class */
    public static final class C12339d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36032e;

        /* renamed from: e.a.d.z.b.c$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$d$a.class */
        public static final class C12340a implements g<Boolean> {
            public C12340a() {
                C12339d.this = r4;
            }

            /* renamed from: a */
            public Object m23222a(Object obj, d dVar) {
                if (((Boolean) obj).booleanValue()) {
                    C12334c c12334c = C12334c.this;
                    AbstractC12333b abstractC12333b = (AbstractC12333b) c12334c.f57683a;
                    if (abstractC12333b != null) {
                        abstractC12333b.mo23248h(C12334c.m23241Jj(c12334c, C4781R.string.voip_status_ending));
                    }
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12339d(d dVar) {
            super(2, dVar);
            C12334c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23225i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12339d(dVar);
        }

        /* renamed from: k */
        public final Object m23224k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12339d(dVar).m23223s(s.a);
        }

        /* renamed from: s */
        public final Object m23223s(Object obj) {
            a aVar = a.a;
            int i = this.f36032e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<Boolean> mo23957f = C12334c.this.f36019f.mo23957f();
                C12340a c12340a = new C12340a();
                this.f36032e = 1;
                if (mo23957f.c(c12340a, this) == aVar) {
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

    @e(c = "com.truecaller.voip.service.call.CallServicePresenter", f = "CallServicePresenter.kt", l = {147}, m = "updateNotification")
    /* renamed from: e.a.d.z.b.c$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$e.class */
    public static final class C12341e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36035d;

        /* renamed from: e */
        public int f36036e;

        /* renamed from: g */
        public Object f36038g;

        /* renamed from: h */
        public Object f36039h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12341e(d dVar) {
            super(dVar);
            C12334c.this = r4;
        }

        /* renamed from: s */
        public final Object m23221s(Object obj) {
            this.f36035d = obj;
            this.f36036e |= Integer.MIN_VALUE;
            return C12334c.this.m23234Qj(null, this);
        }
    }

    @e(c = "com.truecaller.voip.service.call.CallServicePresenter$updateNotification$2", f = "CallServicePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.b.c$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/c$f.class */
    public static final class C12342f extends i implements p<AbstractC11840h, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f36040e;

        public C12342f(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23220i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12342f c12342f = new C12342f(dVar);
            c12342f.f36040e = obj;
            return c12342f;
        }

        /* renamed from: k */
        public final Object m23219k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC11840h) obj).m25331a(AbstractC11840h.C11851c.f34820b));
        }

        /* renamed from: s */
        public final Object m23218s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC11840h) this.f36040e).m25331a(AbstractC11840h.C11851c.f34820b));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12334c(@Named("UI") f fVar, AbstractC11824d abstractC11824d, AbstractC12095d abstractC12095d, AbstractC19223c0 abstractC19223c0, AbstractC11405f0 abstractC11405f0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC12095d, "invitationManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC11405f0, "analyticsUtil");
        this.f36018e = fVar;
        this.f36019f = abstractC11824d;
        this.f36020g = abstractC12095d;
        this.f36021h = abstractC19223c0;
        this.f36022i = abstractC11405f0;
    }

    /* renamed from: Ij */
    public static final String m23242Ij(C12334c c12334c) {
        AbstractC19223c0 abstractC19223c0 = c12334c.f36021h;
        String mo13768b = abstractC19223c0.mo13768b(C4781R.string.voip_truecaller_audio_call, abstractC19223c0.mo13768b(C4781R.string.voip_text, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri…ring.voip_text)\n        )");
        return mo13768b;
    }

    /* renamed from: Jj */
    public static final String m23241Jj(C12334c c12334c, int i) {
        String mo13768b = c12334c.f36021h.mo13768b(i, new Object[0]);
        l.d(mo13768b, "resourceProvider.getString(res)");
        return mo13768b;
    }

    /* renamed from: Kj */
    public final void m23240Kj() {
        if (this.f36017d != null) {
            return;
        }
        u1 w2 = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12335a(null), 3, (Object) null);
        this.f36017d = w2;
        w2.n0(false, true, new C12337b());
    }

    /* renamed from: Lj */
    public final AbstractC11822b m23239Lj() {
        AbstractC11822b abstractC11822b;
        AbstractC11835f abstractC11835f = (AbstractC11835f) this.f36019f.getState().getValue();
        if (abstractC11835f instanceof AbstractC11835f.C11836a) {
            abstractC11822b = ((AbstractC11835f.C11836a) abstractC11835f).f34807a;
        } else {
            AbstractC12333b abstractC12333b = (AbstractC12333b) this.f57683a;
            if (abstractC12333b != null) {
                abstractC12333b.mo23243t();
            }
            abstractC11822b = null;
        }
        return abstractC11822b;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0111  */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23238Mj(java.util.Set<java.lang.String> r6, com.truecaller.voip.VoipCallOptions r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12334c.m23238Mj(java.util.Set, com.truecaller.voip.VoipCallOptions, s1.w.d):java.lang.Object");
    }

    /* renamed from: Nj */
    public final p1 m23237Nj() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12339d(null), 3, (Object) null);
    }

    /* renamed from: Oj */
    public final void m23236Oj() {
        String mo13768b = this.f36021h.mo13768b(C4781R.string.voip_group_error_initiating_outgoing_call, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…initiating_outgoing_call)");
        AbstractC12333b abstractC12333b = (AbstractC12333b) this.f57683a;
        if (abstractC12333b != null) {
            abstractC12333b.mo23256M(mo13768b);
        }
    }

    /* renamed from: Pj */
    public final void m23235Pj() {
        AbstractC19223c0 abstractC19223c0 = this.f36021h;
        String mo13768b = abstractC19223c0.mo13768b(C4781R.string.voip_error_already_in_another_call, abstractC19223c0.mo13768b(C4781R.string.voip_text, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri…ring(R.string.voip_text))");
        AbstractC12333b abstractC12333b = (AbstractC12333b) this.f57683a;
        if (abstractC12333b != null) {
            abstractC12333b.mo23256M(mo13768b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* renamed from: Qj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23234Qj(p193e.p194a.p619d.p657v.AbstractC11822b r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12334c.m23234Qj(e.a.d.v.b, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.d.z.b.b] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC12333b abstractC12333b) {
        AbstractC12333b abstractC12333b2 = abstractC12333b;
        l.e(abstractC12333b2, "presenterView");
        this.f57683a = abstractC12333b2;
        abstractC12333b2.mo23250f();
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12361k(this, null), 3, (Object) null);
    }
}
