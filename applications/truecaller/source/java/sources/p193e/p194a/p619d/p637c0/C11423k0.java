package p193e.p194a.p619d.p637c0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsContext;
import com.truecaller.voip.util.VoipAnalyticsFailedCallAction;
import com.truecaller.voip.util.VoipAnalyticsInCallUiAction;
import com.truecaller.voip.util.VoipAnalyticsNotificationAction;
import com.truecaller.voip.util.VoipAnalyticsState;
import com.truecaller.voip.util.VoipAnalyticsStateReason;
import com.truecaller.voip.util.VoipCleverTapAction;
import com.truecaller.voip.util.VoipCleverTapEvents;
import com.truecaller.voip.util.VoipInvitationFailureReason;
import com.truecaller.voip.util.VoipSearchDirection;
import e.m.d.y.n;
import java.util.HashMap;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1050l5.p1051a.C17810x2;
import p193e.p194a.p1050l5.p1051a.C17825y2;
import p193e.p194a.p1050l5.p1051a.C17840z2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import q3.a.i0;
import q3.a.j0;
import q3.a.w2.z;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c0.k0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/k0.class */
public final class C11423k0 implements AbstractC11405f0, i0 {

    /* renamed from: a */
    public final f f33546a;

    /* renamed from: b */
    public final AbstractC19462a f33547b;

    /* renamed from: c */
    public final a<AbstractC19854f<AbstractC19463a0>> f33548c;

    /* renamed from: d */
    public final AbstractC11421j1 f33549d;

    /* renamed from: e */
    public final AbstractC11706g f33550e;

    /* renamed from: f */
    public final AbstractC11558b f33551f;

    /* renamed from: g */
    public final CleverTapManager f33552g;

    @e(c = "com.truecaller.voip.util.VoipAnalyticsUtilImpl$logCallAttempt$1", f = "VoipAnalyticsUtilImpl.kt", l = {229, 234}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.k0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/k0$a.class */
    public static final class C11424a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f33553e;

        /* renamed from: f */
        public int f33554f;

        /* renamed from: h */
        public final /* synthetic */ String f33556h;

        /* renamed from: i */
        public final /* synthetic */ String f33557i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11424a(String str, String str2, d dVar) {
            super(2, dVar);
            C11423k0.this = r5;
            this.f33556h = str;
            this.f33557i = str2;
        }

        /* renamed from: i */
        public final d<s> m24705i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11424a(this.f33556h, this.f33557i, dVar);
        }

        /* renamed from: k */
        public final Object m24704k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11424a(this.f33556h, this.f33557i, dVar).m24703s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00cd, code lost:
            if (((java.lang.Boolean) r12).booleanValue() == false) goto L32;
         */
        /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0123  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24703s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 383
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11423k0.C11424a.m24703s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d.c0.k0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/k0$b.class */
    public static final class C11425b extends m implements s1.z.b.a<C11395e0> {

        /* renamed from: b */
        public final /* synthetic */ c0 f33558b;

        /* renamed from: c */
        public final /* synthetic */ z f33559c;

        /* renamed from: d */
        public final /* synthetic */ VoipAnalyticsCallDirection f33560d;

        /* renamed from: e */
        public final /* synthetic */ String f33561e;

        /* renamed from: f */
        public final /* synthetic */ s1.z.b.a f33562f;

        /* renamed from: g */
        public final /* synthetic */ s1.z.b.a f33563g;

        /* renamed from: h */
        public final /* synthetic */ String f33564h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11425b(c0 c0Var, z zVar, VoipAnalyticsCallDirection voipAnalyticsCallDirection, String str, s1.z.b.a aVar, s1.z.b.a aVar2, String str2) {
            super(0);
            this.f33558b = c0Var;
            this.f33559c = zVar;
            this.f33560d = voipAnalyticsCallDirection;
            this.f33561e = str;
            this.f33562f = aVar;
            this.f33563g = aVar2;
            this.f33564h = str2;
        }

        public Object invoke() {
            c0 c0Var = this.f33558b;
            VoipUser voipUser = (VoipUser) this.f33559c.poll();
            if (voipUser == null) {
                voipUser = (VoipUser) this.f33558b.a;
            }
            c0Var.a = voipUser;
            VoipAnalyticsCallDirection voipAnalyticsCallDirection = this.f33560d;
            String str = this.f33561e;
            s1.z.b.a aVar = this.f33562f;
            String str2 = aVar != null ? (String) aVar.invoke() : null;
            s1.z.b.a aVar2 = this.f33563g;
            Integer num = aVar2 != null ? (Integer) aVar2.invoke() : null;
            VoipUser voipUser2 = (VoipUser) this.f33558b.a;
            return new C11395e0(voipAnalyticsCallDirection, str, str2, num, voipUser2 != null ? voipUser2.f16283a : null, voipUser2 != null ? voipUser2.f16290h : null, this.f33564h, false, 128);
        }
    }

