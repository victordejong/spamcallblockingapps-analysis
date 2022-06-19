package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUserBadge;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1213s2.AbstractC20194a;
import p193e.p194a.p1213s2.C20200f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.u1;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.d.c.a.p.a.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/h.class */
public final class C11206h extends AbstractC20574a<AbstractC11203e> implements AbstractC11201c {

    /* renamed from: d */
    public final Set<C11593e> f33097d = new LinkedHashSet();

    /* renamed from: e */
    public Set<? extends AbstractC12020a> f33098e = u.a;

    /* renamed from: f */
    public final List<C11593e> f33099f = new ArrayList();

    /* renamed from: g */
    public boolean f33100g;

    /* renamed from: h */
    public boolean f33101h;

    /* renamed from: i */
    public boolean f33102i;

    /* renamed from: j */
    public p1 f33103j;

    /* renamed from: k */
    public AbstractC11202d f33104k;

    /* renamed from: l */
    public final f f33105l;

    /* renamed from: m */
    public final f f33106m;

    /* renamed from: n */
    public final AbstractC11824d f33107n;

    /* renamed from: o */
    public final AbstractC12095d f33108o;

    /* renamed from: p */
    public final AbstractC19223c0 f33109p;

    /* renamed from: q */
    public final AbstractC20194a f33110q;

    /* renamed from: e.a.d.c.a.p.a.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/h$a.class */
    public static final class C11207a extends m implements l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11207a() {
            super(1);
            C11206h.this = r4;
        }

        /* renamed from: d */
        public Object m25031d(Object obj) {
            Throwable th = (Throwable) obj;
            C11206h.this.f33103j = null;
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$showCallAvatar$1", f = "VoipContactTileGroupPresenter.kt", l = {363}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.a.p.a.h$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/h$b.class */
    public static final class C11208b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33112e;

        /* renamed from: g */
        public final /* synthetic */ C11593e f33114g;

        /* renamed from: e.a.d.c.a.p.a.h$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/h$b$a.class */
        public static final class C11209a implements g<AbstractC11416j> {
            public C11209a() {
                C11208b.this = r4;
            }

            /* renamed from: a */
            public Object m25027a(Object obj, d dVar) {
                AbstractC11203e abstractC11203e;
                AbstractC11203e abstractC11203e2;
                AbstractC11203e abstractC11203e3;
                AbstractC11416j abstractC11416j = (AbstractC11416j) obj;
                AbstractC11203e abstractC11203e4 = (AbstractC11203e) C11206h.this.f57683a;
                if (abstractC11203e4 != null) {
                    abstractC11203e4.mo25046n0(false);
                }
                if (s1.z.c.l.a(abstractC11416j, AbstractC11416j.C11419c.f33542a)) {
                    AbstractC11203e abstractC11203e5 = (AbstractC11203e) C11206h.this.f57683a;
                    if (abstractC11203e5 != null) {
                        abstractC11203e5.setAvatarConfig(new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535));
                        abstractC11203e5.mo25046n0(true);
                    }
                } else if (abstractC11416j instanceof AbstractC11416j.C11418b) {
                    AbstractC20194a abstractC20194a = C11206h.this.f33110q;
                    AbstractC11416j.C11418b c11418b = (AbstractC11416j.C11418b) abstractC11416j;
                    C11161a c11161a = c11418b.f33540a;
                    s1.z.c.l.e(c11161a, "$this$toCallAnnouncementInfo");
                    abstractC20194a.mo11365b(new C20200f(c11161a.f32995c, c11161a.f32996d, true, c11161a.f33001i));
                    C11206h c11206h = C11206h.this;
                    C11161a c11161a2 = c11418b.f33540a;
                    AbstractC11203e abstractC11203e6 = (AbstractC11203e) c11206h.f57683a;
                    if (abstractC11203e6 != null) {
                        AbstractC11202d abstractC11202d = c11206h.f33104k;
                        if (abstractC11202d != null) {
                            abstractC11202d.mo24828Cc(c11161a2);
                        }
                        abstractC11203e6.setProfileName(c11161a2.f32995c);
                        abstractC11203e6.mo25049d0(true);
                        abstractC11203e6.setAvatarConfig(C19291g.m13618J(c11161a2));
                        abstractC11203e6.mo25051D(C19291g.m13623H0(c11161a2));
                        if (!c11206h.f33102i) {
                            VoipUserBadge voipUserBadge = c11161a2.f32998f;
                            if (((voipUserBadge.f16293a && c11161a2.f33000h != null) || voipUserBadge.f16295c || voipUserBadge.f16296d || (!c11161a2.f33001i && !c11161a2.f33002j)) && (abstractC11203e3 = (AbstractC11203e) c11206h.f57683a) != null) {
                                abstractC11203e3.mo25045p();
                            }
                        }
                        c11206h.f33100g = true;
                        if (c11206h.f33101h && (abstractC11203e2 = (AbstractC11203e) c11206h.f57683a) != null) {
                            abstractC11203e2.mo25043u0();
                        }
                        VoipUserBadge voipUserBadge2 = c11161a2.f32998f;
                        boolean z = false;
                        if (!voipUserBadge2.f16298f) {
                            z = false;
                            if (!voipUserBadge2.f16296d) {
                                z = true;
                            }
                        }
                        if (z && c11161a2.f33001i) {
                            abstractC11203e6.setProfilePhone(c11161a2.f32996d);
                        }
                    }
                } else if (s1.z.c.l.a(abstractC11416j, AbstractC11416j.C11417a.f33539a) && (abstractC11203e = (AbstractC11203e) C11206h.this.f57683a) != null) {
                    abstractC11203e.setAvatarConfig(new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535));
                    String mo13768b = C11206h.this.f33109p.mo13768b(C4781R.string.voip_non_identified_contact, new Object[0]);
                    s1.z.c.l.d(mo13768b, "resourceProvider.getStri…p_non_identified_contact)");
                    abstractC11203e.setProfileName(mo13768b);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11208b(C11593e c11593e, d dVar) {
            super(2, dVar);
            C11206h.this = r5;
            this.f33114g = c11593e;
        }

        /* renamed from: i */
        public final d<s> m25030i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11208b(this.f33114g, dVar);
        }

        /* renamed from: k */
        public final Object m25029k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C11208b(this.f33114g, dVar).m25028s(s.a);
        }

