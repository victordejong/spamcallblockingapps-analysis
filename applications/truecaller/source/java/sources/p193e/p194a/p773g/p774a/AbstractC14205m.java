package p193e.p194a.p773g.p774a;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.acs.analytics.ClickEvent;
import com.truecaller.acs.analytics.DismissReason;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.acs.p131ui.ActionButtonType;
import com.truecaller.acs.util.AcsReferralHelper;
import com.truecaller.acs.util.TrueContextType;
import com.truecaller.acs.util.VideoCallerIdAcsMoreOption;
import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.FeedbackSource;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.data.entity.SpamData;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.whoviewedme.GenerateProfileViewService;
import com.truecaller.whoviewedme.ProfileViewSource;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericRecord;
import p1727n3.p1807k.p1812c.C26493a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1010k5.AbstractC16550a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17642m;
import p193e.p194a.p1050l5.p1051a.C17672o;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1064m5.C18239b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1080o.p1081a.p1096j.AbstractC18657a;
import p193e.p194a.p1080o.p1081a.p1096j.C18661b;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1138q.AbstractC19388c;
import p193e.p194a.p1138q.C19389d;
import p193e.p194a.p1138q.p1141e.C19391a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1193r5.C19971p;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p1342w4.C21202b;
import p193e.p194a.p1359x4.p1364l.AbstractC21459a;
import p193e.p194a.p1359x4.p1364l.C21464b;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p288a0.AbstractC7395n;
import p193e.p194a.p288a0.AbstractC7401p;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p294b.p336i.AbstractC7919c;
import p193e.p194a.p294b.p344j.AbstractC7946a;
import p193e.p194a.p294b.p344j.C7951b;
import p193e.p194a.p294b.p371q.AbstractC8208a;
import p193e.p194a.p294b.p371q.AbstractC8210c;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p702e0.AbstractC13343b;
import p193e.p194a.p703e3.AbstractC13348a;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p773g.C14233b;
import p193e.p194a.p773g.p774a.AbstractC14198h;
import p193e.p194a.p773g.p774a.p775a.AbstractC14104h;
import p193e.p194a.p773g.p774a.p776b.AbstractC14149h;
import p193e.p194a.p773g.p774a.p778f0.p779a.AbstractC14192e;
import p193e.p194a.p773g.p780e.AbstractC14237a;
import p193e.p194a.p773g.p780e.AbstractC14241e;
import p193e.p194a.p773g.p780e.C14240d;
import p193e.p194a.p773g.p781f.AbstractC14243a;
import p193e.p194a.p773g.p781f.AbstractC14247e;
import p193e.p194a.p773g.p781f.AbstractC14250f;
import p193e.p194a.p773g.p781f.C14246d;
import p193e.p194a.p773g.p782g.C14255a;
import p193e.p194a.p773g.p785j.AbstractC14268a0;
import p193e.p194a.p773g.p785j.AbstractC14273d;
import p193e.p194a.p773g.p785j.AbstractC14274d0;
import p193e.p194a.p773g.p785j.AbstractC14307r;
import p193e.p194a.p773g.p785j.AbstractC14308r0;
import p193e.p194a.p773g.p785j.C14267a;
import p193e.p194a.p773g.p785j.C14275e;
import p193e.p194a.p773g.p785j.C14276e0;
import p193e.p194a.p773g.p785j.C14279f0;
import p193e.p194a.p773g.p785j.C14280g;
import p193e.p194a.p773g.p785j.C14281g0;
import p193e.p194a.p773g.p785j.C14288j;
import p193e.p194a.p773g.p785j.C14291k0;
import p193e.p194a.p773g.p785j.C14298o;
import p193e.p194a.p773g.p785j.C14300p;
import p193e.p194a.p773g.p785j.C14315v;
import p193e.p194a.p773g.p785j.C14318y;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import p193e.p194a.p918j.p934e.AbstractC15494h;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.i;
import q3.a.w2.j;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.g;
import s1.k;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.b.p;
/* renamed from: e.a.g.a.m */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/m.class */
public abstract class AbstractC14205m<T extends AbstractC14198h> extends AbstractC20574a<T> implements Object<T>, AbstractC14197g, AbstractC14183d {

    /* renamed from: A */
    public final AbstractC14243a f40966A;

    /* renamed from: A0 */
    public final AbstractC18765c f40967A0;

    /* renamed from: B */
    public final AnalyticsContext f40968B;

    /* renamed from: B0 */
    public final AbstractC17197v0 f40969B0;

    /* renamed from: C */
    public final C14280g f40970C;

    /* renamed from: C0 */
    public final AbstractC7919c f40971C0;

    /* renamed from: D */
    public final C14298o f40972D;

    /* renamed from: D0 */
    public final AbstractC13348a f40973D0;

    /* renamed from: E */
    public final AbstractC14273d f40974E;

    /* renamed from: E0 */
    public final C21185a f40975E0;

    /* renamed from: J */
    public final C14300p f40976J;

    /* renamed from: K */
    public final C14291k0 f40977K;

    /* renamed from: L */
    public final AbstractC7419a f40978L;

    /* renamed from: M */
    public final C14279f0 f40979M;

    /* renamed from: N */
    public final AbstractC14237a f40980N;

    /* renamed from: O */
    public final AbstractC8432l f40981O;

    /* renamed from: P */
    public final AbstractC19854f<AbstractC14535n> f40982P;

    /* renamed from: Q */
    public final AbstractC14268a0 f40983Q;

    /* renamed from: R */
    public final AbstractC21204d f40984R;

    /* renamed from: S */
    public final C16461b f40985S;

    /* renamed from: T */
    public final Uri f40986T;

    /* renamed from: U */
    public final ContentResolver f40987U;

    /* renamed from: V */
    public final AbstractC13497p f40988V;

    /* renamed from: W */
    public final AbstractC14307r f40989W;

    /* renamed from: X */
    public final C14288j f40990X;

    /* renamed from: Y */
    public final AbstractC19222c f40991Y;

    /* renamed from: Z */
    public final AbstractC16550a f40992Z;

    /* renamed from: d */
    public AfterCallHistoryEvent f40993d;

    /* renamed from: f */
    public FilterMatch f40995f;

    /* renamed from: g */
    public C14255a f40996g;

    /* renamed from: g0 */
    public final C14267a f40997g0;

    /* renamed from: h0 */
    public final AbstractC19388c f40999h0;

    /* renamed from: i */
    public final j<AbstractC14250f> f41000i;

    /* renamed from: i0 */
    public final AbstractC8210c f41001i0;

    /* renamed from: j */
    public final C14186e0 f41002j;

    /* renamed from: j0 */
    public final AbstractC8208a f41003j0;

    /* renamed from: k */
    public AbstractC18240c f41004k;

    /* renamed from: k0 */
    public final C19391a f41005k0;

    /* renamed from: l */
    public Long f41006l;

    /* renamed from: l0 */
    public final C21202b f41007l0;

    /* renamed from: m */
    public long f41008m;

    /* renamed from: m0 */
    public final AbstractC14274d0 f41009m0;

    /* renamed from: n */
    public boolean f41010n;

    /* renamed from: n0 */
    public final AbstractC7395n f41011n0;

    /* renamed from: o */
    public AdCampaign.Style f41012o;

    /* renamed from: o0 */
    public final AbstractC7401p f41013o0;

    /* renamed from: p */
    public boolean f41014p;

    /* renamed from: p0 */
    public final C14315v f41015p0;

    /* renamed from: q */
    public boolean f41016q;

    /* renamed from: q0 */
    public final AbstractC14192e f41017q0;

    /* renamed from: r0 */
    public final C19971p f41019r0;

    /* renamed from: s */
    public boolean f41020s;

    /* renamed from: s0 */
    public final AbstractC13343b f41021s0;

    /* renamed from: t */
    public boolean f41022t;

    /* renamed from: t0 */
    public final C14318y f41023t0;

    /* renamed from: u */
    public Boolean f41024u;

    /* renamed from: u0 */
    public final C20592g f41025u0;

    /* renamed from: v */
    public boolean f41026v;

    /* renamed from: v0 */
    public final AbstractC15964c2 f41027v0;

    /* renamed from: w0 */
    public final AbstractC14308r0 f41029w0;

    /* renamed from: x0 */
    public final C14281g0 f41031x0;

    /* renamed from: y */
    public final f f41032y;

    /* renamed from: y0 */
    public final AbstractC21847a f41033y0;

    /* renamed from: z */
    public final f f41034z;

    /* renamed from: z0 */
    public final AbstractC15494h f41035z0;

    /* renamed from: e */
    public final boolean f40994e = true;

    /* renamed from: h */
    public final j<ClickEvent> f40998h = d.f(Integer.MAX_VALUE, (i) null, (l) null, 6);

    /* renamed from: r */
    public final g f41018r = C25225a.m3978P1(new C14202k(this));

    /* renamed from: w */
    public final C14199i f41028w = new C14199i(this);

    /* renamed from: x */
    public final C14200j f41030x = new C14200j(this, new Handler(Looper.getMainLooper()));

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter", f = "AfterCallBasePresenter.kt", l = {625}, m = "fetchContactExternalInfoIfAbsent")
    /* renamed from: e.a.g.a.m$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$a.class */
    public static final class C14206a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41036d;

