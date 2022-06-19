package p193e.p194a.p673d0.p675b;

import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callerid.CallerIdPerformanceTracker;
import com.truecaller.callerid.CallerIdService;
import com.truecaller.callerid.callstate.TruecallerCallScreeningService;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p673d0.p675b.AbstractC12486i;
import p193e.p194a.p804h.p830o0.AbstractC14715g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d0.b.k */
/* loaded from: classes6-dex2jar.jar:e/a/d0/b/k.class */
public final class C12492k implements AbstractC12491j {

    /* renamed from: a */
    public final AbstractC12481d f36501a;

    /* renamed from: b */
    public final AbstractC12478b f36502b;

    /* renamed from: c */
    public final AbstractC19219a0 f36503c;

    /* renamed from: d */
    public final AbstractC19222c f36504d;

    /* renamed from: e */
    public final AbstractC14715g f36505e;

    /* renamed from: f */
    public final AbstractC8621z f36506f;

    /* renamed from: g */
    public final CallerIdPerformanceTracker f36507g;

    /* renamed from: h */
    public final AbstractC19230g f36508h;

    /* renamed from: i */
    public final TelephonyManager f36509i;

    /* renamed from: j */
    public final AbstractC19462a f36510j;

    /* renamed from: k */
    public final f f36511k;

    @e(c = "com.truecaller.callerid.callstate.PhoneStateHandlerImpl$onOutgoingCall$1", f = "PhoneStateHandler.kt", l = {65}, m = "invokeSuspend")
    /* renamed from: e.a.d0.b.k$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/k$a.class */
    public static final class C12493a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36512e;

        /* renamed from: g */
        public final /* synthetic */ Intent f36514g;

        /* renamed from: h */
        public final /* synthetic */ Context f36515h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12493a(Intent intent, Context context, d dVar) {
            super(2, dVar);
            C12492k.this = r5;
            this.f36514g = intent;
            this.f36515h = context;
        }