    @Inject
    public C11423k0(@Named("IO") f fVar, AbstractC19462a abstractC19462a, a<AbstractC19854f<AbstractC19463a0>> aVar, AbstractC11421j1 abstractC11421j1, AbstractC11706g abstractC11706g, AbstractC11558b abstractC11558b, CleverTapManager cleverTapManager) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar, "eventsTracker");
        l.e(abstractC11421j1, "support");
        l.e(abstractC11706g, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(abstractC11558b, "availabilityUtil");
        l.e(cleverTapManager, "cleverTap");
        this.f33546a = fVar;
        this.f33547b = abstractC19462a;
        this.f33548c = aVar;
        this.f33549d = abstractC11421j1;
        this.f33550e = abstractC11706g;
        this.f33551f = abstractC11558b;
        this.f33552g = cleverTapManager;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: a */
    public void mo24718a(VoipInvitationFailureReason voipInvitationFailureReason) {
        l.e(voipInvitationFailureReason, "reason");
        AbstractC19462a abstractC19462a = this.f33547b;
        String value = voipInvitationFailureReason.getValue();
        HashMap hashMap = new HashMap();
        hashMap.put("Reason", value);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("GroupVoiceInvitationFailure", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(E…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: b */
    public void mo24717b(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        AbstractC19462a abstractC19462a = this.f33547b;
        Schema schema = C17825y2.f50735d;
        C17825y2.C17827b c17827b = new C17825y2.C17827b(null);
        c17827b.validate(c17827b.fields()[2], str);
        c17827b.f50742a = str;
        c17827b.fieldSetFlags()[2] = true;
        C17825y2 build = c17827b.build();
        l.d(build, "AppVoipServiceStartNotAl…hannel(channelId).build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: c */
    public void mo24716c(VoipAnalyticsInCallUiAction voipAnalyticsInCallUiAction) {
        l.e(voipAnalyticsInCallUiAction, "action");
        VoipAnalyticsContext voipAnalyticsContext = VoipAnalyticsContext.VOIP_IN_CALL_UI;
        String value = voipAnalyticsContext.getValue();
        String value2 = voipAnalyticsInCallUiAction.getValue();
        if (true & true) {
            value = null;
        }
        n.B0(C22128a.m8584p1(value2, "action", value2, null, value), this.f33547b);
        AbstractC19463a0 abstractC19463a0 = (AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a();
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15904b(voipAnalyticsInCallUiAction.getValue());
        m15906a.m15903c(voipAnalyticsContext.getValue());
        abstractC19463a0.mo13111a(m15906a.build());
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: d */
    public void mo24715d(C11395e0 c11395e0, VoipAnalyticsState voipAnalyticsState, VoipAnalyticsStateReason voipAnalyticsStateReason) {
        l.e(c11395e0, "callInfo");
        l.e(voipAnalyticsState, "state");
        AbstractC19502g.C19504b c19504b = c11395e0.f33466h ? new AbstractC19502g.C19504b("GroupVoipStateChanged") : new AbstractC19502g.C19504b("VoipStateChanged");
        c19504b.m13263d("Direction", c11395e0.f33459a.getValue());
        c19504b.m13263d("State", voipAnalyticsState.getValue());
        l.d(c19504b, "fbEventBuilder\n         …PARAM_STATE, state.value)");
        String value = voipAnalyticsStateReason != null ? voipAnalyticsStateReason.getValue() : null;
        if (value != null) {
            c19504b.m13263d("Reason", value);
        }
        String str = c11395e0.f33465g;
        if (str != null) {
            c19504b.m13263d("CrossDcIsoCode", str);
        }
        AbstractC19462a abstractC19462a = this.f33547b;
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "fbEventBuilder.build()");
        abstractC19462a.mo13271e(m13266a);
        if (!c11395e0.f33466h) {
            Schema schema = C17840z2.f50781k;
            C17840z2.C17842b c17842b = new C17840z2.C17842b(null);
            String value2 = c11395e0.f33459a.getValue();
            c17842b.validate(c17842b.fields()[2], value2);
            c17842b.f50795a = value2;
            c17842b.fieldSetFlags()[2] = true;
            String value3 = voipAnalyticsState.getValue();
            c17842b.validate(c17842b.fields()[3], value3);
            c17842b.f50796b = value3;
            c17842b.fieldSetFlags()[3] = true;
            String str2 = c11395e0.f33460b;
            c17842b.validate(c17842b.fields()[5], str2);
            c17842b.f50798d = str2;
            c17842b.fieldSetFlags()[5] = true;
            String str3 = null;
            if (voipAnalyticsStateReason != null) {
                str3 = voipAnalyticsStateReason.getValue();
            }
            c17842b.validate(c17842b.fields()[4], str3);
            c17842b.f50797c = str3;
            c17842b.fieldSetFlags()[4] = true;
            String str4 = c11395e0.f33461c;
            c17842b.validate(c17842b.fields()[6], str4);
            c17842b.f50799e = str4;
            c17842b.fieldSetFlags()[6] = true;
            String str5 = c11395e0.f33463e;
            c17842b.validate(c17842b.fields()[7], str5);
            c17842b.f50800f = str5;
            c17842b.fieldSetFlags()[7] = true;
            Integer num = c11395e0.f33462d;
            c17842b.validate(c17842b.fields()[8], num);
            c17842b.f50801g = num;
            c17842b.fieldSetFlags()[8] = true;
            Integer num2 = c11395e0.f33464f;
            c17842b.validate(c17842b.fields()[9], num2);
            c17842b.f50802h = num2;
            c17842b.fieldSetFlags()[9] = true;
            ((AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a()).mo13111a(c17842b.build());
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: e */
    public void mo24714e(String str, VoipAnalyticsFailedCallAction voipAnalyticsFailedCallAction) {
        l.e(str, "analyticsContext");
        l.e(voipAnalyticsFailedCallAction, "action");
        String value = voipAnalyticsFailedCallAction.getValue();
        n.B0(C22128a.m8584p1(value, "action", value, null, true & true ? null : str), this.f33547b);
        AbstractC19463a0 abstractC19463a0 = (AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a();
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15903c(str);
        m15906a.m15904b(voipAnalyticsFailedCallAction.getValue());
        abstractC19463a0.mo13111a(m15906a.build());
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: f */
    public void mo24713f(boolean z, String str, long j, Integer num) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        String str2 = z ? "GroupVoipCallFinished" : "VoipCallFinished";
        AbstractC19462a abstractC19462a = this.f33547b;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b(str2);
        c19504b.f54123c = Double.valueOf(j);
        if (num != null) {
            c19504b.m13265b("Size", num.intValue());
        }
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "AnalyticsEvent.Builder(e…\n                .build()");
        abstractC19462a.mo13271e(m13266a);
        AbstractC19463a0 abstractC19463a0 = (AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a();
        Schema schema = C17810x2.f50643f;
        C17810x2.C17812b c17812b = new C17810x2.C17812b(null);
        c17812b.validate(c17812b.fields()[3], str);
        c17812b.f50653b = str;
        c17812b.fieldSetFlags()[3] = true;
        c17812b.validate(c17812b.fields()[2], Long.valueOf(j));
        c17812b.f50652a = j;
        c17812b.fieldSetFlags()[2] = true;
        if (num != null) {
            c17812b.validate(c17812b.fields()[4], num);
            c17812b.f50654c = num;
            c17812b.fieldSetFlags()[4] = true;
        }
        abstractC19463a0.mo13111a(c17812b.build());
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: g */
    public void mo24712g(String str, String str2, int i, boolean z) {
        l.e(str, "voipId");
        l.e(str2, AnalyticsConstants.TOKEN);
        AbstractC19462a abstractC19462a = this.f33547b;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("VoipRTMLoginError");
        c19504b.m13265b("ErrorCode", i);
        c19504b.m13262e("IsRetryAttempt", z);
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "AnalyticsEvent.Builder(E…\n                .build()");
        abstractC19462a.mo13271e(m13266a);
        HashMap hashMap = new HashMap();
        hashMap.put("ErrorCode", String.valueOf(i));
        hashMap.put("IsRetryAttempt", String.valueOf(z));
        hashMap.put("VoipId", str);
        hashMap.put("Token", str2);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("VoipRTMLoginError");
        m15852a.m15848d(hashMap);
        ((AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a()).mo13111a(m15852a.build());
    }

    public f getCoroutineContext() {
        return this.f33546a;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: h */
    public void mo24711h(String str, String str2, VoipSearchDirection voipSearchDirection) {
        l.e(str, "analyticsContext");
        l.e(voipSearchDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11424a(str2, str, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: i */
    public void mo24710i(VoipAnalyticsCallDirection voipAnalyticsCallDirection, VoipCleverTapAction voipCleverTapAction) {
        String str;
        l.e(voipAnalyticsCallDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        l.e(voipCleverTapAction, "voipAnalyticsAction");
        int ordinal = voipCleverTapAction.ordinal();
        if (ordinal == 0) {
            str = VoipCleverTapEvents.PRIORITY_VOIP_CALL.getValue();
        } else if (ordinal != 1) {
            throw new s1.i();
        } else {
            str = VoipCleverTapEvents.PRIORITY_VOIP_GROUP_CALL.getValue();
        }
        this.f33552g.push(str, C25225a.m3938Z1(new k("Direction", voipAnalyticsCallDirection.getValue())));
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: j */
    public void mo24709j(Integer num, String str, String str2, int i, int i2, int i3, String str3, String str4) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(str2, AnalyticsConstants.TOKEN);
        AbstractC19462a abstractC19462a = this.f33547b;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("VoipRTCJoinChannelError");
        c19504b.m13263d("ReturnCode", String.valueOf(num));
        c19504b.m13265b("State", i2);
        c19504b.m13265b("Reason", i3);
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "AnalyticsEvent.Builder(E…\n                .build()");
        abstractC19462a.mo13271e(m13266a);
        HashMap hashMap = new HashMap();
        hashMap.put("ReturnCode", String.valueOf(num));
        hashMap.put("ChannelId", str);
        hashMap.put("Token", str2);
        hashMap.put("UID", String.valueOf(i));
        hashMap.put("State", String.valueOf(i2));
        hashMap.put("Reason", String.valueOf(i3));
        hashMap.put("Secret", String.valueOf(str3));
        hashMap.put("Mode", String.valueOf(str4));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("VoipRTCJoinChannelError");
        m15852a.m15848d(hashMap);
        ((AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a()).mo13111a(m15852a.build());
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: k */
    public void mo24708k(i0 i0Var, VoipAnalyticsCallDirection voipAnalyticsCallDirection, String str, s1.z.b.a<String> aVar, s1.z.b.a<Integer> aVar2, String str2, z<C11730l> zVar, z<VoipUser> zVar2, z<Boolean> zVar3) {
        l.e(i0Var, "scope");
        l.e(voipAnalyticsCallDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(zVar, "statesChannel");
        l.e(zVar2, "usersChannel");
        c0 c0Var = new c0();
        c0Var.a = null;
        C11425b c11425b = new C11425b(c0Var, zVar2, voipAnalyticsCallDirection, str, aVar, aVar2, str2);
        s1.a.a.a.v0.f.d.w2(i0Var, this.f33546a, (j0) null, new C11414i0(this, zVar, c11425b, null), 2, (Object) null).n0(false, true, new C11420j0(zVar));
        if (zVar3 != null) {
            s1.a.a.a.v0.f.d.w2(i0Var, this.f33546a, (j0) null, new C11408g0(this, zVar3, c11425b, null), 2, (Object) null).n0(false, true, new C11411h0(zVar3));
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11405f0
    /* renamed from: l */
    public void mo24707l(String str, VoipAnalyticsNotificationAction voipAnalyticsNotificationAction) {
        l.e(str, "analyticsContext");
        l.e(voipAnalyticsNotificationAction, "action");
        String value = voipAnalyticsNotificationAction.getValue();
        n.B0(C22128a.m8584p1(value, "action", value, null, true & true ? null : str), this.f33547b);
        AbstractC19463a0 abstractC19463a0 = (AbstractC19463a0) ((AbstractC19854f) this.f33548c.get()).mo11854a();
        C17635l2.C17637b m15906a = C17635l2.m15906a();
        m15906a.m15903c(str);
        m15906a.m15904b(voipAnalyticsNotificationAction.getValue());
        abstractC19463a0.mo13111a(m15906a.build());
    }

    /* renamed from: m */
    public final VoipAnalyticsState m24706m(VoipAnalyticsCallDirection voipAnalyticsCallDirection) {
        VoipAnalyticsState voipAnalyticsState;
        int ordinal = voipAnalyticsCallDirection.ordinal();
        if (ordinal == 0) {
            voipAnalyticsState = VoipAnalyticsState.FAILED;
        } else if (ordinal != 1) {
            throw new s1.i();
        } else {
            voipAnalyticsState = VoipAnalyticsState.INIT_FAILED;
        }
        return voipAnalyticsState;
    }
}