        /* renamed from: e */
        public int f41037e;

        /* renamed from: g */
        public Object f41039g;

        /* renamed from: h */
        public Object f41040h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14206a(s1.w.d dVar) {
            super(dVar);
            AbstractC14205m.this = r4;
        }

        /* renamed from: s */
        public final Object m20409s(Object obj) {
            this.f41036d = obj;
            this.f41037e |= Integer.MIN_VALUE;
            return AbstractC14205m.this.m20459Kj(null, this);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter", f = "AfterCallBasePresenter.kt", l = {607}, m = "isRejectedOrMissedOutgoingCall")
    /* renamed from: e.a.g.a.m$b */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$b.class */
    public static final class C14207b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41041d;

        /* renamed from: e */
        public int f41042e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14207b(s1.w.d dVar) {
            super(dVar);
            AbstractC14205m.this = r4;
        }

        /* renamed from: s */
        public final Object m20408s(Object obj) {
            this.f41041d = obj;
            this.f41042e |= Integer.MIN_VALUE;
            return AbstractC14205m.this.m20443Vj(null, this);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter", f = "AfterCallBasePresenter.kt", l = {1248}, m = "loadAggregatedContact")
    /* renamed from: e.a.g.a.m$c */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$c.class */
    public static final class C14208c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41044d;

        /* renamed from: e */
        public int f41045e;

        /* renamed from: g */
        public Object f41047g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14208c(s1.w.d dVar) {
            super(dVar);
            AbstractC14205m.this = r4;
        }

        /* renamed from: s */
        public final Object m20407s(Object obj) {
            this.f41044d = obj;
            this.f41045e |= Integer.MIN_VALUE;
            return AbstractC14205m.this.m20440Xj(this);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$loadAggregatedContact$aggregatedContact$1", f = "AfterCallBasePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.m$d */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$d.class */
    public static final class C14209d extends s1.w.k.a.i implements p<i0, s1.w.d<? super Contact>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14209d(s1.w.d dVar) {
            super(2, dVar);
            AbstractC14205m.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20406i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14209d(dVar);
        }

        /* renamed from: k */
        public final Object m20405k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            AbstractC14205m abstractC14205m = AbstractC14205m.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return abstractC14205m.f40985S.m17364h(abstractC14205m.m20451Oj().f11535b);
        }

        /* renamed from: s */
        public final Object m20404s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC14205m abstractC14205m = AbstractC14205m.this;
            return abstractC14205m.f40985S.m17364h(abstractC14205m.m20451Oj().f11535b);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter", f = "AfterCallBasePresenter.kt", l = {573, 574}, m = "maybeShowOnDemandCallReasonPicker")
    /* renamed from: e.a.g.a.m$e */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$e.class */
    public static final class C14210e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41049d;

        /* renamed from: e */
        public int f41050e;

        /* renamed from: g */
        public Object f41052g;

        /* renamed from: h */
        public Object f41053h;

        /* renamed from: i */
        public Object f41054i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14210e(s1.w.d dVar) {
            super(dVar);
            AbstractC14205m.this = r4;
        }

        /* renamed from: s */
        public final Object m20403s(Object obj) {
            this.f41049d = obj;
            this.f41050e |= Integer.MIN_VALUE;
            return AbstractC14205m.this.m20437Zj(null, null, this);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onBlockActionChanged$1", f = "AfterCallBasePresenter.kt", l = {1152}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.m$f */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$f.class */
    public static final class C14211f extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f41055e;

        /* renamed from: f */
        public int f41056f;

        /* renamed from: h */
        public final /* synthetic */ boolean f41058h;

        /* renamed from: i */
        public final /* synthetic */ String f41059i;

        /* renamed from: j */
        public final /* synthetic */ Contact f41060j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14211f(boolean z, String str, Contact contact, s1.w.d dVar) {
            super(2, dVar);
            AbstractC14205m.this = r5;
            this.f41058h = z;
            this.f41059i = str;
            this.f41060j = contact;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20402i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14211f(this.f41058h, this.f41059i, this.f41060j, dVar);
        }

        /* renamed from: k */
        public final Object m20401k(Object obj, Object obj2) {
            return m20402i(obj, (s1.w.d) obj2).m20400s(s.a);
        }

        /* renamed from: s */
        public final Object m20400s(Object obj) {
            Object obj2;
            AbstractC14205m abstractC14205m;
            String str;
            a aVar = a.a;
            int i = this.f41056f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (this.f41058h) {
                    AbstractC14205m abstractC14205m2 = AbstractC14205m.this;
                    AbstractC14198h abstractC14198h = (AbstractC14198h) abstractC14205m2.f57683a;
                    if (abstractC14198h != null) {
                        AbstractC13343b abstractC13343b = abstractC14205m2.f41021s0;
                        String str2 = this.f41059i;
                        String str3 = null;
                        if (str2 == null || r.p(str2)) {
                            Contact contact = this.f41060j;
                            str = contact != null ? contact.m35489x() : null;
                        } else {
                            str = this.f41059i;
                        }
                        Contact contact2 = this.f41060j;
                        if (contact2 != null) {
                            str3 = contact2.m35496t();
                        }
                        abstractC14198h.mo20510op(abstractC13343b, str, str3, AbstractC14205m.this.m20453Nj().m35812b());
                    }
                }
                AbstractC14205m abstractC14205m3 = AbstractC14205m.this;
                HistoryEvent m20451Oj = abstractC14205m3.m20451Oj();
                this.f41055e = abstractC14205m3;
                this.f41056f = 1;
                obj2 = abstractC14205m3.m20457Lj(m20451Oj, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                abstractC14205m = abstractC14205m3;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                abstractC14205m = (AbstractC14205m) this.f41055e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            FilterMatch filterMatch = (FilterMatch) obj2;
            Objects.requireNonNull(abstractC14205m);
            s1.z.c.l.e(filterMatch, "<set-?>");
            abstractC14205m.f40995f = filterMatch;
            Contact contact3 = AbstractC14205m.this.m20451Oj().f11539f;
            if (contact3 != null) {
                AbstractC14205m.this.m20454Mk(contact3);
            }
            AbstractC14205m.this.m20456Lk();
            AbstractC14205m.this.mo20464Hk();
            return s.a;
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onSpamCategoryResult$1", f = "AfterCallBasePresenter.kt", l = {RtcEngineEvent.EvtType.EVT_JOIN_PUBLISHER}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.m$g */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$g.class */
    public static final class C14212g extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f41061e;

        /* renamed from: g */
        public final /* synthetic */ String f41063g;

        /* renamed from: h */
        public final /* synthetic */ boolean f41064h;

        /* renamed from: i */
        public final /* synthetic */ SpamCategoryResult f41065i;

        /* renamed from: j */
        public final /* synthetic */ Contact f41066j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14212g(String str, boolean z, SpamCategoryResult spamCategoryResult, Contact contact, s1.w.d dVar) {
            super(2, dVar);
            AbstractC14205m.this = r5;
            this.f41063g = str;
            this.f41064h = z;
            this.f41065i = spamCategoryResult;
            this.f41066j = contact;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20399i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14212g(this.f41063g, this.f41064h, this.f41065i, this.f41066j, dVar);
        }

        /* renamed from: k */
        public final Object m20398k(Object obj, Object obj2) {
            return m20399i(obj, (s1.w.d) obj2).m20397s(s.a);
        }

        /* renamed from: s */
        public final Object m20397s(Object obj) {
            SpamData spamData;
            a aVar = a.a;
            int i = this.f41061e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14205m abstractC14205m = AbstractC14205m.this;
                String str = this.f41063g;
                FiltersContract.Filters.EntityType fromIsBusiness = FiltersContract.Filters.EntityType.fromIsBusiness(this.f41064h);
                s1.z.c.l.d(fromIsBusiness, "EntityType.fromIsBusiness(isBusiness)");
                Long l = this.f41065i.f14923a;
                this.f41061e = 1;
                AbstractC7419a abstractC7419a = abstractC14205m.f40978L;
                String str2 = abstractC14205m.m20451Oj().f11535b;
                if (str2 == null) {
                    str2 = abstractC14205m.m20451Oj().f11536c;
                }
                Contact contact = abstractC14205m.m20451Oj().f11539f;
                Object mo29664b = abstractC7419a.mo29664b(C25225a.m3962T1(new k(str2, (contact == null || (spamData = contact.f11529x) == null) ? null : spamData.getSpamVersion())), "PHONE_NUMBER", str, (abstractC14205m.f57683a instanceof AbstractC14149h ? AnalyticsContext.FACS : AnalyticsContext.PACS).getValue(), fromIsBusiness, true, FiltersContract.Filters.WildCardType.NONE, l, this);
                obj = mo29664b;
                if (mo29664b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Number) obj).intValue() > 0) {
                AbstractC14205m.this.m20429fk(true, this.f41066j, this.f41063g);
                AbstractC14198h abstractC14198h = (AbstractC14198h) AbstractC14205m.this.f57683a;
                if (abstractC14198h != null) {
                    abstractC14198h.mo20540a(C2778R.string.acs_blacklist_success);
                }
            } else {
                AbstractC14198h abstractC14198h2 = (AbstractC14198h) AbstractC14205m.this.f57683a;
                if (abstractC14198h2 != null) {
                    abstractC14198h2.mo20540a(C2778R.string.acs_blacklist_update_fail);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$onVideoCallerIdOptionClicked$1", f = "AfterCallBasePresenter.kt", l = {1547}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.m$h */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$h.class */
    public static final class C14213h extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f41067e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14213h(s1.w.d dVar) {
            super(2, dVar);
            AbstractC14205m.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20396i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14213h(dVar);
        }

        /* renamed from: k */
        public final Object m20395k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C14213h(dVar).m20394s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00c3  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20394s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 217
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.C14213h.m20394s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter", f = "AfterCallBasePresenter.kt", l = {1323, 1336, 1343, 1356}, m = "setFeedbackView")
    /* renamed from: e.a.g.a.m$i */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$i.class */
    public static final class C14214i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41069d;

        /* renamed from: e */
        public int f41070e;

        /* renamed from: g */
        public Object f41072g;

        /* renamed from: h */
        public Object f41073h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14214i(s1.w.d dVar) {
            super(dVar);
            AbstractC14205m.this = r4;
        }

        /* renamed from: s */
        public final Object m20393s(Object obj) {
            this.f41069d = obj;
            this.f41070e |= Integer.MIN_VALUE;
            return AbstractC14205m.this.m20414vk(null, this);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter", f = "AfterCallBasePresenter.kt", l = {832}, m = "shouldShowBlockAction")
    /* renamed from: e.a.g.a.m$j */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$j.class */
    public static final class C14215j extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41074d;

        /* renamed from: e */
        public int f41075e;

        /* renamed from: g */
        public Object f41077g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14215j(s1.w.d dVar) {
            super(dVar);
            AbstractC14205m.this = r4;
        }

        /* renamed from: s */
        public final Object m20392s(Object obj) {
            this.f41074d = obj;
            this.f41075e |= Integer.MIN_VALUE;
            return AbstractC14205m.this.m20462Ik(this);
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$showActionButtons$1", f = "AfterCallBasePresenter.kt", l = {756, 756, 760, 761}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.m$k */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$k.class */
    public static final class C14216k extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public boolean f41078e;

        /* renamed from: f */
        public boolean f41079f;

        /* renamed from: g */
        public boolean f41080g;

        /* renamed from: h */
        public int f41081h;

        /* renamed from: i */
        public int f41082i;

        /* renamed from: j */
        public Object f41083j;

        /* renamed from: k */
        public int f41084k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14216k(s1.w.d dVar) {
            super(2, dVar);
            AbstractC14205m.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20391i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14216k(dVar);
        }

        /* renamed from: k */
        public final Object m20390k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C14216k(dVar).m20389s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:136:0x0579  */
        /* JADX WARN: Removed duplicated region for block: B:146:0x05a6  */
        /* JADX WARN: Removed duplicated region for block: B:152:0x05b9  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x05dc  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x05e9  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x0643  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x0667  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x0689  */
        /* JADX WARN: Removed duplicated region for block: B:182:0x06c1  */
        /* JADX WARN: Removed duplicated region for block: B:185:0x06d6  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0212  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0222  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0247  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x02c2  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x02cc  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0332  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0334  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x039b  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20389s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 1809
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.C14216k.m20389s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$showContactInfo$1", f = "AfterCallBasePresenter.kt", l = {526, 539}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.m$l */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/m$l.class */
    public static final class C14217l extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f41086e;

        /* renamed from: g */
        public final /* synthetic */ Contact f41088g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14217l(Contact contact, s1.w.d dVar) {
            super(2, dVar);
            AbstractC14205m.this = r5;
            this.f41088g = contact;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20388i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14217l(this.f41088g, dVar);
        }

        /* renamed from: k */
        public final Object m20387k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C14217l(this.f41088g, dVar).m20386s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
            if (r11 != null) goto L47;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x036d  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x038d  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x020f  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0225  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0247  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0267  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0294  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x02a7  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x02f3  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20386s(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 985
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.C14217l.m20386s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC14205m(f fVar, f fVar2, AbstractC14243a abstractC14243a, AnalyticsContext analyticsContext, C14280g c14280g, C14298o c14298o, AbstractC14273d abstractC14273d, C14300p c14300p, C14291k0 c14291k0, AbstractC7419a abstractC7419a, C14279f0 c14279f0, AbstractC14237a abstractC14237a, AbstractC8432l abstractC8432l, AbstractC19854f<AbstractC14535n> abstractC19854f, AbstractC14268a0 abstractC14268a0, AbstractC21204d abstractC21204d, C16461b c16461b, Uri uri, ContentResolver contentResolver, AbstractC13497p abstractC13497p, AbstractC14307r abstractC14307r, C14288j c14288j, AbstractC19222c abstractC19222c, AbstractC16550a abstractC16550a, C14267a c14267a, AbstractC19388c abstractC19388c, AbstractC8210c abstractC8210c, AbstractC8208a abstractC8208a, C19391a c19391a, C21202b c21202b, AbstractC14274d0 abstractC14274d0, AbstractC7395n abstractC7395n, AbstractC7401p abstractC7401p, C14315v c14315v, AbstractC14192e abstractC14192e, C19971p c19971p, AbstractC13343b abstractC13343b, C14318y c14318y, C20592g c20592g, AbstractC15964c2 abstractC15964c2, AbstractC14308r0 abstractC14308r0, C14281g0 c14281g0, AbstractC21847a abstractC21847a, AbstractC15494h abstractC15494h, AbstractC18765c abstractC18765c, AbstractC17197v0 abstractC17197v0, AbstractC7919c abstractC7919c, AbstractC13348a abstractC13348a, C21185a c21185a) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(fVar2, "asyncContext");
        s1.z.c.l.e(abstractC14243a, "acsAnalytics");
        s1.z.c.l.e(analyticsContext, "analyticsContext");
        s1.z.c.l.e(c14280g, "acsCallInfoHelper");
        s1.z.c.l.e(c14298o, "logoHelper");
        s1.z.c.l.e(abstractC14273d, "initiateCallHelper");
        s1.z.c.l.e(c14300p, "acsMessageHelper");
        s1.z.c.l.e(c14291k0, "acsVoipHelper");
        s1.z.c.l.e(abstractC7419a, "blockManager");
        s1.z.c.l.e(c14279f0, "acsTagHelper");
        s1.z.c.l.e(abstractC14237a, "acsAdsLoader");
        s1.z.c.l.e(abstractC8432l, "accountManager");
        s1.z.c.l.e(abstractC19854f, "tagDataSaver");
        s1.z.c.l.e(abstractC14268a0, "searchHelper");
        s1.z.c.l.e(abstractC21204d, "contactStalenessHelper");
        s1.z.c.l.e(c16461b, "aggregatedContactDao");
        s1.z.c.l.e(uri, "aggregatedContactTableUri");
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC13497p, "multiSimManager");
        s1.z.c.l.e(abstractC14307r, "phonebookHelper");
        s1.z.c.l.e(c14288j, "acsContactHelper");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(abstractC16550a, "timezoneHelper");
        s1.z.c.l.e(c14267a, "acsAccountHelper");
        s1.z.c.l.e(abstractC19388c, "nameFeedbackHelper");
        s1.z.c.l.e(abstractC8210c, "verifiedFeedbackHelper");
        s1.z.c.l.e(abstractC8208a, "verifiedFeedbackAnalyticsHelper");
        s1.z.c.l.e(c19391a, "contactFeedbackAnalyticsHelper");
        s1.z.c.l.e(c21202b, "contactFeedbackSettings");
        s1.z.c.l.e(abstractC14274d0, "acsSpamPremiumPromoHelper");
        s1.z.c.l.e(abstractC7395n, "spamCategoryFetcher");
        s1.z.c.l.e(abstractC7401p, "spamCategoryBuilder");
        s1.z.c.l.e(c14315v, "promoManager");
        s1.z.c.l.e(abstractC14192e, "rateAppPromo");
        s1.z.c.l.e(c19971p, "profileViewLoggingHelper");
        s1.z.c.l.e(abstractC13343b, "afterBlockPromo");
        s1.z.c.l.e(c14318y, "replyHelper");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC15964c2, "videoPlayerConfigProvider");
        s1.z.c.l.e(abstractC14308r0, "videoCallerIdAcsMoreOptionManager");
        s1.z.c.l.e(c14281g0, "trueContextPresenterProvider");
        s1.z.c.l.e(abstractC21847a, "badgeHelper");
        s1.z.c.l.e(abstractC15494h, "surveysHelper");
        s1.z.c.l.e(abstractC18765c, "contextCall");
        s1.z.c.l.e(abstractC17197v0, "premiumStateSettings");
        s1.z.c.l.e(abstractC7919c, "bizMonCallMeBackManager");
        s1.z.c.l.e(abstractC13348a, "callAlert");
        s1.z.c.l.e(c21185a, "referralTargetResolver");
        this.f41032y = fVar;
        this.f41034z = fVar2;
        this.f40966A = abstractC14243a;
        this.f40968B = analyticsContext;
        this.f40970C = c14280g;
        this.f40972D = c14298o;
        this.f40974E = abstractC14273d;
        this.f40976J = c14300p;
        this.f40977K = c14291k0;
        this.f40978L = abstractC7419a;
        this.f40979M = c14279f0;
        this.f40980N = abstractC14237a;
        this.f40981O = abstractC8432l;
        this.f40982P = abstractC19854f;
        this.f40983Q = abstractC14268a0;
        this.f40984R = abstractC21204d;
        this.f40985S = c16461b;
        this.f40986T = uri;
        this.f40987U = contentResolver;
        this.f40988V = abstractC13497p;
        this.f40989W = abstractC14307r;
        this.f40990X = c14288j;
        this.f40991Y = abstractC19222c;
        this.f40992Z = abstractC16550a;
        this.f40997g0 = c14267a;
        this.f40999h0 = abstractC19388c;
        this.f41001i0 = abstractC8210c;
        this.f41003j0 = abstractC8208a;
        this.f41005k0 = c19391a;
        this.f41007l0 = c21202b;
        this.f41009m0 = abstractC14274d0;
        this.f41011n0 = abstractC7395n;
        this.f41013o0 = abstractC7401p;
        this.f41015p0 = c14315v;
        this.f41017q0 = abstractC14192e;
        this.f41019r0 = c19971p;
        this.f41021s0 = abstractC13343b;
        this.f41023t0 = c14318y;
        this.f41025u0 = c20592g;
        this.f41027v0 = abstractC15964c2;
        this.f41029w0 = abstractC14308r0;
        this.f41031x0 = c14281g0;
        this.f41033y0 = abstractC21847a;
        this.f41035z0 = abstractC15494h;
        this.f40967A0 = abstractC18765c;
        this.f40969B0 = abstractC17197v0;
        this.f40971C0 = abstractC7919c;
        this.f40973D0 = abstractC13348a;
        this.f40975E0 = c21185a;
        j<AbstractC14250f> f = d.f(Integer.MAX_VALUE, (i) null, (l) null, 6);
        this.f41000i = f;
        this.f41002j = new C14186e0(f);
    }

    /* renamed from: Bk */
    public final void m20470Bk(Contact contact, boolean z) {
        s1.z.c.l.e(contact, "$this$setNameBadge");
        if (contact.m35495t0() && contact.m35499r0() && !contact.m35506m0() && !contact.m35574A0()) {
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null) {
                return;
            }
            abstractC14198h.mo20553Rq();
        } else if (contact.m35495t0() && contact.m35494u0() && mo20460Jk()) {
            AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
            if (abstractC14198h2 == null) {
                return;
            }
            abstractC14198h2.mo20526dd();
        } else if (contact.m35495t0() || (!z && !contact.m35492v0())) {
            AbstractC14198h abstractC14198h3 = (AbstractC14198h) this.f57683a;
            if (abstractC14198h3 == null) {
                return;
            }
            abstractC14198h3.mo20551Si();
        } else {
            AbstractC14198h abstractC14198h4 = (AbstractC14198h) this.f57683a;
            if (abstractC14198h4 == null) {
                return;
            }
            abstractC14198h4.mo20576Fd();
        }
    }

    /* renamed from: Ck */
    public abstract void mo20469Ck(String str, Contact contact);

    /* renamed from: Dk */
    public abstract void mo20468Dk(Contact contact);

    /* renamed from: Ek */
    public final void m20467Ek(int i, SpamCategoryModel spamCategoryModel) {
        String m16055s = C17422k.m16055s(this.f41013o0, i, spamCategoryModel, 0, false, 12, null);
        mo20466Fk(m16055s);
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.mo20589Ag(m16055s);
        }
        AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
        if (spamCategoryModel == null) {
            if (abstractC14198h2 != null) {
                abstractC14198h2.mo20566Lx();
            }
        } else if (abstractC14198h2 != null) {
            abstractC14198h2.mo20507pa();
        }
        AbstractC14198h abstractC14198h3 = (AbstractC14198h) this.f57683a;
        if (abstractC14198h3 != null) {
            abstractC14198h3.setSpamCategoryIcon(spamCategoryModel);
        }
    }

    /* renamed from: Fk */
    public void mo20466Fk(String str) {
        s1.z.c.l.e(str, "label");
        if (str.length() == 0) {
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null) {
                return;
            }
            abstractC14198h.mo20541Zt();
            return;
        }
        AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
        if (abstractC14198h2 == null) {
            return;
        }
        abstractC14198h2.mo20586By();
    }

    /* renamed from: Gk */
    public final void m20465Gk(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        C8551c mo20025b = this.f40979M.mo20025b(contact);
        if (mo20025b != null) {
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null) {
                return;
            }
            boolean z = !C17891a1.C17902k.m15668J0(contact);
            if (C17891a1.C17902k.m15668J0(contact)) {
                abstractC14198h.mo20558P0();
                abstractC14198h.mo20522gb(mo20025b.f26354e, mo20025b.f26351b, z);
                return;
            }
            abstractC14198h.mo20534b5();
            abstractC14198h.mo20570Hz(mo20025b.f26354e, mo20025b.f26351b, z);
            return;
        }
        C14279f0 c14279f0 = this.f40979M;
        Objects.requireNonNull(c14279f0);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        if (((!C17891a1.C17902k.m15668J0(contact)) & (!contact.m35488x0()) & c14279f0.f41327c.mo28580d()) && c14279f0.f41326b.mo28400d()) {
            AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
            if (abstractC14198h2 == null) {
                return;
            }
            abstractC14198h2.mo20490tv();
            return;
        }
        AbstractC14198h abstractC14198h3 = (AbstractC14198h) this.f57683a;
        if (abstractC14198h3 == null) {
            return;
        }
        abstractC14198h3.mo20534b5();
        abstractC14198h3.mo20558P0();
    }

    /* renamed from: Hk */
    public abstract void mo20464Hk();

    /* renamed from: Ij */
    public void mo20463Ij(AdCampaign.Style style) {
        s1.z.c.l.e(style, "style");
        if (this.f41004k != null) {
            m20436ak();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: Ik */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20462Ik(s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20462Ik(s1.w.d):java.lang.Object");
    }

    /* renamed from: Jj */
    public final void m20461Jj(DismissReason dismissReason) {
        s1.z.c.l.e(dismissReason, "dismissReason");
        C14186e0 c14186e0 = this.f41002j;
        Objects.requireNonNull(c14186e0);
        s1.z.c.l.e(dismissReason, "<set-?>");
        c14186e0.f40936c = dismissReason;
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.finish();
        }
    }

    /* renamed from: Jk */
    public abstract boolean mo20460Jk();

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d8  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m20459Kj(com.truecaller.data.entity.Contact r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20459Kj(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0108  */
    /* renamed from: Kk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m20458Kk() {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20458Kk():boolean");
    }

    /* renamed from: Lj */
    public final Object m20457Lj(HistoryEvent historyEvent, s1.w.d<? super FilterMatch> dVar) {
        AbstractC7419a abstractC7419a = this.f40978L;
        String str = historyEvent.f11535b;
        return C18334g0.m15195x(abstractC7419a, str != null ? str : historyEvent.f11536c, null, false, dVar, 6, null);
    }

    /* renamed from: Lk */
    public final p1 m20456Lk() {
        return d.w2(this, this.f41032y, (j0) null, new C14216k(null), 2, (Object) null);
    }

    /* renamed from: Mj */
    public abstract Object mo20455Mj(String str, s1.w.d<? super Long> dVar);

    /* renamed from: Mk */
    public final p1 m20454Mk(Contact contact) {
        return d.w2(this, this.f41032y, (j0) null, new C14217l(contact, null), 2, (Object) null);
    }

    /* renamed from: Nj */
    public final FilterMatch m20453Nj() {
        FilterMatch filterMatch = this.f40995f;
        if (filterMatch != null) {
            return filterMatch;
        }
        s1.z.c.l.l("filter");
        throw null;
    }

    /* renamed from: Nk */
    public final void m20452Nk(HistoryEvent historyEvent) {
        s1.z.c.l.e(historyEvent, "historyEvent");
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
        if (abstractC14198h != null) {
            Contact contact = historyEvent.f11539f;
            abstractC14198h.mo20501rh(contact != null ? contact.m35491w() : null, historyEvent.f11535b, historyEvent.f11536c);
        }
        AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
        if (abstractC14198h2 != null) {
            abstractC14198h2.finish();
        }
        this.f40998h.offer(ClickEvent.VIEW_PROFILE);
        this.f41002j.f40934a = false;
    }

    /* renamed from: Oj */
    public final HistoryEvent m20451Oj() {
        AfterCallHistoryEvent afterCallHistoryEvent = this.f40993d;
        if (afterCallHistoryEvent != null) {
            return afterCallHistoryEvent.getHistoryEvent();
        }
        s1.z.c.l.l("afterCallHistoryEvent");
        throw null;
    }

    /* renamed from: Ok */
    public final Object m20450Ok(String str, s1.w.d<? super Integer> dVar) {
        SpamData spamData;
        AbstractC7419a abstractC7419a = this.f40978L;
        String str2 = m20451Oj().f11535b;
        if (str2 == null) {
            str2 = m20451Oj().f11536c;
        }
        Contact contact = m20451Oj().f11539f;
        return abstractC7419a.mo29663c(C25225a.m3962T1(new k(str2, (contact == null || (spamData = contact.f11529x) == null) ? null : spamData.getSpamVersion())), "PHONE_NUMBER", (this.f57683a instanceof AbstractC14149h ? AnalyticsContext.FACS : AnalyticsContext.PACS).getValue(), str, true, dVar);
    }

    /* renamed from: Pj */
    public abstract boolean mo20449Pj();

    /* renamed from: Qj */
    public abstract int mo20448Qj();

    /* renamed from: Rj */
    public abstract int mo20447Rj();

    /* renamed from: Sj */
    public boolean mo20446Sj() {
        return this.f40994e;
    }

    /* renamed from: Tj */
    public abstract boolean mo20445Tj();

    /* renamed from: Uj */
    public final boolean m20444Uj(Contact contact) {
        s1.z.c.l.e(contact, "$this$isGoldWithSpam");
        C14288j c14288j = this.f40990X;
        FilterMatch filterMatch = this.f40995f;
        if (filterMatch == null) {
            s1.z.c.l.l("filter");
            throw null;
        }
        Objects.requireNonNull(c14288j);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(filterMatch, "filter");
        return contact.m35499r0() && contact.m35574A0() && !filterMatch.m35812b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a6, code lost:
        if (((java.lang.Number) r6).longValue() != 0) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: Vj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20443Vj(com.truecaller.data.entity.HistoryEvent r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p773g.p774a.AbstractC14205m.C14207b
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.g.a.m$b r0 = (p193e.p194a.p773g.p774a.AbstractC14205m.C14207b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f41042e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f41042e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.g.a.m$b r0 = new e.a.g.a.m$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f41041d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f41042e
            r9 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L9d
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            java.lang.String r0 = r0.f11535b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lac
            r0 = r6
            int r0 = r0.f11550q
            r1 = 2
            if (r0 != r1) goto Lac
            r0 = r8
            s1.z.c.l.c(r0)
            r0 = r8
            java.lang.String r1 = "normalizedNumber!!"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            r1 = 1
            r0.f41042e = r1
            r0 = r5
            r1 = r8
            r2 = r7
            java.lang.Object r0 = r0.mo20455Mj(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L9d
            r0 = r10
            return r0
        L9d:
            r0 = r6
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lac
            goto Laf
        Lac:
            r0 = 0
            r11 = r0
        Laf:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20443Vj(com.truecaller.data.entity.HistoryEvent, s1.w.d):java.lang.Object");
    }

    /* renamed from: Wb */
    public void mo20442Wb() {
        AbstractC14273d abstractC14273d = this.f40974E;
        String str = m20451Oj().f11536c;
        s1.z.c.l.d(str, "historyEvent.rawNumber");
        ((C14275e) abstractC14273d).m20301a(str, this.f40968B, null);
        this.f40998h.offer(ClickEvent.CALL);
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.finish();
        }
    }

    /* renamed from: Wj */
    public final boolean m20441Wj(Contact contact) {
        s1.z.c.l.e(contact, "$this$isSpammerOrBlocked");
        C14288j c14288j = this.f40990X;
        FilterMatch filterMatch = this.f40995f;
        if (filterMatch == null) {
            s1.z.c.l.l("filter");
            throw null;
        }
        Objects.requireNonNull(c14288j);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(filterMatch, "filter");
        boolean z = false;
        if (!filterMatch.m35811c() && (c14288j.m20287b(contact, filterMatch) || filterMatch.m35813a())) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b0  */
    /* renamed from: Xj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20440Xj(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            s1.s r0 = s1.s.a
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p773g.p774a.AbstractC14205m.C14208c
            if (r0 == 0) goto L2e
            r0 = r6
            e.a.g.a.m$c r0 = (p193e.p194a.p773g.p774a.AbstractC14205m.C14208c) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f41045e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f41045e = r1
            r0 = r8
            r6 = r0
            goto L38
        L2e:
            e.a.g.a.m$c r0 = new e.a.g.a.m$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L38:
            r0 = r6
            java.lang.Object r0 = r0.f41044d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f41045e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L6d
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L62
            r0 = r6
            java.lang.Object r0 = r0.f41047g
            e.a.g.a.m r0 = (p193e.p194a.p773g.p774a.AbstractC14205m) r0
            r6 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto La7
        L62:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6d:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            com.truecaller.acs.data.AfterCallHistoryEvent r0 = r0.f40993d
            if (r0 != 0) goto L7a
            r0 = r7
            return r0
        L7a:
            r0 = r5
            s1.w.f r0 = r0.f41034z
            r11 = r0
            e.a.g.a.m$d r0 = new e.a.g.a.m$d
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r8 = r0
            r0 = r6
            r1 = r5
            r0.f41047g = r1
            r0 = r6
            r1 = 1
            r0.f41045e = r1
            r0 = r11
            r1 = r8
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r1 = r10
            if (r0 != r1) goto La5
            r0 = r10
            return r0
        La5:
            r0 = r5
            r6 = r0
        La7:
            r0 = r8
            com.truecaller.data.entity.Contact r0 = (com.truecaller.data.entity.Contact) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lb8
            r0 = r6
            com.truecaller.data.entity.HistoryEvent r0 = r0.m20451Oj()
            r1 = r8
            r0.f11539f = r1
        Lb8:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20440Xj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Y6 */
    public void m20439Y6(SpamCategoryResult spamCategoryResult) {
        s1.z.c.l.e(spamCategoryResult, "spamCategoryResult");
        Contact contact = m20451Oj().f11539f;
        String str = spamCategoryResult.f14924b;
        boolean z = spamCategoryResult.f14925c;
        boolean z2 = spamCategoryResult.f14928f;
        if (!(str == null || str.length() == 0) && contact != null && z2) {
            int i = 1;
            if (z) {
                i = 2;
            }
            this.f40982P.mo11854a().mo20028a(contact, str, i).mo11828g();
        }
        d.w2(this, this.f41032y, (j0) null, new C14212g(str, z, spamCategoryResult, contact, null), 2, (Object) null);
    }

    /* renamed from: Yj */
    public final void m20438Yj(boolean z) {
        CharSequence charSequence;
        CharSequence charSequence2;
        Contact contact = m20451Oj().f11539f;
        if (contact != null) {
            s1.z.c.l.d(contact, "historyEvent.contact ?: return");
            AbstractC14243a abstractC14243a = this.f40966A;
            AnalyticsContext analyticsContext = this.f40968B;
            C14246d c14246d = (C14246d) abstractC14243a;
            Objects.requireNonNull(c14246d);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.z.c.l.e(analyticsContext, "analyticsContext");
            int ordinal = analyticsContext.ordinal();
            if (ordinal == 0) {
                charSequence = "PopupAfterCallScreen";
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                charSequence = "FullAfterCallScreen";
            }
            if (contact.m35492v0() && !contact.m35574A0()) {
                charSequence2 = RemoteMessageConst.Notification.PRIORITY;
            } else if (!contact.m35565G0()) {
                return;
            } else {
                charSequence2 = "verified_business";
            }
            Schema schema = C17642m.f49779f;
            C17642m.C17644b c17644b = new C17642m.C17644b(null);
            c17644b.m15896c(charSequence2);
            c17644b.m15895d(charSequence);
            c17644b.m15897b(z);
            GenericRecord build = c17644b.build();
            AbstractC19462a abstractC19462a = c14246d.f41168d;
            s1.z.c.l.d(build, "event");
            abstractC19462a.mo13275a(build);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x024c  */
    /* renamed from: Zj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20437Zj(java.lang.String r9, com.truecaller.data.entity.Contact r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20437Zj(java.lang.String, com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* renamed from: ak */
    public final void m20436ak() {
        boolean z;
        boolean z2 = this.f57683a instanceof AbstractC14104h;
        if (this.f41004k == null) {
            C14281g0 c14281g0 = this.f41031x0;
            HistoryEvent m20451Oj = m20451Oj();
            AdCampaign.Style style = this.f41012o;
            FilterMatch filterMatch = this.f40995f;
            if (filterMatch == null) {
                s1.z.c.l.l("filter");
                throw null;
            }
            boolean m35813a = filterMatch.m35813a();
            Contact contact = m20451Oj().f11539f;
            boolean z3 = false;
            boolean z4 = false;
            if (contact != null) {
                s1.z.c.l.e(contact, "$this$isSpammer");
                C14288j c14288j = this.f40990X;
                FilterMatch filterMatch2 = this.f40995f;
                if (filterMatch2 == null) {
                    s1.z.c.l.l("filter");
                    throw null;
                }
                z = c14288j.m20287b(contact, filterMatch2);
            } else {
                z = false;
            }
            AnalyticsContext analyticsContext = this.f40968B;
            Objects.requireNonNull(c14281g0);
            s1.z.c.l.e(m20451Oj, "historyEvent");
            s1.z.c.l.e(analyticsContext, "analyticsContext");
            Contact contact2 = m20451Oj.f11539f;
            AbstractC18240c abstractC18240c = null;
            if (contact2 != null) {
                s1.z.c.l.d(contact2, "historyEvent.contact ?: return null");
                TrueContextType m20296a = c14281g0.m20296a(m20451Oj, m35813a);
                if (m20296a == null) {
                    abstractC18240c = null;
                } else {
                    int ordinal = m20296a.ordinal();
                    if (ordinal == 0) {
                        Object obj = c14281g0.f41336c.get();
                        C18661b c18661b = (C18661b) obj;
                        boolean z5 = analyticsContext == AnalyticsContext.FACS;
                        C18239b c18239b = null;
                        if (style != null) {
                            if (C26493a.m1755d(style.f9830b) < 0.5d) {
                                z4 = true;
                            }
                            c18239b = new C18239b(z4);
                        }
                        c18661b.m14662Jj(new AbstractC18657a.C18658a(m20451Oj, z5, c18239b, z, analyticsContext.getValue()));
                        abstractC18240c = (AbstractC18240c) obj;
                    } else if (ordinal == 1) {
                        Object obj2 = c14281g0.f41334a.get();
                        C21464b c21464b = (C21464b) obj2;
                        boolean z6 = analyticsContext == AnalyticsContext.FACS;
                        C18239b c18239b2 = null;
                        if (style != null) {
                            if (C26493a.m1755d(style.f9830b) < 0.5d) {
                                z3 = true;
                            }
                            c18239b2 = new C18239b(z3);
                        }
                        c21464b.m9713Kj(new AbstractC21459a.C21460a(contact2, z6, c18239b2));
                        abstractC18240c = (AbstractC18240c) obj2;
                    } else if (ordinal != 2) {
                        abstractC18240c = null;
                    } else {
                        Object obj3 = c14281g0.f41335b.get();
                        C7951b c7951b = (C7951b) obj3;
                        if (z2) {
                            boolean z7 = false;
                            if (m20451Oj.f11550q == 3) {
                                z7 = true;
                            }
                            c7951b.m29086Jj(new AbstractC7946a.C7948b(contact2, z7));
                        } else {
                            boolean z8 = false;
                            if (m20451Oj.f11550q == 3) {
                                z8 = true;
                            }
                            c7951b.m29086Jj(new AbstractC7946a.C7947a(contact2, z8));
                        }
                        abstractC18240c = (AbstractC18240c) obj3;
                    }
                }
            }
            this.f41004k = abstractC18240c;
        }
        if (!this.f41025u0.m11001D().isEnabled() || !z2) {
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null) {
                return;
            }
            AbstractC18240c abstractC18240c2 = this.f41004k;
            if (abstractC18240c2 != null) {
                abstractC14198h.mo20559P(abstractC18240c2);
                abstractC14198h.mo20585C0();
            } else {
                abstractC14198h.mo20511n();
            }
            abstractC14198h.mo20539a4();
            return;
        }
        AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
        if (abstractC14198h2 == null) {
            return;
        }
        AbstractC18240c abstractC18240c3 = this.f41004k;
        if (abstractC18240c3 == null) {
            abstractC14198h2.mo20511n();
            abstractC14198h2.mo20539a4();
        } else if (abstractC18240c3 instanceof C7951b) {
            abstractC14198h2.mo20546W5(abstractC18240c3);
            abstractC14198h2.mo20511n();
        } else {
            abstractC14198h2.mo20559P(abstractC18240c3);
            abstractC14198h2.mo20585C0();
            abstractC14198h2.mo20539a4();
        }
    }

    @Override // p193e.p194a.p773g.p774a.AbstractC14197g
    /* renamed from: bg */
    public void mo20435bg(ActionButtonType actionButtonType) {
        AbstractC14198h abstractC14198h;
        AbstractC14198h abstractC14198h2;
        s1.z.c.l.e(actionButtonType, "actionButtonType");
        AbstractC14198h abstractC14198h3 = (AbstractC14198h) this.f57683a;
        boolean z = true;
        if (abstractC14198h3 != null && abstractC14198h3.mo20555R0()) {
            AbstractC14198h abstractC14198h4 = (AbstractC14198h) this.f57683a;
            if (abstractC14198h4 == null) {
                return;
            }
            abstractC14198h4.mo20512m8(new C14117a0(this, actionButtonType));
            return;
        }
        switch (actionButtonType.ordinal()) {
            case 0:
                mo20442Wb();
                this.f41002j.f40934a = false;
                return;
            case 1:
                AbstractC14198h abstractC14198h5 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h5 != null) {
                    String str = m20451Oj().f11535b;
                    if (str == null) {
                        str = m20451Oj().f11536c;
                    }
                    s1.z.c.l.d(str, "historyEvent.normalizedN…?: historyEvent.rawNumber");
                    abstractC14198h5.mo20505pl(str, this.f40968B);
                }
                this.f40998h.offer(ClickEvent.SMS);
                this.f41002j.f40934a = false;
                AbstractC14198h abstractC14198h6 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h6 == null) {
                    return;
                }
                abstractC14198h6.finish();
                return;
            case 2:
                HistoryEvent m20451Oj = m20451Oj();
                s1.z.c.l.e(m20451Oj, "$this$getVoipNumber");
                String str2 = m20451Oj.f11535b;
                if (str2 == null) {
                    Contact contact = m20451Oj.f11539f;
                    if (contact != null) {
                        s1.z.c.l.d(contact, AnalyticsConstants.CONTACT);
                        List<Number> m35557M = contact.m35557M();
                        s1.z.c.l.d(m35557M, "contact.numbers");
                        Number number = (Number) s1.u.i.D(m35557M);
                        if (number != null) {
                            str2 = number.m35479e();
                        }
                    }
                    str2 = null;
                }
                if (str2 != null) {
                    C14291k0 c14291k0 = this.f40977K;
                    AnalyticsContext analyticsContext = this.f40968B;
                    Objects.requireNonNull(c14291k0);
                    s1.z.c.l.e(str2, "number");
                    s1.z.c.l.e(analyticsContext, "analyticsContext");
                    ((AbstractC11476s1) c14291k0.f41352a.get()).mo24623a(str2, analyticsContext.getValue());
                }
                this.f41002j.f40934a = false;
                AbstractC14198h abstractC14198h7 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h7 == null) {
                    return;
                }
                abstractC14198h7.finish();
                return;
            case 3:
                Contact contact2 = m20451Oj().f11539f;
                if (contact2 != null) {
                    AbstractC14198h abstractC14198h8 = (AbstractC14198h) this.f57683a;
                    if (abstractC14198h8 != null) {
                        s1.z.c.l.d(contact2, "it");
                        abstractC14198h8.mo20568K8(contact2);
                    }
                    this.f40998h.offer(ClickEvent.SAVE_CONTACT);
                }
                this.f41002j.f40934a = false;
                return;
            case 4:
                Contact contact3 = m20451Oj().f11539f;
                if (contact3 != null) {
                    AbstractC14198h abstractC14198h9 = (AbstractC14198h) this.f57683a;
                    if (abstractC14198h9 != null) {
                        s1.z.c.l.d(contact3, "it");
                        abstractC14198h9.mo20489us(contact3);
                    }
                    this.f40998h.offer(ClickEvent.EDIT_CONTACT);
                }
                this.f41002j.f40934a = false;
                return;
            case 5:
                Contact contact4 = m20451Oj().f11539f;
                if (contact4 == null) {
                    return;
                }
                if (!contact4.m35526c1() || !this.f40981O.mo28580d()) {
                    z = false;
                }
                s1.z.c.l.d(contact4, "it");
                String m35489x = contact4.m35489x();
                s1.z.c.l.d(m35489x, "it.displayNameOrNumber");
                List<Number> m35557M2 = contact4.m35557M();
                s1.z.c.l.d(m35557M2, "it.numbers");
                List<String> m15559x1 = C17891a1.C17902k.m15559x1(m35557M2);
                ArrayList arrayList = new ArrayList(C25225a.m4004J(m15559x1, 10));
                Iterator it = ((ArrayList) m15559x1).iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    s1.z.c.l.d(str3, "number");
                    arrayList.add(new NumberAndType(str3, PhoneNumberType.PHONE_NUMBER));
                }
                SpamCategoryRequest spamCategoryRequest = new SpamCategoryRequest(m35489x, z, arrayList, FeedbackSource.BLOCK_FLOW);
                AbstractC14198h abstractC14198h10 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h10 != null) {
                    abstractC14198h10.mo20513lz(spamCategoryRequest);
                }
                this.f40998h.offer(ClickEvent.BLOCK);
                return;
            case 6:
                AbstractC14198h abstractC14198h11 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h11 != null) {
                    abstractC14198h11.mo20529cr();
                }
                this.f40998h.offer(ClickEvent.UNBLOCK);
                return;
            case 7:
                AbstractC14198h abstractC14198h12 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h12 != null) {
                    abstractC14198h12.mo20565Mp();
                }
                this.f40998h.offer(ClickEvent.UNBLOCK);
                return;
            case 8:
                Contact contact5 = m20451Oj().f11539f;
                if (contact5 == null || (abstractC14198h = (AbstractC14198h) this.f57683a) == null) {
                    return;
                }
                AcsReferralHelper.ReferralLaunchContext referralLaunchContext = AcsReferralHelper.ReferralLaunchContext.AFTER_CALL;
                s1.z.c.l.d(contact5, "it");
                abstractC14198h.mo20560Oi(referralLaunchContext, contact5);
                return;
            case 9:
                Contact contact6 = m20451Oj().f11539f;
                if (contact6 == null || (abstractC14198h2 = (AbstractC14198h) this.f57683a) == null) {
                    return;
                }
                s1.z.c.l.d(contact6, "it");
                String m35489x2 = contact6.m35489x();
                s1.z.c.l.d(m35489x2, "it.displayNameOrNumber");
                List<String> m35521e0 = contact6.m35521e0();
                s1.z.c.l.d(m35521e0, "it.tcSourcedNumbers");
                abstractC14198h2.mo20564Mr(m35489x2, m35521e0);
                return;
            case 10:
                AbstractC14198h abstractC14198h13 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h13 == null) {
                    return;
                }
                Contact contact7 = m20451Oj().f11539f;
                if (contact7 == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                abstractC14198h13.mo20556Pn(contact7);
                return;
            default:
                return;
        }
    }

    /* renamed from: bk */
    public abstract Object mo20434bk(s1.w.d<? super s> dVar);

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        C14186e0 c14186e0 = this.f41002j;
        c14186e0.f40937d.offer(new AbstractC14250f.C14253c(c14186e0.f40935b));
        if (c14186e0.f40934a) {
            c14186e0.f40937d.offer(new AbstractC14250f.C14252b(c14186e0.f40936c));
        }
        C14240d c14240d = (C14240d) this.f40980N;
        AbstractC14241e abstractC14241e = c14240d.f41146h;
        C15222s m20328c = c14240d.m20328c();
        C14233b c14233b = (C14233b) abstractC14241e;
        Objects.requireNonNull(c14233b);
        s1.z.c.l.e(m20328c, "unitConfig");
        s1.z.c.l.e(c14240d, "adsListener");
        c14233b.f41125d.m19085h(m20328c, c14240d);
        ((C14233b) c14240d.f41146h).m20338c().cancel();
        c14240d.m20327d();
        c14240d.f41139a = null;
        c14240d.f41149k.reset();
        d.f0(this.f40998h, (Throwable) null, 1, (Object) null);
        d.f0(this.f41000i, (Throwable) null, 1, (Object) null);
        this.f40987U.unregisterContentObserver(this.f41030x);
    }

    /* renamed from: ck */
    public abstract void mo20433ck();

    @Override // p193e.p194a.p773g.p774a.AbstractC14183d
    /* renamed from: d8 */
    public void mo20432d8(boolean z) {
        Contact contact;
        if (this.f40993d == null || !z || (contact = m20451Oj().f11539f) == null) {
            return;
        }
        C14288j c14288j = this.f40990X;
        s1.z.c.l.d(contact, AnalyticsConstants.CONTACT);
        Long m20288a = c14288j.m20288a(contact);
        if (m20288a == null) {
            return;
        }
        long longValue = m20288a.longValue();
        Long l = this.f41006l;
        if (!(l == null || longValue != l.longValue())) {
            m20288a = null;
        }
        if (m20288a == null) {
            return;
        }
        long longValue2 = m20288a.longValue();
        C19971p c19971p = this.f41019r0;
        boolean m35495t0 = contact.m35495t0();
        int m35484a = m20451Oj().m35484a();
        if (c19971p.f56481b.mo11748o()) {
            GenerateProfileViewService.C4853a.m34281a(c19971p.f56480a, longValue2, m35495t0, m35484a, m35495t0 ? ProfileViewSource.AFTER_CALL_PB : ProfileViewSource.AFTER_CALL);
        }
        this.f41006l = Long.valueOf(longValue2);
    }

    /* renamed from: dk */
    public void m20431dk() {
        Contact contact = m20451Oj().f11539f;
        if (contact != null) {
            s1.z.c.l.d(contact, "historyEvent.contact ?: return");
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null || !abstractC14198h.mo20555R0()) {
                int m35484a = m20451Oj().m35484a();
                AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
                if (abstractC14198h2 != null) {
                    abstractC14198h2.mo20502r8(contact, m35484a);
                }
                this.f40998h.offer(ClickEvent.CHANGE_TAG);
                return;
            }
            int m35484a2 = m20451Oj().m35484a();
            AbstractC14198h abstractC14198h3 = (AbstractC14198h) this.f57683a;
            if (abstractC14198h3 == null) {
                return;
            }
            abstractC14198h3.mo20512m8(new C14169b0(this, contact, m35484a2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00be, code lost:
        if (r10 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0105, code lost:
        if (r11 != null) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ek */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20430ek(T r10) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20430ek(e.a.g.a.h):void");
    }

    /* renamed from: fk */
    public final void m20429fk(boolean z, Contact contact, String str) {
        d.w2(this, this.f41032y, (j0) null, new C14211f(z, str, contact, null), 2, (Object) null);
    }

    /* renamed from: gk */
    public void mo20428gk() {
        if (m20458Kk()) {
            return;
        }
        m20461Jj(DismissReason.CLOSE_BUTTON);
    }

    /* renamed from: hk */
    public void m20427hk(Contact contact) {
        if (contact == null) {
            m20418qk(false);
        }
        d.w2(this, (f) null, (j0) null, new C14231y(this, null), 3, (Object) null);
    }

    /* renamed from: ik */
    public void m20426ik(AfterCallHistoryEvent afterCallHistoryEvent) {
        Contact contact;
        CharSequence charSequence;
        CharSequence charSequence2;
        s1.z.c.l.e(afterCallHistoryEvent, "afterCallHistoryEvent");
        this.f40993d = afterCallHistoryEvent;
        this.f41002j.f40935b = afterCallHistoryEvent.getLaunchedFromWidget() ? AbstractC14247e.C14249b.f41170a : new AbstractC14247e.C14248a(m20451Oj().f11550q);
        if (afterCallHistoryEvent.getFilterMatch() != null) {
            this.f40995f = afterCallHistoryEvent.getFilterMatch();
        } else {
            this.f40995f = FilterMatch.f10445j;
            d.w2(this, (f) null, (j0) null, new C14221q(this, null), 3, (Object) null);
        }
        if (((C14240d) this.f40980N).m20322i(m20451Oj())) {
            d.w2(this, (f) null, (j0) null, new C14219o(this, null), 3, (Object) null);
        } else {
            d.w2(this, (f) null, (j0) null, new C14220p(this, null), 3, (Object) null);
        }
        if (this.f41008m == 0) {
            this.f41008m = this.f40991Y.mo13819c();
        }
        d.w2(this, (f) null, (j0) null, new C14230x(this, null), 3, (Object) null);
        Contact contact2 = m20451Oj().f11539f;
        if (contact2 != null && !contact2.m35495t0()) {
            AbstractC14243a abstractC14243a = this.f40966A;
            AnalyticsContext analyticsContext = this.f40968B;
            C14246d c14246d = (C14246d) abstractC14243a;
            Objects.requireNonNull(c14246d);
            s1.z.c.l.e(contact2, AnalyticsConstants.CONTACT);
            s1.z.c.l.e(analyticsContext, "analyticsContext");
            int ordinal = analyticsContext.ordinal();
            if (ordinal == 0) {
                charSequence = "PopupAfterCallScreen";
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                charSequence = "FullAfterCallScreen";
            }
            if (contact2.m35506m0() && !contact2.m35574A0()) {
                charSequence2 = "cred";
            } else if (contact2.m35492v0() && !contact2.m35574A0()) {
                charSequence2 = RemoteMessageConst.Notification.PRIORITY;
            } else if (contact2.m35565G0()) {
                charSequence2 = "verified_business";
            }
            C17672o.C17674b m15873a = C17672o.m15873a();
            m15873a.m15871b(charSequence2);
            m15873a.m15870c(charSequence);
            List<Number> m35557M = contact2.m35557M();
            s1.z.c.l.d(m35557M, "contact.numbers");
            Number number = (Number) s1.u.i.D(m35557M);
            m15873a.m15869d(number != null ? number.m35479e() : null);
            c14246d.f41167c.mo11854a().mo13111a(m15873a.build());
        }
        HistoryEvent m20451Oj = m20451Oj();
        String str = m20451Oj.f11536c;
        boolean z = true;
        if (str != null) {
            z = str.length() == 0;
        }
        if (!z && (contact = m20451Oj.f11539f) != null) {
            String str2 = m20451Oj.f11535b;
            if (str2 == null) {
                str2 = "";
            }
            if (contact.m35520e1(str2)) {
                AbstractC21204d abstractC21204d = this.f40984R;
                s1.z.c.l.d(contact, AnalyticsConstants.CONTACT);
                if (!abstractC21204d.mo10138b(contact)) {
                    return;
                }
            }
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20528ct();
            }
            d.w2(this, (f) null, (j0) null, new C14229w(this, m20451Oj, null), 3, (Object) null);
        }
    }

    /* renamed from: jk */
    public void m20425jk(CallContextMessage callContextMessage) {
        s1.z.c.l.e(callContextMessage, "reason");
        String str = m20451Oj().f11535b;
        if (str != null) {
            AbstractC14273d abstractC14273d = this.f40974E;
            s1.z.c.l.d(str, "it");
            ((C14275e) abstractC14273d).m20301a(str, this.f40968B, callContextMessage);
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null) {
                return;
            }
            abstractC14198h.finish();
        }
    }

    /* renamed from: kk */
    public void m20424kk() {
        C14276e0 c14276e0 = (C14276e0) this.f41009m0;
        c14276e0.f41317a = true;
        c14276e0.f41322f.mo16906Q2(0L);
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.mo20583Cv();
        }
        Contact contact = m20451Oj().f11539f;
        if (contact != null) {
            m20454Mk(contact);
        }
    }

    /* renamed from: lk */
    public void m20423lk(String str, OnDemandMessageSource onDemandMessageSource) {
        s1.z.c.l.e(onDemandMessageSource, "onDemandMessageSource");
        if (m20451Oj().f11535b != null) {
            String str2 = m20451Oj().f11535b;
            String value = this.f40968B.getValue();
            s1.z.c.l.e(value, "analyticsContext");
            InitiateCallHelper.CallContextOption.ShowOnDemand showOnDemand = InitiateCallHelper.CallContextOption.ShowOnDemand.a;
            s1.z.c.l.e(showOnDemand, "callContextOption");
            Contact contact = m20451Oj().f11539f;
            InitiateCallHelper.CallOptions callOptions = new InitiateCallHelper.CallOptions(str2, value, contact != null ? contact.m35489x() : null, null, false, false, null, true, showOnDemand);
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h == null) {
                return;
            }
            abstractC14198h.mo20572Gx(callOptions, onDemandMessageSource, str);
        }
    }

