package p193e.p194a.p619d.p643d.p644a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.contacts.p188ui.GroupPickerMode;
import com.truecaller.voip.contacts.p188ui.VoipContactsMvp$VoipBottomSheetState;
import com.truecaller.voip.contacts.p188ui.VoipContactsMvp$VoipContactSelectionSource;
import com.truecaller.voip.contacts.p188ui.VoipContactsScreenParams;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.C8615v;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p619d.p643d.p644a.p645a.p646a.AbstractC11646b;
import p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11648a;
import p193e.p194a.p619d.p643d.p644a.p645a.p648c.AbstractC11652a;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11655a;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11660d;
import p193e.p194a.p619d.p643d.p650c.AbstractC11695b;
import p193e.p194a.p619d.p643d.p650c.C11694a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/w.class */
public final class C11686w extends AbstractC20574a<AbstractC11684u> implements AbstractC11682s {

    /* renamed from: A */
    public final AbstractC19223c0 f34259A;

    /* renamed from: B */
    public final AbstractC17405c f34260B;

    /* renamed from: C */
    public final AbstractC11705f f34261C;

    /* renamed from: D */
    public final C20592g f34262D;

    /* renamed from: e */
    public p1 f34264e;

    /* renamed from: f */
    public boolean f34265f;

    /* renamed from: g */
    public boolean f34266g;

    /* renamed from: h */
    public List<C11694a> f34267h;

    /* renamed from: i */
    public List<C11694a> f34268i;

    /* renamed from: j */
    public List<C11694a> f34269j;

    /* renamed from: k */
    public List<C11694a> f34270k;

    /* renamed from: n */
    public C8615v f34273n;

    /* renamed from: o */
    public String f34274o;

    /* renamed from: p */
    public VoipContactsScreenParams f34275p;

    /* renamed from: q */
    public final f f34276q;

    /* renamed from: r */
    public final f f34277r;

    /* renamed from: s */
    public final AbstractC11695b f34278s;

    /* renamed from: t */
    public final AbstractC11646b f34279t;

    /* renamed from: u */
    public final AbstractC11660d f34280u;

    /* renamed from: v */
    public final AbstractC11652a f34281v;

    /* renamed from: w */
    public final AbstractC11655a f34282w;

    /* renamed from: x */
    public final AbstractC11648a f34283x;

    /* renamed from: y */
    public final AbstractC19462a f34284y;

    /* renamed from: z */
    public final AbstractC19854f<AbstractC19463a0> f34285z;

    /* renamed from: d */
    public final C8615v f34263d = new C8615v(new C11687a());

    /* renamed from: l */
    public List<C11694a> f34271l = new ArrayList(7);

    /* renamed from: m */
    public VoipContactsMvp$VoipBottomSheetState f34272m = VoipContactsMvp$VoipBottomSheetState.HIDDEN;

    /* renamed from: e.a.d.d.a.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/w$a.class */
    public static final class C11687a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11687a() {
            super(0);
            C11686w.this = r4;
        }

        public Object invoke() {
            C11686w c11686w = C11686w.this;
            Objects.requireNonNull(c11686w);
            d.w2(c11686w, (f) null, (j0) null, new C11685v(c11686w, null), 3, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.contacts.ui.VoipContactsPresenter$onSearch$1", f = "VoipContactsPresenter.kt", l = {210, 213}, m = "invokeSuspend")
    /* renamed from: e.a.d.d.a.w$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/w$b.class */
    public static final class C11688b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34287e;

        /* renamed from: f */
        public Object f34288f;

        /* renamed from: g */
        public int f34289g;

        /* renamed from: i */
        public final /* synthetic */ String f34291i;

        @e(c = "com.truecaller.voip.contacts.ui.VoipContactsPresenter$onSearch$1$1", f = "VoipContactsPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.d.a.w$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/w$b$a.class */
        public static final class C11689a extends i implements p<i0, s1.w.d<? super List<? extends C11694a>>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11689a(s1.w.d dVar) {
                super(2, dVar);
                C11688b.this = r5;
            }

            /* renamed from: i */
            public final s1.w.d<s> m24222i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C11689a(dVar);
            }

            /* renamed from: k */
            public final Object m24221k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                C11688b c11688b = C11688b.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                List<C11694a> list = C11686w.this.f34268i;
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    if (Boolean.valueOf(v.z(((C11694a) obj3).f34314c, c11688b.f34291i, true)).booleanValue()) {
                        arrayList.add(obj3);
                    }
                }
                return arrayList;
            }

