package p193e.p194a.p673d0.p675b;

import android.content.Context;
import android.telecom.TelecomManager;
import com.amazon.device.ads.DtbConstants;
import com.razorpay.AnalyticsConstants;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.aftercall.PromotionType;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.callerid.CallerIdPerformanceTracker;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.settings.CallingSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Inject;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1114o5.AbstractC19128x1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p673d0.p675b.AbstractC12486i;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p837h0.AbstractC14835j;
import q3.a.e1;
import q3.a.g1;
import q3.a.i0;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d0.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/d0/b/a.class */
public final class C12474a implements AbstractC12481d {

    /* renamed from: a */
    public final LinkedList<AbstractC12486i> f36454a = new LinkedList<>();

    /* renamed from: b */
    public final Stack<String> f36455b = new Stack<>();

    /* renamed from: c */
    public final boolean f36456c;

    /* renamed from: d */
    public final TelecomManager f36457d;

    /* renamed from: e */
    public final e1 f36458e;

    /* renamed from: f */
    public final AbstractC19230g f36459f;

    /* renamed from: g */
    public final CallingSettings f36460g;

    /* renamed from: h */
    public final C8601l0 f36461h;

    /* renamed from: i */
    public final AbstractC14835j f36462i;

    /* renamed from: j */
    public final AbstractC13497p f36463j;

    /* renamed from: k */
    public final AbstractC8432l f36464k;

    /* renamed from: l */
    public final AbstractC8621z f36465l;

    /* renamed from: m */
    public final AbstractC19128x1 f36466m;

    /* renamed from: n */
    public final AbstractC19222c f36467n;

    /* renamed from: o */
    public final AbstractC19219a0 f36468o;

    /* renamed from: p */
    public final AbstractC19854f<AbstractC17348c> f36469p;

    /* renamed from: q */
    public final AbstractC11705f f36470q;

    /* renamed from: r */
    public final CallerIdPerformanceTracker f36471r;

    /* renamed from: s */
    public final Context f36472s;

    @e(c = "com.truecaller.callerid.callstate.CallProcessorImpl$handlePhoneStateChanged$2", f = "CallProcessor.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d0.b.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/a$a.class */
    public static final class C12475a extends i implements p<i0, d<? super AbstractC12486i>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC12486i f36474f;

        /* renamed from: g */
        public final /* synthetic */ Context f36475g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12475a(AbstractC12486i abstractC12486i, Context context, d dVar) {
            super(2, dVar);
            C12474a.this = r5;
            this.f36474f = abstractC12486i;
            this.f36475g = context;
        }

        /* renamed from: i */
        public final d<s> m22949i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12475a(this.f36474f, this.f36475g, dVar);
        }

