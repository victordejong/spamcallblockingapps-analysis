package p193e.p194a.p619d.p663x.p664q;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.manager.VoipMsg;
import com.truecaller.voip.manager.VoipMsgAction;
import com.truecaller.voip.manager.VoipMsgExtras;
import com.truecaller.voip.manager.rtc.ChannelJoin;
import io.agora.rtc.Constants;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.EncryptionConfig;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.C11588a;
import p193e.p194a.p619d.p663x.p664q.AbstractC12237i;
import q3.a.g0;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.w2.i;
import q3.a.x2.g1;
import q3.a.x2.i1;
import q3.a.x2.z0;
import q3.a.y2.h;
import s1.g;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.x.q.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d.class */
public final class C12225d implements AbstractC12236h, i0 {

    /* renamed from: a */
    public final z0<VoipMsg> f35706a = g1.a(15, 0, i.b, 2);

    /* renamed from: b */
    public final C11464r<Boolean> f35707b = new C11464r<>(Boolean.FALSE);

    /* renamed from: c */
    public final C11464r<AbstractC12237i> f35708c = new C11464r<>(AbstractC12237i.C12238a.f35743a);

    /* renamed from: d */
    public final C12232g f35709d = new C12232g();

    /* renamed from: e */
    public final g f35710e;

    /* renamed from: f */
    public final g0 f35711f;

    /* renamed from: g */
    public final AbstractC11405f0 f35712g;

    /* renamed from: h */
    public final AbstractC11598i f35713h;

    /* renamed from: i */
    public final /* synthetic */ i0 f35714i;

    @e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$destroy$1", f = "RtcManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.q.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$a.class */
    public static final class C12226a extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {
        public C12226a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23421i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12226a(dVar);
        }

