package p193e.p194a.p437c.p552i.p561i;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.log.UnmutedException;
import e.q.f.a.f.e;
import e.q.f.a.f.n;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import o3.a;
import p193e.p1681q.p1688b.C25186d;
import p193e.p1681q.p1693d.C25196b;
import p193e.p1681q.p1701f.p1702a.C25222a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p1681q.p1701f.p1702a.p1712f.C25253j;
import p193e.p1681q.p1701f.p1702a.p1713g.AbstractC25262f;
import p193e.p1681q.p1701f.p1702a.p1713g.C25261e;
import p193e.p1681q.p1701f.p1714b.C25263a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.AbstractC9786c;
import p193e.p194a.p437c.p526c.p529e.C9980a;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p548h.AbstractC10252b;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p554b.AbstractC10280e;
import p193e.p194a.p437c.p577o.C10478a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import p193e.p194a.p437c.p580r.p587h.AbstractC10549f;
import p193e.p194a.p437c.p580r.p587h.AbstractC10553h;
import p193e.p194a.p437c.p580r.p587h.AbstractC10563i;
import p193e.p194a.p437c.p580r.p590k.C10646d;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.c.i.i.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/i/b.class */
public final class C10358b extends AbstractC10280e implements AbstractC10357a {

    /* renamed from: e */
    public final AbstractC9691j f30778e;

    /* renamed from: f */
    public final a<e> f30779f;

    /* renamed from: g */
    public final AbstractC10252b f30780g;

    /* renamed from: h */
    public final Context f30781h;

    /* renamed from: i */
    public final f f30782i;

    /* renamed from: j */
    public final AbstractC10542b f30783j;

    /* renamed from: k */
    public final AbstractC10821g f30784k;

    /* renamed from: e.a.c.i.i.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/i/b$a.class */
    public static final class C10359a extends AbstractC25262f {
        @Override // p193e.p1681q.p1701f.p1702a.p1713g.AbstractC25262f
        /* renamed from: a */
        public void mo3752a(Exception exc) {
            if (exc != null) {
                C10480a.m26061I1(exc);
            }
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.parser.ParseManagerImpl$parseOtpByParser$passesBaseFilter$1", f = "ParseManager.kt", l = {131}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.i.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/i/b$b.class */
    public static final class C10360b extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f30785e;

        /* renamed from: g */
        public final /* synthetic */ c0 f30787g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10360b(c0 c0Var, d dVar) {
            super(2, dVar);
            C10358b.this = r5;
            this.f30787g = c0Var;
        }

        /* renamed from: i */
        public final d<s> m26288i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10360b(this.f30787g, dVar);
        }

        /* renamed from: k */
        public final Object m26287k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10360b(this.f30787g, dVar).m26286s(s.a);
        }

        /* renamed from: s */
        public final Object m26286s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30785e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10358b c10358b = C10358b.this;
                AbstractC10821g abstractC10821g = c10358b.f30784k;
                ParsedDataObject mo25789d = c10358b.f30783j.mo25789d((AbstractC10549f.C10551b) this.f30787g.a);
                this.f30785e = 1;
                Object mo25582g = abstractC10821g.mo25582g(mo25789d, true, this);
                obj = mo25582g;
                if (mo25582g == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C10358b(AbstractC9691j abstractC9691j, a<e> aVar, AbstractC10252b abstractC10252b, Context context, @Named("CPU") f fVar, AbstractC10542b abstractC10542b, AbstractC10821g abstractC10821g) {
        super(fVar);
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(aVar, "malanaSeed");
        l.e(abstractC10252b, "contactSearcher");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "asyncContext");
        l.e(abstractC10542b, "insightsBinder");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        this.f30778e = abstractC9691j;
        this.f30779f = aVar;
        this.f30780g = abstractC10252b;
        this.f30781h = context;
        this.f30782i = fVar;
        this.f30783j = abstractC10542b;
        this.f30784k = abstractC10821g;
    }

    @Override // p193e.p194a.p437c.p552i.p554b.AbstractC10280e
    /* renamed from: B */
    public Object mo25566B(d<? super s> dVar) {
        e eVar = (e) this.f30779f.get();
        C10359a c10359a = new C10359a();
        if (C25261e.f70681a != null) {
            C25261e.f70681a = c10359a;
        }
        C25263a.f70682a = eVar;
        if (C25186d.C25188b.f70451a == null) {
            C25186d.C25188b.f70451a = new C25186d(eVar);
        }
        C25263a.f70683b = new C25222a(C25263a.f70682a);
        return s.a;
    }