        /* renamed from: k */
        public final Object m22948k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12475a(this.f36474f, this.f36475g, dVar).m22947s(s.a);
        }

        /* renamed from: s */
        public final Object m22947s(Object obj) {
            String str;
            boolean z;
            String str2;
            C25225a.m3932a3(obj);
            String str3 = "Receiver received call state change to " + this.f36474f;
            AbstractC12486i.C12490d c12490d = null;
            if (!((Boolean) C12474a.this.f36471r.mo22908c(CallerIdPerformanceTracker.TraceType.CPROC_STATECHGDEDUPLICATION, new a(1, this))).booleanValue() && !((Boolean) C12474a.this.f36471r.mo22908c(CallerIdPerformanceTracker.TraceType.CPROC_ISSYSTEMAWAREVOIPCALL, new a(0, this))).booleanValue()) {
                String str4 = this.f36474f.f36495a;
                if (str4 == null || r.p(str4)) {
                    C12474a c12474a = C12474a.this;
                    AbstractC12486i abstractC12486i = this.f36474f;
                    if (!c12474a.f36455b.isEmpty()) {
                        if (abstractC12486i instanceof AbstractC12486i.C12488b) {
                            abstractC12486i.f36495a = c12474a.f36455b.peek();
                        } else if (abstractC12486i instanceof AbstractC12486i.C12487a) {
                            abstractC12486i.f36495a = c12474a.f36455b.pop();
                        }
                    }
                } else if (C12474a.m22951d(C12474a.this, str4) && !C12474a.this.f36456c) {
                    return null;
                } else {
                    AbstractC12486i abstractC12486i2 = this.f36474f;
                    if (abstractC12486i2 instanceof AbstractC12486i.C12490d) {
                        Objects.requireNonNull((AbstractApplicationC8442a) this.f36475g.getApplicationContext());
                        C12474a.this.f36455b.push(this.f36474f.f36495a);
                    } else if ((abstractC12486i2 instanceof AbstractC12486i.C12487a) && !C12474a.this.f36455b.isEmpty()) {
                        C12474a.this.f36455b.pop();
                    }
                }
                C12474a c12474a2 = C12474a.this;
                AbstractC12486i abstractC12486i3 = this.f36474f;
                Objects.requireNonNull(c12474a2);
                if ((abstractC12486i3 instanceof AbstractC12486i.C12490d) && (str2 = abstractC12486i3.f36495a) != null) {
                    c12474a2.m22950e(str2);
                }
                AbstractC12486i abstractC12486i4 = this.f36474f;
                if (abstractC12486i4 instanceof AbstractC12486i.C12490d) {
                    C12474a c12474a3 = C12474a.this;
                    FilterMatch filterMatch = !c12474a3.f36464k.mo28580d() ? null : (FilterMatch) c12474a3.f36471r.mo22908c(CallerIdPerformanceTracker.TraceType.CPROC_GETFILTER, new C12482e(c12474a3, this.f36475g, abstractC12486i4.f36495a));
                    Integer num = null;
                    if (!C12474a.this.f36460g.getBoolean("truecaller.call_in_progress")) {
                        Objects.requireNonNull(C12474a.this);
                        num = null;
                        if (filterMatch != null && filterMatch.f10453b == FilterAction.FILTER_BLACKLISTED) {
                            C12474a c12474a4 = C12474a.this;
                            boolean z2 = false;
                            if (c12474a4.f36460g.mo8949z() == CallingSettings.BlockMethod.Reject) {
                                z2 = true;
                            }
                            num = new Integer((!z2 || !c12474a4.f36468o.mo13825h("android.permission.CALL_PHONE")) ? 3 : 1);
                        }
                    }
                    int m22952c = C12474a.m22952c(C12474a.this, 1);
                    AbstractC12486i abstractC12486i5 = this.f36474f;
                    c12490d = new AbstractC12486i.C12490d(abstractC12486i5.f36495a, abstractC12486i5.f36496b, new Integer(m22952c), num, filterMatch);
                } else if (abstractC12486i4 instanceof AbstractC12486i.C12488b) {
                    C12474a.this.f36460g.putBoolean("truecaller.call_in_progress", true);
                    String str5 = this.f36474f.f36495a;
                    if (str5 != null) {
                        C12474a c12474a5 = C12474a.this;
                        Objects.requireNonNull(c12474a5);
                        if (c12474a5.f36455b.contains(str5)) {
                            z = true;
                        } else {
                            Stack<String> stack = c12474a5.f36455b;
                            ArrayList arrayList = new ArrayList(C25225a.m4004J(stack, 10));
                            for (String str6 : stack) {
                                AbstractC8621z abstractC8621z = c12474a5.f36465l;
                                l.d(str6, "it");
                                arrayList.add(abstractC8621z.mo28181j(str6));
                            }
                            z = arrayList.contains(c12474a5.f36465l.mo28181j(str5));
                        }
                        if (!z) {
                            AbstractC12486i abstractC12486i6 = this.f36474f;
                            c12490d = new AbstractC12486i.C12489c(abstractC12486i6.f36495a, abstractC12486i6.f36496b);
                        }
                    }
                    int m22952c2 = C12474a.m22952c(C12474a.this, 2);
                    AbstractC12486i abstractC12486i7 = this.f36474f;
                    c12490d = new AbstractC12486i.C12488b(abstractC12486i7.f36495a, abstractC12486i7.f36496b, new Integer(m22952c2));
                } else if (abstractC12486i4 instanceof AbstractC12486i.C12487a) {
                    C12474a.this.f36460g.putBoolean("truecaller.call_in_progress", false);
                    C12474a c12474a6 = C12474a.this;
                    boolean z3 = false;
                    if (c12474a6.f36454a.size() > 0) {
                        LinkedList<AbstractC12486i> linkedList = c12474a6.f36454a;
                        z3 = false;
                        if (linkedList.get(linkedList.size() - 1) instanceof AbstractC12486i.C12490d) {
                            z3 = true;
                        }
                    }
                    if (z3) {
                        C12474a c12474a7 = C12474a.this;
                        Context context = this.f36475g;
                        if (!c12474a7.f36464k.mo28580d() && !c12474a7.f36466m.mo14081b()) {
                            AfterCallPromotionActivity.va(context, PromotionType.SIGN_UP);
                        }
                    }
                    c12490d = this.f36474f;
                }
                if (c12490d != null) {
                    C12474a.this.f36454a.add(c12490d);
                }
                StringBuilder m8728C = C22128a.m8728C("Current state: \n");
                m8728C.append(C12474a.this.f36455b);
                m8728C.append(" \n");
                m8728C.append(C12474a.this.f36454a);
                m8728C.toString();
                C12474a c12474a8 = C12474a.this;
                Objects.requireNonNull(c12474a8);
                if (c12490d != null && (c12490d instanceof AbstractC12486i.C12487a) && (((str = c12490d.f36495a) == null || !r.p(str)) && C26467a.m1801a(c12474a8.f36472s, "android.permission.READ_PHONE_STATE") == 0)) {
                    try {
                        if (!c12474a8.f36457d.isInCall()) {
                            String str7 = "Clearing state: \n" + c12474a8.f36455b + " \n" + c12474a8.f36454a;
                            c12474a8.f36455b.clear();
                            c12474a8.f36454a.clear();
                        }
                    } catch (SecurityException e) {
                        String str8 = "Clearing state has failed with: " + e;
                    }
                }
                return c12490d;
            }
            return null;
        }
    }

    @e(c = "com.truecaller.callerid.callstate.CallProcessorImpl$handleOutgoingCall$2", f = "CallProcessor.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d0.b.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/a$b.class */
    public static final class C12476b extends i implements p<i0, d<? super AbstractC12486i.C12489c>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC12486i.C12489c f36477f;

        /* renamed from: e.a.d0.b.a$b$a */
        /* loaded from: classes6-dex2jar.jar:e/a/d0/b/a$b$a.class */
        public static final class C12477a extends m implements a<Boolean> {

            /* renamed from: c */
            public final /* synthetic */ String f36479c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12477a(String str) {
                super(0);
                C12476b.this = r4;
                this.f36479c = str;
            }

            public Object invoke() {
                return Boolean.valueOf(C12474a.this.f36470q.mo24184i(this.f36479c));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12476b(AbstractC12486i.C12489c c12489c, d dVar) {
            super(2, dVar);
            C12474a.this = r5;
            this.f36477f = c12489c;
        }

        /* renamed from: i */
        public final d<s> m22946i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12476b(this.f36477f, dVar);
        }

        /* renamed from: k */
        public final Object m22945k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12476b(this.f36477f, dVar).m22944s(s.a);
        }

        /* renamed from: s */
        public final Object m22944s(Object obj) {
            C25225a.m3932a3(obj);
            String str = this.f36477f.f36495a;
            AbstractC12486i.C12489c c12489c = null;
            if (str != null) {
                if (C12474a.m22951d(C12474a.this, str)) {
                    c12489c = null;
                } else if (((Boolean) C12474a.this.f36471r.mo22908c(CallerIdPerformanceTracker.TraceType.CPROC_ISSYSTEMAWAREVOIPCALL, new C12477a(str))).booleanValue()) {
                    return null;
                } else {
                    C12474a c12474a = C12474a.this;
                    String mo28181j = c12474a.f36465l.mo28181j(str);
                    if (mo28181j != null) {
                        c12474a.f36469p.mo11854a().mo16250B(mo28181j);
                    }
                    C12474a.this.f36455b.add(str);
                    C12474a.this.m22950e(str);
                    C12474a c12474a2 = C12474a.this;
                    boolean m28259b = c12474a2.f36461h.m28259b(c12474a2.f36460g.getLong("featureOutgoingSearch", 0L), DtbConstants.SIS_CHECKIN_INTERVAL);
                    c12489c = null;
                    if (C19231g0.m13812E(str)) {
                        c12489c = null;
                        if (m28259b) {
                            c12489c = new AbstractC12486i.C12489c(str, C12474a.this.f36467n.mo13819c());
                        }
                    }
                }
            }
            return c12489c;
        }
    }

    @Inject
    public C12474a(AbstractC19230g abstractC19230g, CallingSettings callingSettings, C8601l0 c8601l0, AbstractC14835j abstractC14835j, AbstractC13497p abstractC13497p, AbstractC8432l abstractC8432l, AbstractC8621z abstractC8621z, AbstractC19128x1 abstractC19128x1, AbstractC19222c abstractC19222c, AbstractC19219a0 abstractC19219a0, CallRecordingManager callRecordingManager, AbstractC19854f<AbstractC17348c> abstractC19854f, AbstractC11705f abstractC11705f, CallerIdPerformanceTracker callerIdPerformanceTracker, Context context) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(callingSettings, "callingSettings");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC14835j, "filterManager");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC8432l, "tcAccountManager");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC19128x1, "usageChecker");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC19854f, "historyManager");
        l.e(abstractC11705f, "voip");
        l.e(callerIdPerformanceTracker, "perfTracker");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f36459f = abstractC19230g;
        this.f36460g = callingSettings;
        this.f36461h = c8601l0;
        this.f36462i = abstractC14835j;
        this.f36463j = abstractC13497p;
        this.f36464k = abstractC8432l;
        this.f36465l = abstractC8621z;
        this.f36466m = abstractC19128x1;
        this.f36467n = abstractC19222c;
        this.f36468o = abstractC19219a0;
        this.f36469p = abstractC19854f;
        this.f36470q = abstractC11705f;
        this.f36471r = callerIdPerformanceTracker;
        this.f36472s = context;
        this.f36456c = callRecordingManager.mo17577v();
        Object systemService = context.getSystemService("telecom");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telecom.TelecomManager");
        this.f36457d = (TelecomManager) systemService;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        l.d(newSingleThreadExecutor, "Executors.newSingleThreadExecutor()");
        this.f36458e = new g1(newSingleThreadExecutor);
    }

    /* renamed from: c */
    public static final int m22952c(C12474a c12474a, int i) {
        return ((Boolean) c12474a.f36471r.mo22908c(CallerIdPerformanceTracker.TraceType.CPROC_HASMULTISIM, new C12484g(c12474a))).booleanValue() ? ((Number) c12474a.f36471r.mo22908c(CallerIdPerformanceTracker.TraceType.CPROC_GETSIMINDEX, new C12483f(c12474a, i))).intValue() : -1;
    }

    /* renamed from: d */
    public static final boolean m22951d(C12474a c12474a, String str) {
        Objects.requireNonNull(c12474a);
        boolean z = false;
        if ((str != null ? v.G(str, '#', 0, false, 6) : -1) >= 0) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p673d0.p675b.AbstractC12481d
    /* renamed from: a */
    public Object mo22941a(AbstractC12486i.C12489c c12489c, d<? super AbstractC12486i> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f36458e, new C12476b(c12489c, null), dVar);
    }

    @Override // p193e.p194a.p673d0.p675b.AbstractC12481d
    /* renamed from: b */
    public Object mo22940b(Context context, AbstractC12486i abstractC12486i, d<? super AbstractC12486i> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f36458e, new C12475a(abstractC12486i, context, null), dVar);
    }

    /* renamed from: e */
    public final void m22950e(String str) {
        Iterator<AbstractC12486i> it = this.f36454a.iterator();
        l.d(it, "lastStates.iterator()");
        while (it.hasNext()) {
            AbstractC12486i next = it.next();
            l.d(next, "it.next()");
            if (l.a(str, next.f36495a)) {
                it.remove();
            }
        }
    }
}