        /* renamed from: k */
        public final Object m23420k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            RtcEngine.destroy();
            return sVar;
        }

        /* renamed from: s */
        public final Object m23419s(Object obj) {
            C25225a.m3932a3(obj);
            RtcEngine.destroy();
            return s.a;
        }
    }

    /* renamed from: e.a.d.x.q.d$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$b.class */
    public static final class C12227b extends m implements a<RtcEngine> {

        /* renamed from: c */
        public final /* synthetic */ Context f35716c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12227b(Context context) {
            super(0);
            C12225d.this = r4;
            this.f35716c = context;
        }

        public Object invoke() {
            RtcEngine rtcEngine;
            try {
                Context context = this.f35716c;
                rtcEngine = RtcEngine.create(context, context.getString(C4781R.string.voip_agora_app_id), C12225d.this.f35709d);
                rtcEngine.setDefaultAudioRoutetoSpeakerphone(false);
                rtcEngine.setChannelProfile(0);
                rtcEngine.setAudioProfile(Constants.AudioProfile.getValue(Constants.AudioProfile.SPEECH_STANDARD), Constants.AudioScenario.getValue(Constants.AudioScenario.CHATROOM_ENTERTAINMENT));
            } catch (Exception e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                rtcEngine = null;
            }
            return rtcEngine;
        }
    }

    @e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$join$1", f = "RtcManager.kt", l = {255, 270}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.q.d$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$c.class */
    public static final class C12228c extends s1.w.k.a.i implements p<i0, d<? super ChannelJoin>, Object> {

        /* renamed from: e */
        public int f35717e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12228c(d dVar) {
            super(2, dVar);
            C12225d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23418i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12228c(dVar);
        }

        /* renamed from: k */
        public final Object m23417k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12228c(dVar).m23416s(s.a);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: s */
        public final Object m23416s(Object obj) {
            EncryptionConfig.EncryptionMode encryptionMode;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35717e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11598i abstractC11598i = C12225d.this.f35713h;
                this.f35717e = 1;
                Object mo24390p = abstractC11598i.mo24390p(false, this);
                obj = mo24390p;
                if (mo24390p == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return obj;
            } else {
                C25225a.m3932a3(obj);
            }
            C11588a c11588a = (C11588a) obj;
            String str = c11588a.f33977d;
            EncryptionConfig encryptionConfig = new EncryptionConfig();
            encryptionConfig.encryptionKey = c11588a.f33977d;
            String str2 = c11588a.f33976c;
            Locale locale = Locale.US;
            l.d(locale, "Locale.US");
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            String upperCase = str2.toUpperCase(locale);
            l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            switch (upperCase.hashCode()) {
                case -1723419365:
                    if (upperCase.equals("SM4-128-ECB")) {
                        encryptionMode = EncryptionConfig.EncryptionMode.SM4_128_ECB;
                        break;
                    }
                    encryptionMode = EncryptionConfig.EncryptionMode.AES_128_XTS;
                    break;
                case -1390875841:
                    if (upperCase.equals("AES-256-XTS")) {
                        encryptionMode = EncryptionConfig.EncryptionMode.AES_256_XTS;
                        break;
                    }
                    encryptionMode = EncryptionConfig.EncryptionMode.AES_128_XTS;
                    break;
                case 162670993:
                    if (upperCase.equals("MODE-END")) {
                        encryptionMode = EncryptionConfig.EncryptionMode.MODE_END;
                        break;
                    }
                    encryptionMode = EncryptionConfig.EncryptionMode.AES_128_XTS;
                    break;
                case 1932547363:
                    if (upperCase.equals("AES-128-XTS")) {
                        encryptionMode = EncryptionConfig.EncryptionMode.AES_128_XTS;
                        break;
                    }
                    encryptionMode = EncryptionConfig.EncryptionMode.AES_128_XTS;
                    break;
                default:
                    encryptionMode = EncryptionConfig.EncryptionMode.AES_128_XTS;
                    break;
            }
            encryptionConfig.encryptionMode = encryptionMode;
            RtcEngine m23424j = C12225d.this.m23424j();
            if (m23424j != null) {
                new Integer(m23424j.enableEncryption(true, encryptionConfig));
            }
            C12225d c12225d = C12225d.this;
            String channelId = c12225d.f35713h.getChannelId();
            String str3 = c11588a.f33975b;
            int i2 = c11588a.f33974a;
            String str4 = c11588a.f33977d;
            String str5 = c11588a.f33976c;
            this.f35717e = 2;
            Object m23423k = c12225d.m23423k(channelId, str3, i2, str4, str5, this);
            obj = m23423k;
            if (m23423k == aVar) {
                return aVar;
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager", f = "RtcManager.kt", l = {327}, m = "joinToChannel")
    /* renamed from: e.a.d.x.q.d$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$d.class */
    public static final class C12229d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35719d;

        /* renamed from: e */
        public int f35720e;

        /* renamed from: g */
        public Object f35722g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12229d(d dVar) {
            super(dVar);
            C12225d.this = r4;
        }

        /* renamed from: s */
        public final Object m23415s(Object obj) {
            this.f35719d = obj;
            this.f35720e |= Integer.MIN_VALUE;
            return C12225d.this.m23423k(null, null, 0, null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager", f = "RtcManager.kt", l = {345}, m = "listenJoinChannelResult")
    /* renamed from: e.a.d.x.q.d$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$e.class */
    public static final class C12230e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35723d;

        /* renamed from: e */
        public int f35724e;

        /* renamed from: g */
        public Object f35726g;

        /* renamed from: h */
        public Object f35727h;

        /* renamed from: i */
        public Object f35728i;

        /* renamed from: j */
        public Object f35729j;

        /* renamed from: k */
        public Object f35730k;

        /* renamed from: l */
        public int f35731l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12230e(d dVar) {
            super(dVar);
            C12225d.this = r4;
        }

        /* renamed from: s */
        public final Object m23414s(Object obj) {
            this.f35723d = obj;
            this.f35724e |= Integer.MIN_VALUE;
            return C12225d.this.m23422l(null, null, 0, null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$listenJoinChannelResult$joinVoipMsg$1", f = "RtcManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.q.d$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$f.class */
    public static final class C12231f extends s1.w.k.a.i implements p<VoipMsg, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35732e;

        public C12231f(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23413i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12231f c12231f = new C12231f(dVar);
            c12231f.f35732e = obj;
            return c12231f;
        }

        /* renamed from: k */
        public final Object m23412k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            int ordinal = ((VoipMsg) obj).getAction().ordinal();
            return Boolean.valueOf(ordinal == 8 || ordinal == 9);
        }

        /* renamed from: s */
        public final Object m23411s(Object obj) {
            C25225a.m3932a3(obj);
            int ordinal = ((VoipMsg) this.f35732e).getAction().ordinal();
            return Boolean.valueOf(ordinal == 8 || ordinal == 9);
        }
    }

    /* renamed from: e.a.d.x.q.d$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/q/d$g.class */
    public static final class C12232g extends IRtcEngineEventHandler {
        public C12232g() {
            C12225d.this = r4;
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionLost() {
            super.onConnectionLost();
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.LOST, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionStateChanged(int i, int i2) {
            super.onConnectionStateChanged(i, i2);
            if (i == 3) {
                C12225d c12225d = C12225d.this;
                if (!c12225d.f35707b.getValue().booleanValue()) {
                    return;
                }
                s1.a.a.a.v0.f.d.w2(c12225d, (f) null, (j0) null, new C12235g(c12225d, false, null), 3, (Object) null);
            } else if (i2 == 2) {
                C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.INTERRUPTED, null, 2, null));
                C12225d c12225d2 = C12225d.this;
                Objects.requireNonNull(c12225d2);
                s1.a.a.a.v0.f.d.w2(c12225d2, (f) null, (j0) null, new C12235g(c12225d2, true, null), 3, (Object) null);
            } else if (i2 != 4 && i2 != 6 && i2 != 7 && i2 != 8) {
            } else {
                C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.JOIN_FAILED, new VoipMsgExtras(null, null, false, 0, 0, i, i2, 31, null)));
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onError(int i) {
            super.onError(i);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.ERROR, new VoipMsgExtras(null, null, false, 0, i, 0, 0, 111, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onJoinChannelSuccess(String str, int i, int i2) {
            super.onJoinChannelSuccess(str, i, i2);
            if (str == null) {
                return;
            }
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.JOINED, new VoipMsgExtras(null, str, false, 0, 0, 0, 0, 125, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLeaveChannel(IRtcEngineEventHandler.RtcStats rtcStats) {
            super.onLeaveChannel(rtcStats);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.LEFT_CHANNEL, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRejoinChannelSuccess(String str, int i, int i2) {
            super.onRejoinChannelSuccess(str, i, i2);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.REJOINED, new VoipMsgExtras(Integer.valueOf(i), str, false, 0, 0, 0, 0, 124, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRequestToken() {
            super.onRequestToken();
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.NEW_TOKEN_REQUIRED, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRtcStats(IRtcEngineEventHandler.RtcStats rtcStats) {
            super.onRtcStats(rtcStats);
            if (rtcStats == null) {
                return;
            }
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.STATS_RECEIVED, new VoipMsgExtras(null, null, false, rtcStats.users, 0, 0, 0, 119, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onTokenPrivilegeWillExpire(String str) {
            super.onTokenPrivilegeWillExpire(str);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.NEW_TOKEN_REQUIRED, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserJoined(int i, int i2) {
            super.onUserJoined(i, i2);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.USER_JOINED, new VoipMsgExtras(Integer.valueOf(i), null, false, 0, 0, 0, 0, 126, null)));
            C12225d c12225d = C12225d.this;
            Objects.requireNonNull(c12225d);
            s1.a.a.a.v0.f.d.w2(c12225d, (f) null, (j0) null, new C12222a(c12225d, i, null), 3, (Object) null);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteAudio(int i, boolean z) {
            super.onUserMuteAudio(i, z);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.USER_MUTE_CHANGED, new VoipMsgExtras(Integer.valueOf(i), null, z, 0, 0, 0, 0, 122, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserOffline(int i, int i2) {
            super.onUserOffline(i, i2);
            C12225d.this.f35706a.g(new VoipMsg(VoipMsgAction.OFFLINE, null, 2, null));
            C12225d c12225d = C12225d.this;
            Objects.requireNonNull(c12225d);
            s1.a.a.a.v0.f.d.w2(c12225d, (f) null, (j0) null, new C12224c(c12225d, i, null), 3, (Object) null);
        }
    }

    @Inject
    public C12225d(Context context, i0 i0Var, g0 g0Var, AbstractC11405f0 abstractC11405f0, AbstractC11598i abstractC11598i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(i0Var, "scope");
        l.e(g0Var, "dispatcher");
        l.e(abstractC11405f0, "analyticsUtil");
        l.e(abstractC11598i, "callInfoRepository");
        this.f35714i = new h(i0Var.getCoroutineContext().plus(g0Var));
        this.f35711f = g0Var;
        this.f35712g = abstractC11405f0;
        this.f35713h = abstractC11598i;
        this.f35710e = C25225a.m3978P1(new C12227b(context));
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: a */
    public i1 mo23401a() {
        return this.f35708c;
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: b */
    public void mo23400b(boolean z) {
        RtcEngine m23424j = m23424j();
        if (m23424j != null) {
            m23424j.muteLocalAudioStream(z);
        }
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: c */
    public n0<ChannelJoin> mo23399c() {
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C12228c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: d */
    public q3.a.x2.f mo23398d() {
        return this.f35707b;
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    public void destroy() {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f35711f, (j0) null, new C12226a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: e */
    public q3.a.x2.f mo23397e() {
        return this.f35706a;
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: f */
    public void mo23396f(boolean z) {
        if (z) {
            RtcEngine m23424j = m23424j();
            if (m23424j == null) {
                return;
            }
            m23424j.enableAudio();
            return;
        }
        RtcEngine m23424j2 = m23424j();
        if (m23424j2 == null) {
            return;
        }
        m23424j2.disableAudio();
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: g */
    public void mo23395g(boolean z) {
        RtcEngine m23424j = m23424j();
        if (m23424j != null) {
            m23424j.setEnableSpeakerphone(z);
        }
    }

    public f getCoroutineContext() {
        return this.f35714i.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: h */
    public Set<Integer> mo23394h() {
        AbstractC12237i value = this.f35708c.getValue();
        return value instanceof AbstractC12237i.C12239b ? ((AbstractC12237i.C12239b) value).f35744a : u.a;
    }

    @Override // p193e.p194a.p619d.p663x.p664q.AbstractC12236h
    /* renamed from: i */
    public boolean mo23393i(int i) {
        return mo23394h().contains(Integer.valueOf(i));
    }

    /* renamed from: j */
    public final RtcEngine m23424j() {
        return (RtcEngine) this.f35710e.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0177  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23423k(java.lang.String r11, java.lang.String r12, int r13, java.lang.String r14, java.lang.String r15, s1.w.d<? super com.truecaller.voip.manager.rtc.ChannelJoin> r16) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p664q.C12225d.m23423k(java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0133  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23422l(java.lang.String r11, java.lang.String r12, int r13, java.lang.String r14, java.lang.String r15, s1.w.d<? super java.lang.Boolean> r16) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p664q.C12225d.m23422l(java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }
}