        /* renamed from: s */
        public final Object m25028s(Object obj) {
            a aVar = a.a;
            int i = this.f33112e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<AbstractC11416j> i1Var = this.f33114g.f33991b;
                C11209a c11209a = new C11209a();
                this.f33112e = 1;
                if (i1Var.c(c11209a, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11206h(@Named("UI") f fVar, @Named("CPU") f fVar2, AbstractC11824d abstractC11824d, AbstractC12095d abstractC12095d, AbstractC19223c0 abstractC19223c0, AbstractC20194a abstractC20194a) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(fVar2, "asyncContext");
        s1.z.c.l.e(abstractC11824d, "groupCallManager");
        s1.z.c.l.e(abstractC12095d, "invitationManager");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC20194a, "announce");
        this.f33105l = fVar;
        this.f33106m = fVar2;
        this.f33107n = abstractC11824d;
        this.f33108o = abstractC12095d;
        this.f33109p = abstractC19223c0;
        this.f33110q = abstractC20194a;
    }

    /* renamed from: Ij */
    public final void m25036Ij(C11593e c11593e) {
        AbstractC11203e abstractC11203e = (AbstractC11203e) this.f57683a;
        if (abstractC11203e != null) {
            abstractC11203e.mo25048g(c11593e);
        }
    }

    /* renamed from: Jj */
    public final void m25035Jj() {
        for (C11593e c11593e : this.f33099f) {
            AbstractC11203e abstractC11203e = (AbstractC11203e) this.f57683a;
            if (abstractC11203e != null) {
                abstractC11203e.mo25047h0(c11593e.f33990a);
            }
        }
        this.f33099f.clear();
    }

    /* renamed from: Kj */
    public final void m25034Kj(C11593e c11593e) {
        u1 w2 = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11208b(c11593e, null), 3, (Object) null);
        w2.n0(false, true, new C11207a());
        this.f33103j = w2;
    }

    /* renamed from: Lj */
    public final void m25033Lj(Set<C11593e> set) {
        String str = "to delete: " + set + " | current: " + this.f33097d;
        this.f33097d.removeAll(set);
        AbstractC11203e abstractC11203e = (AbstractC11203e) this.f57683a;
        if (abstractC11203e != null) {
            abstractC11203e.mo25050H0();
            abstractC11203e.mo25052C();
        }
    }

    /* renamed from: Mj */
    public final void m25032Mj() {
        for (AbstractC12020a abstractC12020a : this.f33098e) {
            AbstractC11203e abstractC11203e = (AbstractC11203e) this.f57683a;
            if (abstractC11203e != null) {
                abstractC11203e.setCallOnTile(abstractC12020a);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.d.c.a.p.a.e] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11203e abstractC11203e) {
        AbstractC11203e abstractC11203e2 = abstractC11203e;
        s1.z.c.l.e(abstractC11203e2, "presenterView");
        this.f57683a = abstractC11203e2;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11220l(this, null), 3, (Object) null);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11211j(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC11203e abstractC11203e = (AbstractC11203e) this.f57683a;
        if (abstractC11203e != null) {
            abstractC11203e.mo25044s0();
        }
        this.f33110q.release();
        super.mo9806c();
    }
}
