package p193e.p194a.p673d0;

import com.huawei.hms.api.FailedBinderCallBack;
import com.truecaller.aftercall.PromotionType;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.callerid.CallerIdPerformanceTracker;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.SpamData;
import com.truecaller.log.AssertionUtil;
import com.truecaller.settings.CallingSettings;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.apache.avro.Schema;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1050l5.p1051a.C17505e0;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19093r;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1126p2.AbstractC19212i;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1213s2.AbstractC20194a;
import p193e.p194a.p1213s2.C20200f;
import p193e.p194a.p1266t4.AbstractC20560c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8584h0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p673d0.C12472a0;
import p193e.p194a.p673d0.C12511f0;
import p193e.p194a.p703e3.AbstractC13348a;
import p193e.p194a.p703e3.p704e.C13353b;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p773g.p785j.AbstractC14283h0;
import p193e.p194a.p804h.p806b.AbstractC14619r;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p852i.p904h0.AbstractC15199a;
import p193e.p194a.p852i.p907v.AbstractC15241a;
import p193e.p194a.p982k0.p989n.p991b.AbstractC16378j;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.d0.f0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/f0.class */
public class C12511f0 implements AbstractC12505c0 {

    /* renamed from: A */
    public final C12563w0 f36540A;

    /* renamed from: C */
    public C12560v f36542C;

    /* renamed from: D */
    public final CallRecordingManager f36543D;

    /* renamed from: E */
    public final AbstractC19854f<AbstractC17348c> f36544E;

    /* renamed from: F */
    public final AbstractC19219a0 f36545F;

    /* renamed from: G */
    public final C20592g f36546G;

    /* renamed from: H */
    public final AbstractC16378j f36547H;

    /* renamed from: I */
    public final AbstractC19222c f36548I;

    /* renamed from: J */
    public final AbstractC21204d f36549J;

    /* renamed from: L */
    public final AbstractC14619r f36551L;

    /* renamed from: M */
    public final C12472a0 f36552M;

    /* renamed from: N */
    public final CallerIdPerformanceTracker f36553N;

    /* renamed from: O */
    public final C12562w f36554O;

    /* renamed from: P */
    public final AbstractC13706b f36555P;

    /* renamed from: Q */
    public final AbstractC15241a f36556Q;

    /* renamed from: R */
    public final C16487j f36557R;

    /* renamed from: S */
    public final AbstractC13348a f36558S;

    /* renamed from: T */
    public final C12561v0 f36559T;

    /* renamed from: U */
    public AbstractC20194a f36560U;

    /* renamed from: V */
    public final AbstractC15199a f36561V;

    /* renamed from: W */
    public long f36562W;

    /* renamed from: X */
    public boolean f36563X;

    /* renamed from: Y */
    public final AbstractC12526l0 f36564Y;

    /* renamed from: a */
    public final AbstractC19854f<AbstractC12574y> f36565a;

    /* renamed from: b */
    public final AbstractC19868j f36566b;

    /* renamed from: c */
    public final AbstractC19230g f36567c;

    /* renamed from: d */
    public final AbstractC19022f0 f36568d;

    /* renamed from: e */
    public final AbstractC12536o f36569e;

    /* renamed from: f */
    public final AbstractC12540q f36570f;

    /* renamed from: g */
    public final AbstractC14028r f36571g;

    /* renamed from: h */
    public final AbstractC14965w f36572h;

    /* renamed from: i */
    public final AbstractC8584h0 f36573i;

    /* renamed from: j */
    public final AbstractC19854f<AbstractC20560c> f36574j;

    /* renamed from: k */
    public final AbstractC19093r f36575k;

    /* renamed from: l */
    public final C16461b f36576l;

    /* renamed from: m */
    public final AbstractC19854f<AbstractC19126x> f36577m;

    /* renamed from: n */
    public final AbstractC19854f<AbstractC12555t> f36578n;

    /* renamed from: o */
    public final AbstractC19854f<AbstractC19463a0> f36579o;