    /* renamed from: mk */
    public void m20422mk(VideoCallerIdAcsMoreOption videoCallerIdAcsMoreOption) {
        s1.z.c.l.e(videoCallerIdAcsMoreOption, "option");
        d.w2(this, (f) null, (j0) null, new C14213h(null), 3, (Object) null);
    }

    /* renamed from: nk */
    public void m20421nk() {
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
        if (abstractC14198h == null || !abstractC14198h.mo20555R0()) {
            m20452Nk(m20451Oj());
            return;
        }
        HistoryEvent m20451Oj = m20451Oj();
        AbstractC14198h abstractC14198h2 = (AbstractC14198h) this.f57683a;
        if (abstractC14198h2 == null) {
            return;
        }
        abstractC14198h2.mo20512m8(new C14182c0(this, m20451Oj));
    }

    /* renamed from: ok */
    public final void m20420ok() {
        if (!(this.f40995f != null)) {
            return;
        }
        m20454Mk(m20451Oj().f11539f);
        m20456Lk();
        mo20464Hk();
        m20416sk();
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x031f, code lost:
        if (r0.m35495t0() == false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onVisibilityChanged(boolean r9) {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.onVisibilityChanged(boolean):void");
    }

    /* renamed from: pk */
    public final void m20419pk() {
        AbstractC15183d abstractC15183d;
        AbstractC14237a abstractC14237a = this.f40980N;
        C14240d c14240d = (C14240d) abstractC14237a;
        String str = c14240d.m20328c().f43306a;
        if (c14240d.f41140b.containsKey(str)) {
            abstractC15183d = c14240d.f41140b.get(str);
        } else {
            AbstractC14241e abstractC14241e = c14240d.f41146h;
            C15222s m20328c = c14240d.m20328c();
            C14233b c14233b = (C14233b) abstractC14241e;
            Objects.requireNonNull(c14233b);
            s1.z.c.l.e(m20328c, "unitConfig");
            abstractC15183d = c14233b.f41125d.m19086g(m20328c, 0, true, c14233b.f41122a);
            if (abstractC15183d != null) {
                c14240d.f41140b.put(str, abstractC15183d);
            } else {
                abstractC15183d = null;
            }
        }
        if (abstractC15183d != null) {
            AbstractC14198h abstractC14198h = (AbstractC14198h) this.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20492tq();
                abstractC14198h.mo20519i6(abstractC15183d, ((C14240d) this.f40980N).m20330a());
            }
            ((C14240d) abstractC14237a).m20324g(true);
        }
    }

    /* renamed from: qk */
    public final void m20418qk(boolean z) {
        Contact contact = m20451Oj().f11539f;
        if (contact != null) {
            C14288j c14288j = this.f40990X;
            s1.z.c.l.d(contact, "it");
            Long m20288a = c14288j.m20288a(contact);
            if (m20288a == null) {
                return;
            }
            ((C19389d) this.f40999h0).m13381a(contact, m20288a.longValue(), z, null, -1, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (s1.f0.r.p(r4) != false) goto L21;
     */
    /* renamed from: rk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20417rk(java.lang.String r4, java.lang.String r5, boolean r6, boolean r7) {
        /*
            r3 = this;
            r0 = r6
            if (r0 != 0) goto L83
            r0 = r7
            if (r0 == 0) goto Lc
            goto L83
        Lc:
            r0 = 0
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L23
            r0 = r5
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L1d
            goto L23
        L1d:
            r0 = 0
            r9 = r0
            goto L26
        L23:
            r0 = 1
            r9 = r0
        L26:
            r0 = r9
            if (r0 != 0) goto L41
            r0 = r3
            PV r0 = r0.f57683a
            e.a.g.a.h r0 = (p193e.p194a.p773g.p774a.AbstractC14198h) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L95
            r0 = r4
            r1 = r5
            r0.setAltName(r1)
            goto L95
        L41:
            r0 = r4
            if (r0 == 0) goto L50
            r0 = r8
            r9 = r0
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L53
        L50:
            r0 = 1
            r9 = r0
        L53:
            r0 = r9
            if (r0 != 0) goto L6e
            r0 = r3
            PV r0 = r0.f57683a
            e.a.g.a.h r0 = (p193e.p194a.p773g.p774a.AbstractC14198h) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L95
            r0 = r5
            r1 = r4
            r0.setAltName(r1)
            goto L95
        L6e:
            r0 = r3
            PV r0 = r0.f57683a
            e.a.g.a.h r0 = (p193e.p194a.p773g.p774a.AbstractC14198h) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L95
            r0 = r4
            r0.mo20574G()
            goto L95
        L83:
            r0 = r3
            PV r0 = r0.f57683a
            e.a.g.a.h r0 = (p193e.p194a.p773g.p774a.AbstractC14198h) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L95
            r0 = r4
            r0.mo20574G()
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20417rk(java.lang.String, java.lang.String, boolean, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01f7  */
    /* renamed from: sk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20416sk() {
        /*
            Method dump skipped, instructions count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20416sk():void");
    }

    /* renamed from: tk */
    public void mo20415tk(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        m20417rk(contact.m35507m(), contact.m35518f0(), contact.m35495t0(), contact.m35511j0() || contact.m35565G0() || contact.m35492v0());
        m20413wk(contact);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03c4  */
    /* renamed from: vk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20414vk(com.truecaller.data.entity.Contact r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 1187
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20414vk(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
        if (s1.f0.r.p(r0) != false) goto L14;
     */
    /* renamed from: wk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20413wk(com.truecaller.data.entity.Contact r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "contact"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            java.lang.String r0 = r0.m35569D()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L22
            r0 = r6
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L1c
            goto L22
        L1c:
            r0 = 0
            r8 = r0
            goto L25
        L22:
            r0 = 1
            r8 = r0
        L25:
            r0 = r8
            if (r0 != 0) goto L88
            r0 = r5
            java.lang.String r0 = r0.m35502p()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L3d
            r0 = r7
            r8 = r0
            r0 = r6
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L40
        L3d:
            r0 = 1
            r8 = r0
        L40:
            r0 = r8
            if (r0 != 0) goto L88
            r0 = r5
            boolean r0 = r0.m35495t0()
            if (r0 != 0) goto L88
            r0 = r5
            boolean r0 = r0.m35511j0()
            if (r0 == 0) goto L56
            goto L88
        L56:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.g.a.h r0 = (p193e.p194a.p773g.p774a.AbstractC14198h) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L9a
            r0 = r5
            java.lang.String r0 = r0.m35569D()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "contact.jobTitle"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r0 = r0.m35502p()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "contact.company"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r9
            r2 = r5
            r0.mo20557Pj(r1, r2)
            goto L9a
        L88:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.g.a.h r0 = (p193e.p194a.p773g.p774a.AbstractC14198h) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L9a
            r0 = r5
            r0.mo20486w5()
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p774a.AbstractC14205m.m20413wk(com.truecaller.data.entity.Contact):void");
    }

    /* renamed from: xk */
    public abstract void mo20412xk(Contact contact);

    /* renamed from: yk */
    public abstract void mo20411yk(Contact contact);

    /* renamed from: zk */
    public abstract void mo20410zk(Contact contact);
}