    /* renamed from: C */
    public final AbstractC10549f.C10551b m26297C(C10266c c10266c, String str, Throwable th) {
        CoroutineExceptionHandler coroutineExceptionHandler = C10478a.f31165a;
        l.e(th, "error");
        C10263b.f30414d.m26508b(th, th.getLocalizedMessage());
        return new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10561h.f31489a, str, new AbstractC10563i.C10564a(th), null, null, 48);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: D */
    public final AbstractC10549f.C10551b m26296D(C10266c c10266c, String str, C25253j c25253j) {
        AbstractC10549f.C10551b c10551b;
        if (c25253j != null) {
            String str2 = c25253j.f70638b;
            if (str2 != null) {
                switch (str2.hashCode()) {
                    case -1455517772:
                        if (str2.equals("GRM_OFFERS")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10559f.f31487a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case -1301422793:
                        if (str2.equals("GRM_TRAVEL")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10562i.f31490a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case -1296211247:
                        if (str2.equals("GRM_DELIVERY")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10556c.f31484a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case -194258755:
                        if (str2.equals("GRM_EVENT")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10557d.f31485a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case -186141357:
                        if (str2.equals("GRM_NOTIF")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10558e.f31486a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case 1009862158:
                        if (str2.equals("GRM_OTP")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10560g.f31488a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case 1240550297:
                        if (str2.equals("GRM_BANK")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10554a.f31482a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                    case 1240557924:
                        if (str2.equals("GRM_BILL")) {
                            c10551b = new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10555b.f31483a, str, new AbstractC10563i.C10565b(c25253j), null, null, 48);
                            break;
                        }
                        break;
                }
                return c10551b;
            }
            c10551b = m26297C(c10266c, str, new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.PARSER_UNKNOWN_GRM_EXCEPTION));
            return c10551b;
        }
        return new AbstractC10549f.C10551b(c10266c, AbstractC10553h.C10561h.f31489a, str, new AbstractC10563i.C10564a(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.PARSE_FAILURE)), null, null, 48);
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: e */
    public boolean mo26295e(AbstractC10549f abstractC10549f) {
        l.e(abstractC10549f, "parseResponse");
        boolean z = false;
        if (abstractC10549f instanceof AbstractC10549f.C10551b) {
            AbstractC10553h abstractC10553h = ((AbstractC10549f.C10551b) abstractC10549f).f31477b;
            z = l.a(abstractC10553h, AbstractC10553h.C10561h.f31489a) ? false : !l.a(abstractC10553h, AbstractC10553h.C10559f.f31487a);
        }
        return z;
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: g */
    public C10646d mo26294g(C10266c c10266c) {
        l.e(c10266c, "smsMessage");
        c0 c0Var = new c0();
        AbstractC10549f.C10551b mo26293o = mo26293o(c10266c);
        c0Var.a = mo26293o;
        C10646d c10646d = null;
        if (l.a(mo26293o.f31477b, AbstractC10553h.C10560g.f31488a)) {
            boolean booleanValue = ((Boolean) s1.a.a.a.v0.f.d.c3((f) null, new C10360b(c0Var, null), 1, (Object) null)).booleanValue();
            AbstractC10563i abstractC10563i = ((AbstractC10549f.C10551b) c0Var.a).f31479d;
            Objects.requireNonNull(abstractC10563i, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.SmsDetailedResponseType.SmsDetailedResponse");
            n nVar = ((AbstractC10563i.C10565b) abstractC10563i).f31492a.f70639c;
            c10646d = null;
            if (booleanValue) {
                n nVar2 = nVar;
                String str = (String) nVar2.b.get("otp_num");
                l.d(str, "valMap.get(OTP_KEY)");
                c10646d = new C10646d(str, (String) nVar2.b.get("otp_type"));
            }
        }
        return c10646d;
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: o */
    public AbstractC10549f.C10551b mo26293o(C10266c c10266c) {
        AbstractC10549f.C10551b c10551b;
        l.e(c10266c, "smsMessage");
        m26482A();
        String m26800d = C10031q.f29863b.m26800d(c10266c.f30433b);
        try {
            c10551b = m26296D(c10266c, m26800d, C25263a.m3749c(c10266c.f30434c, m26800d, c10266c.f30435d, C25263a.m3751a()));
        } catch (Throwable th) {
            c10551b = m26297C(c10266c, m26800d, th);
        }
        return c10551b;
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: p */
    public AbstractC10549f mo26292p(C9980a c9980a, C10266c c10266c) {
        AbstractC10549f abstractC10549f;
        l.e(c9980a, "$this$parseInTransaction");
        l.e(c10266c, "smsMessage");
        if (c10266c.f30437f == 2 || !C10031q.m26801c(c10266c.f30433b)) {
            AbstractC10549f.C10551b mo26293o = mo26293o(c10266c);
            if (this.f30778e.mo27266b()) {
                c9980a.f29750a.add(new AbstractC9786c.C9787a(mo26293o));
            }
            abstractC10549f = mo26293o;
        } else {
            abstractC10549f = AbstractC10549f.C10550a.f31475a;
        }
        return abstractC10549f;
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: r */
    public boolean mo26291r(AbstractC10549f abstractC10549f) {
        l.e(abstractC10549f, "parseResponse");
        return (abstractC10549f instanceof AbstractC10549f.C10551b) && l.a(((AbstractC10549f.C10551b) abstractC10549f).f31477b, AbstractC10553h.C10559f.f31487a);
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: y */
    public String mo26290y(String str) {
        String str2;
        l.e(str, "smsMessage");
        try {
            str2 = C25196b.f70457a.m4100k(str);
        } catch (Exception e) {
            str2 = null;
        }
        return str2;
    }

    @Override // p193e.p194a.p437c.p552i.p561i.AbstractC10357a
    /* renamed from: z */
    public AbstractC10549f mo26289z(C10266c c10266c) {
        AbstractC10549f abstractC10549f;
        AbstractC10549f abstractC10549f2 = AbstractC10549f.C10550a.f31475a;
        l.e(c10266c, "smsMessage");
        if (C10031q.m26801c(c10266c.f30433b)) {
            abstractC10549f = abstractC10549f2;
            if (!this.f30780g.mo10140a(this.f30781h, c10266c.f30433b)) {
                AbstractC10549f.C10551b mo26293o = mo26293o(c10266c);
                abstractC10549f = abstractC10549f2;
                if (l.a(mo26293o.f31477b, AbstractC10553h.C10560g.f31488a)) {
                    abstractC10549f = mo26293o;
                }
            }
        } else {
            abstractC10549f = mo26293o(c10266c);
        }
        return abstractC10549f;
    }
}