    /* renamed from: p */
    public final AbstractC19854f<AbstractC12522j0> f36580p;

    /* renamed from: q */
    public final AbstractC12541q0 f36581q;

    /* renamed from: r */
    public final AbstractC14835j f36582r;

    /* renamed from: s */
    public final AbstractC19462a f36583s;

    /* renamed from: t */
    public final AbstractC8541a f36584t;

    /* renamed from: u */
    public final CallingSettings f36585u;

    /* renamed from: v */
    public final AbstractC19212i f36586v;

    /* renamed from: w */
    public final AbstractC14283h0 f36587w;

    /* renamed from: x */
    public final AbstractC8432l f36588x;

    /* renamed from: y */
    public final AbstractC14722a f36589y;

    /* renamed from: z */
    public final AbstractC16498f f36590z;

    /* renamed from: B */
    public boolean f36541B = true;

    /* renamed from: K */
    public final C17505e0.C17507b f36550K = new C17505e0.C17507b(null);

    /* renamed from: e.a.d0.f0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/f0$a.class */
    public class C12512a implements AbstractC14619r.AbstractC14620a {

        /* renamed from: a */
        public final C12560v f36591a;

        public C12512a(C12560v c12560v) {
            C12511f0.this = r4;
            this.f36591a = c12560v;
        }

        @Override // p193e.p194a.p804h.p806b.AbstractC14619r.AbstractC14620a
        public void onDataChanged() {
            C12511f0.this.f36577m.mo11854a().mo14073h(this.f36591a.f36669a.m35479e()).mo11830e(C12511f0.this.f36566b, new AbstractC19851d0() { // from class: e.a.d0.f
                @Override // p193e.p194a.p1187r2.AbstractC19851d0
                public final void onResult(Object obj) {
                    C12511f0 c12511f0;
                    C12560v c12560v;
                    C12511f0.C12512a c12512a = C12511f0.C12512a.this;
                    Contact contact = (Contact) obj;
                    Objects.requireNonNull(c12512a);
                    if (contact == null || (c12560v = (c12511f0 = C12511f0.this).f36542C) == null) {
                        return;
                    }
                    C12560v c12560v2 = c12512a.f36591a;
                    if (c12560v2.f36671c != c12560v.f36671c) {
                        return;
                    }
                    c12560v2.f36680l = contact;
                    c12511f0.m22911t(c12560v2, false);
                }
            });
        }
    }