            /* renamed from: s */
            public final Object m24220s(Object obj) {
                C25225a.m3932a3(obj);
                List<C11694a> list = C11686w.this.f34268i;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (Boolean.valueOf(v.z(((C11694a) obj2).f34314c, C11688b.this.f34291i, true)).booleanValue()) {
                        arrayList.add(obj2);
                    }
                }
                return arrayList;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11688b(String str, s1.w.d dVar) {
            super(2, dVar);
            C11686w.this = r5;
            this.f34291i = str;
        }

        /* renamed from: i */
        public final s1.w.d<s> m24225i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            C11688b c11688b = new C11688b(this.f34291i, dVar);
            c11688b.f34287e = obj;
            return c11688b;
        }

        /* renamed from: k */
        public final Object m24224k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C11688b c11688b = new C11688b(this.f34291i, dVar);
            c11688b.f34287e = obj;
            return c11688b.m24223s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00bf  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24223s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p643d.p644a.C11686w.C11688b.m24223s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d.d.a.w$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/w$c.class */
    public static final class C11690c extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11690c() {
            super(0);
            C11686w.this = r4;
        }

        public Object invoke() {
            AbstractC11684u abstractC11684u = (AbstractC11684u) C11686w.this.f57683a;
            if (abstractC11684u != null) {
                abstractC11684u.mo24275c9(false);
                abstractC11684u.mo24278Z7();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11686w(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC11695b abstractC11695b, AbstractC11646b abstractC11646b, AbstractC11660d abstractC11660d, AbstractC11652a abstractC11652a, AbstractC11655a abstractC11655a, AbstractC11648a abstractC11648a, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19223c0 abstractC19223c0, @Named("VOIP_CONTACTS_AVAILABILITY_MANAGER") AbstractC17405c abstractC17405c, AbstractC11705f abstractC11705f, C20592g c20592g) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(abstractC11695b, "voipContactsDataProvider");
        l.e(abstractC11646b, "contactsAdapterPresenter");
        l.e(abstractC11660d, "suggestedContactsAdapterPresenter");
        l.e(abstractC11652a, "groupBannerPresenter");
        l.e(abstractC11655a, "suggestedContactsBarPresenter");
        l.e(abstractC11648a, "groupSelectedContactsAdapterPresenter");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC11705f, "voip");
        l.e(c20592g, "featureRegistry");
        this.f34276q = fVar;
        this.f34277r = fVar2;
        this.f34278s = abstractC11695b;
        this.f34279t = abstractC11646b;
        this.f34280u = abstractC11660d;
        this.f34281v = abstractC11652a;
        this.f34282w = abstractC11655a;
        this.f34283x = abstractC11648a;
        this.f34284y = abstractC19462a;
        this.f34285z = abstractC19854f;
        this.f34259A = abstractC19223c0;
        this.f34260B = abstractC17405c;
        this.f34261C = abstractC11705f;
        this.f34262D = c20592g;
        s1.u.s sVar = s1.u.s.a;
        this.f34267h = sVar;
        this.f34268i = sVar;
        this.f34269j = sVar;
        this.f34270k = sVar;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: Ch */
    public void mo24256Ch(C11694a c11694a, int i, VoipContactsMvp$VoipContactSelectionSource voipContactsMvp$VoipContactSelectionSource) {
        l.e(c11694a, "voipContact");
        l.e(voipContactsMvp$VoipContactSelectionSource, "source");
        m24253Ij();
        if (!c11694a.f34316e || c11694a.f34315d) {
            m24238Sj("Contact is already in the call or already selected");
            return;
        }
        if (m24250Lj() + m24251Kj() != 7) {
            c11694a.f34315d = true;
            this.f34271l.add(c11694a);
            m24241Qj(c11694a, i, voipContactsMvp$VoipContactSelectionSource);
            return;
        }
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u == null) {
            return;
        }
        abstractC11684u.mo24274d(2131890326);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: Fa */
    public void mo24255Fa() {
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24273e0();
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: Fh */
    public void mo24254Fh(String str, boolean z) {
        AbstractC11684u abstractC11684u;
        if (!this.f34266g) {
            return;
        }
        p1 p1Var = this.f34264e;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f34264e = null;
        if (z && (abstractC11684u = (AbstractC11684u) this.f57683a) != null) {
            abstractC11684u.mo24273e0();
        }
        boolean z2 = true;
        if (str != null) {
            z2 = str.length() == 0;
        }
        if (!z2) {
            this.f34264e = d.w2(this, (f) null, (j0) null, new C11688b(str, null), 3, (Object) null);
            return;
        }
        this.f34265f = false;
        m24237Tj();
        m24240Rj();
        m24244Oj();
        AbstractC11684u abstractC11684u2 = (AbstractC11684u) this.f57683a;
        if (abstractC11684u2 == null) {
            return;
        }
        abstractC11684u2.mo24288D0();
    }

    /* renamed from: Ij */
    public final void m24253Ij() {
        if (!m24245Nj()) {
            m24238Sj("Should not be used when not in mode group picker");
        }
    }

    /* renamed from: Jj */
    public final Set<String> m24252Jj() {
        VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
        if (voipContactsScreenParams == null) {
            l.l("voipContactsScreenParams");
            throw null;
        }
        Set<String> peers = voipContactsScreenParams.getPeers();
        Set<String> set = peers;
        if (peers.size() > 7) {
            set = s1.u.i.d1(s1.u.i.K0(peers, 7));
        }
        return set;
    }

    /* renamed from: Kj */
    public final int m24251Kj() {
        Set<String> m24252Jj = m24252Jj();
        if (!(!m24247Mj())) {
            m24252Jj = null;
        }
        return m24252Jj != null ? m24252Jj.size() : 0;
    }

    /* renamed from: Lj */
    public final int m24250Lj() {
        return this.f34271l.size();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: Mb */
    public List<C11694a> mo24249Mb() {
        return this.f34270k;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: Mh */
    public void mo24248Mh() {
        m24253Ij();
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            List<C11694a> list = this.f34271l;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C11694a c11694a : list) {
                String m35479e = c11694a.f34313b.m35479e();
                if (m35479e == null) {
                    m35479e = "";
                }
                arrayList.add(m35479e);
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            if (m24247Mj()) {
                AbstractC11705f abstractC11705f = this.f34261C;
                Set<String> m3887j3 = C25225a.m3887j3(strArr);
                VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
                if (voipContactsScreenParams == null) {
                    l.l("voipContactsScreenParams");
                    throw null;
                }
                abstractC11705f.mo24181l(m3887j3, voipContactsScreenParams.getCallAnalyticsContext());
            } else {
                abstractC11684u.mo24262q8(strArr);
            }
            abstractC11684u.mo24261t();
        }
    }

    /* renamed from: Mj */
    public final boolean m24247Mj() {
        VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
        if (voipContactsScreenParams != null) {
            return voipContactsScreenParams.getInitiateCall();
        }
        l.l("voipContactsScreenParams");
        throw null;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: Nh */
    public void mo24246Nh() {
        if (this.f34272m == VoipContactsMvp$VoipBottomSheetState.COLLAPSED) {
            this.f34273n = new C8615v(new C11690c());
            AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
            if (abstractC11684u == null) {
                return;
            }
            abstractC11684u.mo24263q2();
            return;
        }
        AbstractC11684u abstractC11684u2 = (AbstractC11684u) this.f57683a;
        if (abstractC11684u2 == null) {
            return;
        }
        abstractC11684u2.mo24275c9(false);
        abstractC11684u2.mo24278Z7();
    }

    /* renamed from: Nj */
    public final boolean m24245Nj() {
        VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
        if (voipContactsScreenParams != null) {
            return voipContactsScreenParams.getModeGroupPicker();
        }
        l.l("voipContactsScreenParams");
        throw null;
    }

    /* renamed from: Oj */
    public final void m24244Oj() {
        AbstractC11684u abstractC11684u;
        if (m24245Nj() && (abstractC11684u = (AbstractC11684u) this.f57683a) != null) {
            if (this.f34265f) {
                abstractC11684u.mo24290A2(false);
                abstractC11684u.mo24284P3(false);
                abstractC11684u.mo24279Y9(false);
                return;
            }
            abstractC11684u.mo24290A2(m24250Lj() != 0);
            boolean z = false;
            if (m24250Lj() == 0) {
                z = true;
            }
            abstractC11684u.mo24284P3(z);
            abstractC11684u.mo24279Y9(true);
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: P8 */
    public void mo24243P8() {
        VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
        if (voipContactsScreenParams == null) {
            l.l("voipContactsScreenParams");
            throw null;
        } else if (voipContactsScreenParams.getGroupPickerMode() == GroupPickerMode.CREATE_GROUP) {
            AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
            if (abstractC11684u == null) {
                return;
            }
            abstractC11684u.mo24265o7();
        } else {
            AbstractC11684u abstractC11684u2 = (AbstractC11684u) this.f57683a;
            if (abstractC11684u2 == null) {
                return;
            }
            abstractC11684u2.mo24261t();
        }
    }

    /* renamed from: Pj */
    public final void m24242Pj() {
        int m24251Kj = 7 - m24251Kj();
        Integer valueOf = Integer.valueOf(m24251Kj);
        if (!(valueOf.intValue() != 0)) {
            valueOf = null;
        }
        String mo13759k = this.f34259A.mo13759k(C2752R.plurals.voip_group_launcher_person, valueOf != null ? valueOf.intValue() : 1, new Object[0]);
        l.d(mo13759k, "resourceProvider.getQuan…cher_person, personCount)");
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            String mo13768b = m24250Lj() == 0 ? this.f34259A.mo13768b(C2752R.string.voip_group_launcher_picker_subtitle, Integer.valueOf(m24251Kj), mo13759k) : this.f34259A.mo13768b(C2752R.string.voip_group_launcher_picker_subtitle_with_count, Integer.valueOf(m24251Kj), mo13759k, Integer.valueOf(m24250Lj()));
            l.d(mo13768b, "if (groupTotalSelectedPe…lectedPeers\n            )");
            abstractC11684u.mo24276c(mo13768b);
        }
    }

    /* renamed from: Qj */
    public final void m24241Qj(C11694a c11694a, int i, VoipContactsMvp$VoipContactSelectionSource voipContactsMvp$VoipContactSelectionSource) {
        List<C11694a> list = this.f34269j;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (true ^ ((C11694a) obj).f34315d) {
                arrayList.add(obj);
            }
        }
        this.f34270k = arrayList;
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24266m1();
            if (voipContactsMvp$VoipContactSelectionSource != VoipContactsMvp$VoipContactSelectionSource.CONTACTS_LIST) {
                i = this.f34268i.indexOf(c11694a);
            }
            abstractC11684u.mo24283P8(i);
            abstractC11684u.mo24283P8(0);
            this.f34282w.mo24312B0();
            m24240Rj();
        }
        m24242Pj();
        m24244Oj();
        AbstractC11684u abstractC11684u2 = (AbstractC11684u) this.f57683a;
        if (abstractC11684u2 != null) {
            VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
            if (voipContactsScreenParams == null) {
                l.l("voipContactsScreenParams");
                throw null;
            }
            if (voipContactsScreenParams.getGroupPickerMode() == GroupPickerMode.CREATE_GROUP) {
                abstractC11684u2.mo24268j3(m24250Lj() != 0);
                abstractC11684u2.mo24270h4(false);
            } else {
                abstractC11684u2.mo24270h4(m24250Lj() != 0);
                abstractC11684u2.mo24268j3(false);
            }
            abstractC11684u2.mo24282W1(m24250Lj() != 0);
        }
    }

    /* renamed from: Rj */
    public final void m24240Rj() {
        this.f34282w.mo24313A((!this.f34265f) & (!this.f34270k.isEmpty()));
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24281X1();
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: Sg */
    public void mo24239Sg() {
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24275c9(true);
        }
        AbstractC11684u abstractC11684u2 = (AbstractC11684u) this.f57683a;
        if (abstractC11684u2 != null) {
            abstractC11684u2.mo24289C1();
            abstractC11684u2.mo24273e0();
            abstractC11684u2.mo24267l0();
        }
    }

    /* renamed from: Sj */
    public final void m24238Sj(String str) {
        AssertionUtil.OnlyInDebug.shouldNeverHappen(new IllegalArgumentException(str), new String[0]);
    }

    /* renamed from: Tj */
    public final void m24237Tj() {
        C20592g c20592g = this.f34262D;
        if (!c20592g.f57849V5.m10941a(c20592g, C20592g.f57695p6[365]).isEnabled() || m24245Nj()) {
            this.f34281v.mo24314C(false);
        } else {
            this.f34281v.mo24314C(!(this.f34265f ? this.f34267h : this.f34268i).isEmpty());
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: X6 */
    public void mo24236X6() {
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24280Y3();
        }
        n.B0(C22128a.m8584p1("voipLauncherCreateGroupBanner", "action", "voipLauncherCreateGroupBanner", null, true & true ? null : "voiceLauncherV2"), this.f34284y);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.d.d.a.u, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11684u abstractC11684u) {
        AbstractC11684u abstractC11684u2 = abstractC11684u;
        l.e(abstractC11684u2, "presenterView");
        this.f57683a = abstractC11684u2;
        this.f34279t.mo24324A(this, m24245Nj());
        this.f34281v.mo24316A(this);
        this.f34280u.mo24309A(this, m24245Nj());
        this.f34283x.mo24321A(this);
        this.f34260B.mo9925I1();
        if (m24245Nj()) {
            AbstractC11684u abstractC11684u3 = (AbstractC11684u) this.f57683a;
            if (abstractC11684u3 != null) {
                VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
                if (voipContactsScreenParams == null) {
                    l.l("voipContactsScreenParams");
                    throw null;
                }
                abstractC11684u3.mo24285N9(voipContactsScreenParams.getGroupPickerMode() == GroupPickerMode.CREATE_GROUP ? 2131232447 : 2131232489);
            }
            AbstractC11684u abstractC11684u4 = (AbstractC11684u) this.f57683a;
            if (abstractC11684u4 != null) {
                AbstractC19223c0 abstractC19223c0 = this.f34259A;
                VoipContactsScreenParams voipContactsScreenParams2 = this.f34275p;
                if (voipContactsScreenParams2 == null) {
                    l.l("voipContactsScreenParams");
                    throw null;
                }
                String mo13768b = abstractC19223c0.mo13768b(voipContactsScreenParams2.getGroupPickerMode() == GroupPickerMode.CREATE_GROUP ? 2131890324 : 2131890329, new Object[0]);
                l.d(mo13768b, "resourceProvider.getString(getToolbarTitle())");
                abstractC11684u4.setTitle(mo13768b);
            }
            m24242Pj();
            abstractC11684u2.mo24271fa();
            if (m24247Mj()) {
                this.f34261C.mo24186g(m24252Jj());
            }
        } else {
            AbstractC19223c0 abstractC19223c02 = this.f34259A;
            String mo13768b2 = abstractC19223c02.mo13768b(C2752R.string.voip_launcher_title, abstractC19223c02.mo13768b(2131890379, new Object[0]));
            l.d(mo13768b2, "resourceProvider.getStri….string.voip_text_voice))");
            abstractC11684u2.setTitle(mo13768b2);
            String mo13768b3 = this.f34259A.mo13768b(C2752R.string.voip_launcher_subtitle, new Object[0]);
            l.d(mo13768b3, "resourceProvider.getStri…g.voip_launcher_subtitle)");
            abstractC11684u2.mo24276c(mo13768b3);
            abstractC11684u2.mo24279Y9(false);
            abstractC11684u2.mo24290A2(false);
            abstractC11684u2.mo24284P3(false);
            abstractC11684u2.mo24270h4(false);
            abstractC11684u2.mo24268j3(false);
            abstractC11684u2.mo24282W1(false);
        }
        abstractC11684u2.mo24287G2(false);
        abstractC11684u2.mo24269i(true);
        if (!m24245Nj()) {
            n.B0(C22128a.m8580q1("voiceLauncher", "viewId", "voiceLauncher", null, null), this.f34284y);
            AbstractC19463a0 mo11854a = this.f34285z.mo11854a();
            C17635l2.C17637b m15906a = C17635l2.m15906a();
            m15906a.m15903c("voiceLauncher");
            m15906a.m15904b(this.f34274o);
            mo11854a.mo13111a(m15906a.build());
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: Z5 */
    public void mo24235Z5(C11694a c11694a) {
        l.e(c11694a, "voipContact");
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            Contact contact = c11694a.f34312a;
            VoipContactsScreenParams voipContactsScreenParams = this.f34275p;
            String str = null;
            if (voipContactsScreenParams == null) {
                l.l("voipContactsScreenParams");
                throw null;
            }
            String callAnalyticsContext = voipContactsScreenParams.getCallAnalyticsContext();
            if (!r.p(callAnalyticsContext)) {
                str = callAnalyticsContext;
            }
            if (str == null) {
                str = "voiceLauncher";
            }
            abstractC11684u.mo24272f4(contact, str);
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: ai */
    public void mo24234ai(C11694a c11694a, int i, VoipContactsMvp$VoipContactSelectionSource voipContactsMvp$VoipContactSelectionSource) {
        l.e(c11694a, "voipContact");
        l.e(voipContactsMvp$VoipContactSelectionSource, "source");
        m24253Ij();
        if (!c11694a.f34316e || !c11694a.f34315d) {
            m24238Sj("Contact is already in the call or already deselected");
            return;
        }
        c11694a.f34315d = false;
        this.f34271l.remove(c11694a);
        m24241Qj(c11694a, i, voipContactsMvp$VoipContactSelectionSource);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f34260B.mo9924Y();
        this.f34279t.mo24323B();
        this.f34281v.mo24315B();
        this.f34280u.mo24308B();
        this.f34283x.mo24320B();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: f3 */
    public void mo24233f3(VoipContactsMvp$VoipBottomSheetState voipContactsMvp$VoipBottomSheetState) {
        AbstractC11684u abstractC11684u;
        l.e(voipContactsMvp$VoipBottomSheetState, "state");
        this.f34272m = voipContactsMvp$VoipBottomSheetState;
        int ordinal = voipContactsMvp$VoipBottomSheetState.ordinal();
        if (ordinal == 0) {
            C8615v c8615v = this.f34273n;
            if (c8615v == null) {
                return;
            }
            c8615v.m28195a();
        } else if (ordinal == 1) {
            AbstractC11684u abstractC11684u2 = (AbstractC11684u) this.f57683a;
            if (abstractC11684u2 == null) {
                return;
            }
            abstractC11684u2.mo24261t();
        } else if (ordinal != 2) {
            if (ordinal != 3) {
                return;
            }
            this.f34263d.m28195a();
        } else if (!this.f34266g || (abstractC11684u = (AbstractC11684u) this.f57683a) == null) {
        } else {
            abstractC11684u.mo24289C1();
            abstractC11684u.mo24273e0();
            abstractC11684u.mo24267l0();
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: fi */
    public void mo24232fi() {
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24261t();
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: h9 */
    public void mo24231h9(VoipContactsScreenParams voipContactsScreenParams) {
        l.e(voipContactsScreenParams, "voipContactsScreenParams");
        if (!(voipContactsScreenParams.getPeers().size() > 7) || !(true ^ voipContactsScreenParams.getInitiateCall())) {
            this.f34275p = voipContactsScreenParams;
            return;
        }
        throw new IllegalStateException("Peers in the call exceeds the max group size");
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: m */
    public void mo24230m() {
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24261t();
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: oj */
    public List<C11694a> mo24229oj() {
        return this.f34265f ? this.f34267h : this.f34268i;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: wj */
    public void mo24228wj(C11694a c11694a) {
        l.e(c11694a, "voipContact");
        AbstractC11684u abstractC11684u = (AbstractC11684u) this.f57683a;
        if (abstractC11684u != null) {
            abstractC11684u.mo24260x2(c11694a.f34312a);
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11682s
    /* renamed from: x9 */
    public void mo24227x9(String str) {
        this.f34274o = str;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11683t
    /* renamed from: y3 */
    public List<C11694a> mo24226y3() {
        return this.f34271l;
    }
}