        /* renamed from: i */
        public final d<s> m22936i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12493a(this.f36514g, this.f36515h, dVar);
        }

        /* renamed from: k */
        public final Object m22935k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12493a(this.f36514g, this.f36515h, dVar).m22934s(s.a);
        }

        /* renamed from: s */
        public final Object m22934s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f36512e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12492k c12492k = C12492k.this;
                AbstractC12481d abstractC12481d = c12492k.f36501a;
                Intent intent = this.f36514g;
                AbstractC19222c abstractC19222c = c12492k.f36504d;
                l.e(intent, "intent");
                l.e(abstractC19222c, "clock");
                AbstractC12486i.C12489c c12489c = new AbstractC12486i.C12489c(intent.getStringExtra("android.intent.extra.PHONE_NUMBER"), abstractC19222c.mo13819c());
                this.f36512e = 1;
                Object mo22941a = abstractC12481d.mo22941a(c12489c, this);
                obj = mo22941a;
                if (mo22941a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC12486i abstractC12486i = (AbstractC12486i) obj;
            if (abstractC12486i != null) {
                CallerIdService.m35778m(this.f36515h, abstractC12486i.mo22939a());
            }
            return sVar;
        }
    }

    /* renamed from: e.a.d0.b.k$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/k$b.class */
    public static final class C12494b extends m implements s1.z.b.a<String> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC12486i f36517c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12494b(AbstractC12486i abstractC12486i) {
            super(0);
            C12492k.this = r4;
            this.f36517c = abstractC12486i;
        }

        public Object invoke() {
            String str = this.f36517c.f36495a;
            return str != null ? C12492k.this.f36506f.mo28181j(str) : null;
        }
    }

    @e(c = "com.truecaller.callerid.callstate.PhoneStateHandlerImpl$onPhoneStateChanged$3", f = "PhoneStateHandler.kt", l = {120, 123}, m = "invokeSuspend")
    /* renamed from: e.a.d0.b.k$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/b/k$c.class */
    public static final class C12495c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f36518e;

        /* renamed from: f */
        public int f36519f;

        /* renamed from: h */
        public final /* synthetic */ Context f36521h;

        /* renamed from: i */
        public final /* synthetic */ AbstractC12486i f36522i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12495c(Context context, AbstractC12486i abstractC12486i, d dVar) {
            super(2, dVar);
            C12492k.this = r5;
            this.f36521h = context;
            this.f36522i = abstractC12486i;
        }

        /* renamed from: i */
        public final d<s> m22933i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12495c(this.f36521h, this.f36522i, dVar);
        }

        /* renamed from: k */
        public final Object m22932k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12495c(this.f36521h, this.f36522i, dVar).m22931s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00e2  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m22931s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 235
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p673d0.p675b.C12492k.C12495c.m22931s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C12492k(AbstractC12481d abstractC12481d, AbstractC12478b abstractC12478b, AbstractC19219a0 abstractC19219a0, AbstractC19222c abstractC19222c, AbstractC14715g abstractC14715g, AbstractC8621z abstractC8621z, CallerIdPerformanceTracker callerIdPerformanceTracker, AbstractC19230g abstractC19230g, TelephonyManager telephonyManager, AbstractC19462a abstractC19462a, @Named("UI") f fVar) {
        l.e(abstractC12481d, "callProcessor");
        l.e(abstractC12478b, "callBlocker");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC14715g, "callAlertUtils");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(callerIdPerformanceTracker, "perfTracker");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(telephonyManager, "telephonyManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(fVar, "uiContext");
        this.f36501a = abstractC12481d;
        this.f36502b = abstractC12478b;
        this.f36503c = abstractC19219a0;
        this.f36504d = abstractC19222c;
        this.f36505e = abstractC14715g;
        this.f36506f = abstractC8621z;
        this.f36507g = callerIdPerformanceTracker;
        this.f36508h = abstractC19230g;
        this.f36509i = telephonyManager;
        this.f36510j = abstractC19462a;
        this.f36511k = fVar;
    }

    @Override // p193e.p194a.p673d0.p675b.AbstractC12491j
    /* renamed from: a */
    public void mo22938a(Context context, Intent intent) {
        AbstractC12486i.C12487a c12487a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        if (!this.f36503c.mo13825h("android.permission.READ_PHONE_STATE", "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS")) {
            return;
        }
        AbstractC19222c abstractC19222c = this.f36504d;
        l.e(intent, "intent");
        l.e(abstractC19222c, "clock");
        String stringExtra = intent.getStringExtra("state");
        String stringExtra2 = intent.getStringExtra("incoming_number");
        if (l.a(stringExtra, TelephonyManager.EXTRA_STATE_IDLE)) {
            c12487a = new AbstractC12486i.C12487a(stringExtra2, abstractC19222c.mo13819c());
        } else if (l.a(stringExtra, TelephonyManager.EXTRA_STATE_RINGING)) {
            c12487a = new AbstractC12486i.C12490d(stringExtra2, abstractC19222c.mo13819c(), null, null, null, 28);
        } else if (l.a(stringExtra, TelephonyManager.EXTRA_STATE_OFFHOOK)) {
            c12487a = new AbstractC12486i.C12488b(stringExtra2, abstractC19222c.mo13819c(), null, 4);
        } else {
            AssertionUtil.reportWeirdnessButNeverCrash("Unknown state " + stringExtra);
            c12487a = null;
        }
        if (c12487a == null) {
            return;
        }
        String str = "Phone state changed from broadcast: " + c12487a;
        int callState = this.f36509i.getCallState();
        if (!(c12487a instanceof AbstractC12486i.C12487a) && callState == 0) {
            AbstractC19462a abstractC19462a = this.f36510j;
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("PhoneStateDoesntMatch");
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…DoesntMatch.NAME).build()");
            abstractC19462a.mo13275a(build);
            return;
        }
        boolean z = c12487a instanceof AbstractC12486i.C12490d;
        boolean z2 = false;
        if (z) {
            if (this.f36508h.mo13780q() < 24 ? false : this.f36508h.mo13780q() <= 29 ? this.f36508h.mo13791f() : TruecallerCallScreeningService.f10604h) {
                return;
            }
        }
        if (z) {
            String str2 = c12487a.f36495a;
            if (str2 == null || r.p(str2)) {
                z2 = true;
            }
            if (z2 && this.f36508h.mo13780q() >= 24 && this.f36508h.mo13791f()) {
                return;
            }
        }
        String str3 = (String) this.f36507g.mo22908c(CallerIdPerformanceTracker.TraceType.PHONESTATEHANDLER_NORMALIZATION, new C12494b(c12487a));
        if (str3 != null) {
            this.f36505e.mo19738a(str3);
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f36511k, (j0) null, new C12495c(context, c12487a, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p673d0.p675b.AbstractC12491j
    /* renamed from: b */
    public void mo22937b(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        if (!this.f36503c.mo13825h("android.permission.READ_PHONE_STATE", "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.PROCESS_OUTGOING_CALLS")) {
            return;
        }
        Objects.requireNonNull((AbstractApplicationC8442a) context.getApplicationContext());
        s1.a.a.a.v0.f.d.w2(h1.a, this.f36511k, (j0) null, new C12493a(intent, context, null), 2, (Object) null);
    }
}