    public C12511f0(AbstractC19854f<AbstractC12574y> abstractC19854f, AbstractC19868j abstractC19868j, AbstractC19230g abstractC19230g, AbstractC19022f0 abstractC19022f0, AbstractC12536o abstractC12536o, AbstractC12540q abstractC12540q, AbstractC14028r abstractC14028r, AbstractC8584h0 abstractC8584h0, AbstractC19854f<AbstractC20560c> abstractC19854f2, AbstractC19093r abstractC19093r, C16461b c16461b, AbstractC19854f<AbstractC19126x> abstractC19854f3, AbstractC19854f<AbstractC12555t> abstractC19854f4, AbstractC19854f<AbstractC19463a0> abstractC19854f5, AbstractC19854f<AbstractC12522j0> abstractC19854f6, AbstractC12541q0 abstractC12541q0, AbstractC14835j abstractC14835j, AbstractC19462a abstractC19462a, AbstractC8541a abstractC8541a, CallingSettings callingSettings, AbstractC19212i abstractC19212i, AbstractC14283h0 abstractC14283h0, AbstractC8432l abstractC8432l, AbstractC14722a abstractC14722a, AbstractC16498f abstractC16498f, C12563w0 c12563w0, CallRecordingManager callRecordingManager, AbstractC19854f<AbstractC17348c> abstractC19854f7, AbstractC14965w abstractC14965w, AbstractC19219a0 abstractC19219a0, C20592g c20592g, AbstractC19222c abstractC19222c, AbstractC21204d abstractC21204d, AbstractC14619r abstractC14619r, AbstractC16378j abstractC16378j, C12472a0 c12472a0, CallerIdPerformanceTracker callerIdPerformanceTracker, C12562w c12562w, AbstractC13706b abstractC13706b, AbstractC15241a abstractC15241a, AbstractC13348a abstractC13348a, C16487j c16487j, AbstractC20194a abstractC20194a, C12561v0 c12561v0, AbstractC15199a abstractC15199a, AbstractC12526l0 abstractC12526l0) {
        Schema schema = C17505e0.f49120f;
        this.f36565a = abstractC19854f;
        this.f36566b = abstractC19868j;
        this.f36567c = abstractC19230g;
        this.f36568d = abstractC19022f0;
        this.f36569e = abstractC12536o;
        this.f36570f = abstractC12540q;
        this.f36571g = abstractC14028r;
        this.f36573i = abstractC8584h0;
        this.f36574j = abstractC19854f2;
        this.f36575k = abstractC19093r;
        this.f36576l = c16461b;
        this.f36578n = abstractC19854f4;
        this.f36577m = abstractC19854f3;
        this.f36579o = abstractC19854f5;
        this.f36581q = abstractC12541q0;
        this.f36582r = abstractC14835j;
        this.f36583s = abstractC19462a;
        this.f36584t = abstractC8541a;
        this.f36585u = callingSettings;
        this.f36586v = abstractC19212i;
        this.f36587w = abstractC14283h0;
        this.f36588x = abstractC8432l;
        this.f36589y = abstractC14722a;
        this.f36590z = abstractC16498f;
        this.f36540A = c12563w0;
        this.f36580p = abstractC19854f6;
        this.f36543D = callRecordingManager;
        this.f36544E = abstractC19854f7;
        this.f36572h = abstractC14965w;
        this.f36545F = abstractC19219a0;
        this.f36546G = c20592g;
        this.f36547H = abstractC16378j;
        this.f36548I = abstractC19222c;
        this.f36549J = abstractC21204d;
        this.f36551L = abstractC14619r;
        this.f36552M = c12472a0;
        this.f36553N = callerIdPerformanceTracker;
        this.f36554O = c12562w;
        this.f36555P = abstractC13706b;
        this.f36556Q = abstractC15241a;
        this.f36558S = abstractC13348a;
        this.f36557R = c16487j;
        this.f36559T = c12561v0;
        this.f36560U = abstractC20194a;
        this.f36561V = abstractC15199a;
        this.f36564Y = abstractC12526l0;
    }

    /* renamed from: k */
    public static void m22920k(String str) {
        C10480a.m26045M1(str);
        C18479b.m14875a(str);
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: a */
    public void mo22930a(C12560v c12560v) {
        C12472a0 c12472a0 = this.f36552M;
        Objects.requireNonNull(c12472a0);
        l.e(c12560v, "callState");
        if (c12472a0.f36432a.get()) {
            Long l = c12472a0.f36437f;
            if (!(l != null)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            c12472a0.f36433b = true;
            C12472a0.EnumC12473a enumC12473a = C12472a0.EnumC12473a.SEARCHING;
            C12472a0.EnumC12473a enumC12473a2 = C12472a0.EnumC12473a.REQUEST_FAILED;
            Contact contact = c12560v.f36680l;
            boolean z = c12560v.f36682n && !c12560v.f36679k;
            boolean z2 = contact != null && (contact.m35512i0(1) || contact.m35512i0(4));
            if (contact == null) {
                if (c12560v.f36679k) {
                    enumC12473a2 = enumC12473a;
                }
            } else if (contact.m35512i0(2)) {
                enumC12473a2 = C12472a0.EnumC12473a.PB;
            } else if (contact.m35486y0()) {
                enumC12473a2 = C12472a0.EnumC12473a.PUSH;
            } else if (z && c12560v.f36683o) {
                enumC12473a2 = contact.m35501q0() ? C12472a0.EnumC12473a.BACKEND_HIT : C12472a0.EnumC12473a.BACKEND_MISS;
            } else if (z2) {
                enumC12473a2 = contact.m35501q0() ? C12472a0.EnumC12473a.CACHED_HIT : C12472a0.EnumC12473a.CACHED_MISS;
            } else if (c12560v.f36679k) {
                enumC12473a2 = enumC12473a;
            }
            C12472a0.EnumC12473a enumC12473a3 = c12472a0.f36434c;
            l.e(enumC12473a3, "other");
            if (enumC12473a2.f36452a > enumC12473a3.f36452a) {
                c12472a0.f36434c = enumC12473a2;
                c12472a0.f36435d = c12472a0.f36440i.mo13431b();
                c12472a0.f36436e = Long.valueOf(c12472a0.f36439h.mo13819c() - l.longValue());
            }
        }
        Contact contact2 = c12560v.f36680l;
        AssertionUtil.isNotNull(contact2, new String[0]);
        long mo13819c = this.f36548I.mo13819c() - c12560v.f36672d;
        String m35542V = contact2.m35542V();
        if (contact2.m35486y0() && !this.f36550K.fieldSetFlags()[2] && m35542V != null) {
            C17505e0.C17507b c17507b = this.f36550K;
            c17507b.validate(c17507b.fields()[2], m35542V);
            c17507b.f49129a = m35542V;
            c17507b.fieldSetFlags()[2] = true;
            C17505e0.C17507b c17507b2 = this.f36550K;
            c17507b2.validate(c17507b2.fields()[3], Long.valueOf(mo13819c));
            c17507b2.f49130b = mo13819c;
            c17507b2.fieldSetFlags()[3] = true;
        }
        if ((contact2.getSource() & 51) == 0 || this.f36550K.fieldSetFlags()[4]) {
            return;
        }
        this.f36550K.m15991b(mo13819c);
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: b */
    public void mo22929b(C12560v c12560v) {
        this.f36551L.m19905b(new C12512a(c12560v));
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x061c  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0748  */
    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo22928c(int r16, final java.lang.String r17, int r18, int r19, long r20, com.truecaller.blocking.FilterMatch r22) {
        /*
            Method dump skipped, instructions count: 4025
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p673d0.C12511f0.mo22928c(int, java.lang.String, int, int, long, com.truecaller.blocking.FilterMatch):void");
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: d */
    public void mo22927d(boolean z) {
        C12560v c12560v;
        m22920k("CallerIdManager.onNetworkStateChanged");
        if (!z || (c12560v = this.f36542C) == null) {
            return;
        }
        m22915p(c12560v);
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    /* renamed from: e */
    public void mo22926e() {
        m22920k("CallerIdManager.onCallerIdWindowClosed");
        this.f36541B = false;
        m22917n();
        if (this.f36543D.mo17577v()) {
            this.f36547H.mo17492a(true);
        }
        this.f36551L.m19905b(null);
        if (this.f36550K.fieldSetFlags()[2]) {
            if (!this.f36550K.fieldSetFlags()[4]) {
                this.f36550K.m15991b(-1L);
            }
            this.f36579o.mo11854a().mo13111a(this.f36550K.build());
        }
    }

    /* renamed from: f */
    public final void m22925f(C12560v c12560v) {
        if (c12560v.f36673e) {
            AbstractC20194a abstractC20194a = this.f36560U;
            l.e(c12560v, "$this$toCallAnnouncementInfo");
            Contact contact = c12560v.f36680l;
            String m35566G = contact != null ? contact.m35566G() : null;
            String str = c12560v.f36675g;
            l.d(str, FailedBinderCallBack.CALLER_ID);
            Contact contact2 = c12560v.f36680l;
            abstractC20194a.mo11365b(new C20200f(m35566G, str, false, contact2 != null ? contact2.m35495t0() : false));
        }
    }

    /* renamed from: g */
    public final Contact m22924g(Number number, FilterMatch filterMatch, long j) {
        Contact m22922i = m22922i(number);
        if (m22922i != null) {
            return m22922i;
        }
        number.m35463x(filterMatch.f10457f);
        Contact contact = new Contact();
        contact.f11515j = true;
        contact.m35546S0(filterMatch.f10455d);
        contact.m35525d(number);
        ((ContactDto.Contact) contact.mRow).searchTime = j;
        contact.m35556M0(0L);
        contact.m35535Z0(Integer.valueOf(filterMatch.f10457f));
        SpamData.C3841b c3841b = SpamData.Companion;
        List<Long> list = filterMatch.f10459h;
        Objects.requireNonNull(c3841b);
        String O = list != null ? i.O(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62) : null;
        if (h.j(O)) {
            O = null;
        }
        contact.m35537Y0(O);
        if (filterMatch.m35812b()) {
            contact.setSource(128);
            ((ContactDto.Contact) contact.mRow).spamType = "TOP_SPAMMER";
            contact.f11515j = false;
            if (filterMatch.f10460i != null) {
                SpamData spamData = contact.f11529x;
                SpamData spamData2 = spamData == null ? new SpamData() : new SpamData(spamData, spamData.getSpamCategoryModels());
                spamData2.setSpamVersion(filterMatch.f10460i);
                contact.f11529x = spamData2;
            }
            this.f36557R.m17331c(contact);
        }
        return contact;
    }

    /* renamed from: h */
    public final void m22923h() {
        this.f36565a.mo11854a().mo22864f();
        if (this.f36543D.mo17577v()) {
            this.f36547H.mo17492a(true);
        }
    }

    /* renamed from: i */
    public final Contact m22922i(Number number) {
        AbstractC19244l0 mo22909b = this.f36553N.mo22909b(CallerIdPerformanceTracker.TraceType.CIDMGR_GETCONTACTFROMAGGRCONTDAO);
        Contact m17364h = this.f36576l.m17364h(number.m35479e());
        this.f36553N.mo22910a(mo22909b);
        return m17364h;
    }

    /* renamed from: j */
    public final boolean m22921j(Number number, boolean z, boolean z2) {
        if (number == null || number.m35468r()) {
            return false;
        }
        if (!z) {
            return true;
        }
        if (z2) {
            C20592g c20592g = this.f36546G;
            if (c20592g.f57857X.m10941a(c20592g, C20592g.f57695p6[47]).isEnabled()) {
                return true;
            }
        }
        return this.f36585u.getBoolean("enabledCallerIDforPB") && z;
    }

    /* renamed from: l */
    public final boolean m22919l(String str) {
        if (this.f36543D.mo17577v()) {
            return true;
        }
        if (!this.f36543D.mo17599I()) {
            return false;
        }
        this.f36547H.mo17491b(str, null);
        return false;
    }

    /* renamed from: m */
    public final void m22918m(C12560v c12560v) {
        Contact contact = c12560v.f36680l;
        AssertionUtil.isNotNull(contact, new String[0]);
        AssertionUtil.isNotNull(this.f36542C, new String[0]);
        Number number = c12560v.f36669a;
        AbstractC19244l0 mo22909b = this.f36553N.mo22909b(CallerIdPerformanceTracker.TraceType.CIDMGR_PHONEBOOKCHECK);
        boolean mo14113d = this.f36575k.mo14113d(number);
        this.f36553N.mo22910a(mo22909b);
        this.f36561V.mo19052b(c12560v.f36675g);
        if (this.f36587w.mo20289b(this.f36554O.m22869a(c12560v), c12560v.f36681m, c12560v.f36674f) && this.f36584t.getBoolean("featureCacheAdAfterCall", false) && (!this.f36567c.mo13798F())) {
            m22920k("CallerIdManager start cacheAd");
            this.f36556Q.m19013a("calleridPopup");
            m22920k("CallerIdManager end cacheAd");
        }
        if (!m22921j(number, mo14113d, c12560v.f36680l.m35499r0())) {
            if (mo14113d) {
                c12560v.f36684p = "inPhonebook";
            } else {
                c12560v.f36684p = "notNumber";
            }
            m22925f(c12560v);
            return;
        }
        boolean m35520e1 = contact.m35520e1(number.m35479e());
        boolean mo10138b = this.f36549J.mo10138b(contact);
        if (!m35520e1 || mo10138b) {
            m22915p(c12560v);
        } else {
            m22925f(c12560v);
            c12560v.f36684p = "validCacheResult";
        }
        m22911t(c12560v, true);
        char c = this.f36542C.f36671c != c12560v.f36671c ? (char) 6 : !c12560v.f36673e ? '\n' : (char) 0;
        if (c == 0) {
            return;
        }
        this.f36581q.mo22883a(c, TimeUnit.SECONDS, new Runnable() { // from class: e.a.d0.h
            @Override // java.lang.Runnable
            public final void run() {
                C12511f0.this.m22923h();
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: n */
    public final void m22917n() {
        Object obj;
        m22920k("CallerIdManager.maybeStopSelf");
        C12472a0 c12472a0 = this.f36552M;
        if (c12472a0.f36432a.getAndSet(false) && c12472a0.f36433b) {
            Long l = c12472a0.f36437f;
            Boolean bool = c12472a0.f36438g;
            C12472a0.EnumC12473a enumC12473a = c12472a0.f36434c;
            if (!(l != null)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (!(bool != null)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            String str = c12472a0.f36435d;
            if (str == null) {
                str = c12472a0.f36440i.mo13431b();
            }
            Long l2 = c12472a0.f36436e;
            double longValue = l2 != null ? l2.longValue() : c12472a0.f36439h.mo13819c() - l.longValue();
            HashMap m8667T = C22128a.m8667T("NetworkType", str);
            m8667T.put("Source", enumC12473a.f36453b);
            m8667T.put("CallDirection", bool.booleanValue() ? "Incoming" : "Outgoing");
            boolean mo13771z = c12472a0.f36442k.mo13771z();
            if (mo13771z) {
                obj = "BatteryOptimizationsDisabled";
            } else if (mo13771z) {
                throw new s1.i();
            } else {
                obj = "BatteryOptimizationNotDisabled";
            }
            m8667T.put("BatteryOptimization", obj);
            C22128a.m8711G0("CallerIdEndToEnd", Double.valueOf(longValue), m8667T, null, "eventBuilder.build()", c12472a0.f36441j);
        }
        boolean z = this.f36568d.mo14246Q0() && !this.f36568d.mo14245a();
        C12560v c12560v = this.f36542C;
        if (c12560v == null || c12560v.f36677i == 3 || z) {
            m22920k("CallerIdManager.stopSelf");
            this.f36541B = false;
            this.f36565a.mo11854a().mo22867b();
        }
    }

    /* renamed from: o */
    public final void m22916o() {
        C12561v0 c12561v0 = this.f36559T;
        a aVar = new a() { // from class: e.a.d0.k
            public final Object invoke() {
                C12511f0 c12511f0 = C12511f0.this;
                c12511f0.m22923h();
                C12511f0.m22920k("CallerIdManager.stopSelf");
                c12511f0.f36541B = false;
                c12511f0.f36565a.mo11854a().mo22867b();
                return null;
            }
        };
        Objects.requireNonNull(c12561v0);
        l.e(aVar, "idleStateCallback");
        if (c12561v0.f36687b) {
            return;
        }
        c12561v0.f36687b = true;
        c12561v0.f36686a.postDelayed(new RunnableC12558u0(c12561v0, aVar), 10000L);
    }

    @Override // p193e.p194a.p673d0.AbstractC12505c0
    public void onDestroy() {
        C12561v0 c12561v0 = this.f36559T;
        c12561v0.f36686a.removeCallbacksAndMessages(null);
        c12561v0.f36687b = false;
        this.f36564Y.destroy();
    }

    /* renamed from: p */
    public final void m22915p(final C12560v c12560v) {
        if (!this.f36541B || !this.f36568d.mo14245a() || this.f36563X) {
            return;
        }
        Number number = c12560v.f36669a;
        int m22873a = c12560v.m22873a();
        c12560v.f36684p = null;
        c12560v.f36679k = true;
        c12560v.f36682n = true;
        this.f36580p.mo11854a().mo22907a(number, false, m22873a, this.f36571g.mo20839b(UUID.randomUUID(), "callerId")).mo11830e(this.f36566b, new AbstractC19851d0() { // from class: e.a.d0.m
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C12511f0 c12511f0 = C12511f0.this;
                C12560v c12560v2 = c12560v;
                Contact contact = (Contact) obj;
                Objects.requireNonNull(c12511f0);
                c12560v2.f36679k = false;
                if (contact != null) {
                    c12560v2.f36683o = true;
                    c12560v2.f36680l = contact;
                }
                c12511f0.m22911t(c12560v2, false);
                c12511f0.m22925f(c12560v2);
                C12560v c12560v3 = c12511f0.f36542C;
                if (c12560v3 == null || c12560v2.f36671c != c12560v3.f36671c) {
                    return;
                }
                c12511f0.f36562W = c12511f0.f36548I.mo13819c() - c12560v2.f36672d;
            }
        });
    }

    /* renamed from: q */
    public final void m22914q(C12560v c12560v) {
        if (!this.f36568d.mo14245a()) {
            return;
        }
        this.f36558S.mo21888e(c12560v.f36677i == 0 ? "initiated" : "ended", c12560v.f36669a).mo11830e(this.f36566b, new AbstractC19851d0() { // from class: e.a.d0.c
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C12511f0 c12511f0 = C12511f0.this;
                C13353b c13353b = (C13353b) obj;
                Objects.requireNonNull(c12511f0);
                if (c13353b == null || !Boolean.TRUE.equals(Boolean.valueOf(c13353b.f38777a))) {
                    return;
                }
                c12511f0.f36583s.mo13271e(new AbstractC19502g.C19504b.C19505a("initiated".equals(c13353b.f38778b) ? "CALLERID_Push_Sent" : "AFTERCALL_Push_Sent", null, null, null));
                c12511f0.f36564Y.mo22904b(c13353b);
            }
        });
    }

    /* renamed from: r */
    public final boolean m22913r(HistoryEvent historyEvent) {
        boolean z = false;
        if (this.f36542C == null || this.f36567c.mo13780q() < 26 || !C26232y.isNullOrEmpty1(historyEvent.f11536c)) {
            if (!this.f36567c.mo13789h() || historyEvent.f11550q != 2) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: s */
    public final void m22912s(C12560v c12560v, FilterMatch filterMatch, HistoryEvent historyEvent) {
        boolean z = true;
        if (!(!this.f36567c.mo13798F())) {
            return;
        }
        if (this.f36542C == null) {
            z = false;
        }
        AssertionUtil.isTrue(z, new String[0]);
        PromotionType m13878a = this.f36586v.m13878a(historyEvent, c12560v.f36669a, c12560v.f36673e, c12560v.f36674f);
        if (m13878a != null) {
            this.f36565a.mo11854a().mo22868a(m13878a, historyEvent, this.f36585u);
        } else if (!this.f36587w.mo20290a(historyEvent) && !this.f36587w.mo20289b(historyEvent, c12560v.f36681m, c12560v.f36674f)) {
        } else {
            this.f36565a.mo11854a().mo22866c(historyEvent, filterMatch);
        }
    }

    /* renamed from: t */
    public final void m22911t(C12560v c12560v, boolean z) {
        if (this.f36545F.mo13822k()) {
            m22920k("CallerIdManager.updateCallerId");
            this.f36565a.mo11854a().mo22865e(c12560v, z);
        } else if (this.f36563X) {
        } else {
            this.f36578n.mo11854a().mo22880c();
        }
    }
}
