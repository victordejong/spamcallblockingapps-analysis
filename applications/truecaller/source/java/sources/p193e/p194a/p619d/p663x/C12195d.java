package p193e.p194a.p619d.p663x;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.api.RtcTokenDto;
import com.truecaller.voip.api.RtcTokenWithEncryptionDto;
import com.truecaller.voip.manager.VoipMsg;
import com.truecaller.voip.manager.VoipMsgAction;
import com.truecaller.voip.manager.VoipMsgExtras;
import io.agora.rtc.Constants;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11440o1;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p663x.AbstractC12213k;
import q3.a.g0;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.i;
import q3.a.x2.g1;
import q3.a.x2.z0;
import s1.g;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.d.x.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/d.class */
public final class C12195d implements AbstractC12216l, i0 {

    /* renamed from: a */
    public final f f35613a;

    /* renamed from: c */
    public C12212j f35615c;

    /* renamed from: g */
    public final g f35619g;

    /* renamed from: h */
    public final g0 f35620h;

    /* renamed from: i */
    public final AbstractC11440o1 f35621i;

    /* renamed from: j */
    public final AbstractC11405f0 f35622j;

    /* renamed from: b */
    public final z0<VoipMsg> f35614b = g1.a(15, 0, i.b, 2);

    /* renamed from: d */
    public final C11464r<Boolean> f35616d = new C11464r<>(Boolean.FALSE);

    /* renamed from: e */
    public final C11464r<AbstractC12213k> f35617e = new C11464r<>(AbstractC12213k.C12214a.f35675a);

    /* renamed from: f */
    public final C12204i f35618f = new C12204i();

    /* renamed from: e.a.d.x.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$a.class */
    public static final class C12196a extends m implements a<RtcEngine> {

        /* renamed from: c */
        public final /* synthetic */ Context f35624c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12196a(Context context) {
            super(0);
            C12195d.this = r4;
            this.f35624c = context;
        }

        public Object invoke() {
            RtcEngine rtcEngine;
            try {
                Context context = this.f35624c;
                rtcEngine = RtcEngine.create(context, context.getString(C4781R.string.voip_agora_app_id), C12195d.this.f35618f);
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

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager", f = "VoipManager.kt", l = {268, 280}, m = "join")
    /* renamed from: e.a.d.x.d$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$b.class */
    public static final class C12197b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35625d;

        /* renamed from: e */
        public int f35626e;

        /* renamed from: g */
        public Object f35628g;

        /* renamed from: h */
        public Object f35629h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12197b(d dVar) {
            super(dVar);
            C12195d.this = r4;
        }

        /* renamed from: s */
        public final Object m23465s(Object obj) {
            this.f35625d = obj;
            this.f35626e |= Integer.MIN_VALUE;
            return C12195d.this.m23469c(null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager$join$2", f = "VoipManager.kt", l = {281}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.d$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$c.class */
    public static final class C12198c extends s1.w.k.a.i implements l<d<? super String>, Object> {

        /* renamed from: e */
        public int f35630e;

        /* renamed from: g */
        public final /* synthetic */ String f35632g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12198c(String str, d dVar) {
            super(1, dVar);
            C12195d.this = r5;
            this.f35632g = str;
        }

        /* renamed from: d */
        public final Object m23464d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C12198c(this.f35632g, dVar).m23462s(s.a);
        }

        /* renamed from: l */
        public final d<s> m23463l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C12198c(this.f35632g, dVar);
        }

        /* renamed from: s */
        public final Object m23462s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35630e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11440o1 abstractC11440o1 = C12195d.this.f35621i;
                String str = this.f35632g;
                this.f35630e = 1;
                Object mo24653h = abstractC11440o1.mo24653h(str, this);
                obj = mo24653h;
                if (mo24653h == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            RtcTokenDto rtcTokenDto = (RtcTokenDto) obj;
            return rtcTokenDto != null ? rtcTokenDto.getToken() : null;
        }
    }

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager", f = "VoipManager.kt", l = {373}, m = "joinToChannel")
    /* renamed from: e.a.d.x.d$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$d.class */
    public static final class C12199d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35633d;

        /* renamed from: e */
        public int f35634e;

        /* renamed from: g */
        public Object f35636g;

        /* renamed from: h */
        public Object f35637h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12199d(d dVar) {
            super(dVar);
            C12195d.this = r4;
        }

        /* renamed from: s */
        public final Object m23461s(Object obj) {
            this.f35633d = obj;
            this.f35634e |= Integer.MIN_VALUE;
            return C12195d.this.m23468d(null, null, 0, null, null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager", f = "VoipManager.kt", l = {288, 307}, m = "joinWithEncryption")
    /* renamed from: e.a.d.x.d$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$e.class */
    public static final class C12200e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35638d;

        /* renamed from: e */
        public int f35639e;

        /* renamed from: g */
        public Object f35641g;

        /* renamed from: h */
        public Object f35642h;

        /* renamed from: i */
        public Object f35643i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12200e(d dVar) {
            super(dVar);
            C12195d.this = r4;
        }

        /* renamed from: s */
        public final Object m23460s(Object obj) {
            this.f35638d = obj;
            this.f35639e |= Integer.MIN_VALUE;
            return C12195d.this.m23467e(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager$joinWithEncryption$2", f = "VoipManager.kt", l = {308}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.d$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$f.class */
    public static final class C12201f extends s1.w.k.a.i implements l<d<? super String>, Object> {

        /* renamed from: e */
        public int f35644e;

        /* renamed from: g */
        public final /* synthetic */ String f35646g;

        /* renamed from: h */
        public final /* synthetic */ String f35647h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12201f(String str, String str2, d dVar) {
            super(1, dVar);
            C12195d.this = r5;
            this.f35646g = str;
            this.f35647h = str2;
        }

        /* renamed from: d */
        public final Object m23459d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C12201f(this.f35646g, this.f35647h, dVar).m23457s(s.a);
        }

        /* renamed from: l */
        public final d<s> m23458l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C12201f(this.f35646g, this.f35647h, dVar);
        }

        /* renamed from: s */
        public final Object m23457s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35644e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11440o1 abstractC11440o1 = C12195d.this.f35621i;
                String str = this.f35646g;
                String str2 = this.f35647h;
                this.f35644e = 1;
                Object mo24656e = abstractC11440o1.mo24656e(str, str2, this);
                obj = mo24656e;
                if (mo24656e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            RtcTokenWithEncryptionDto rtcTokenWithEncryptionDto = (RtcTokenWithEncryptionDto) obj;
            return rtcTokenWithEncryptionDto != null ? rtcTokenWithEncryptionDto.getToken() : null;
        }
    }

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager", f = "VoipManager.kt", l = {391}, m = "listenJoinChannelResult")
    /* renamed from: e.a.d.x.d$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$g.class */
    public static final class C12202g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35648d;

        /* renamed from: e */
        public int f35649e;

        /* renamed from: g */
        public Object f35651g;

        /* renamed from: h */
        public Object f35652h;

        /* renamed from: i */
        public Object f35653i;

        /* renamed from: j */
        public Object f35654j;

        /* renamed from: k */
        public Object f35655k;

        /* renamed from: l */
        public int f35656l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12202g(d dVar) {
            super(dVar);
            C12195d.this = r4;
        }

        /* renamed from: s */
        public final Object m23456s(Object obj) {
            this.f35648d = obj;
            this.f35649e |= Integer.MIN_VALUE;
            return C12195d.this.m23466f(null, null, 0, null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.AgoraVoipManager$listenJoinChannelResult$joinVoipMsg$1", f = "VoipManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.d$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$h.class */
    public static final class C12203h extends s1.w.k.a.i implements p<VoipMsg, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35657e;

        public C12203h(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23455i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C12203h c12203h = new C12203h(dVar);
            c12203h.f35657e = obj;
            return c12203h;
        }

        /* renamed from: k */
        public final Object m23454k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            int ordinal = ((VoipMsg) obj).getAction().ordinal();
            return Boolean.valueOf(ordinal == 8 || ordinal == 9);
        }

        /* renamed from: s */
        public final Object m23453s(Object obj) {
            C25225a.m3932a3(obj);
            int ordinal = ((VoipMsg) this.f35657e).getAction().ordinal();
            return Boolean.valueOf(ordinal == 8 || ordinal == 9);
        }
    }

    /* renamed from: e.a.d.x.d$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/d$i.class */
    public static final class C12204i extends IRtcEngineEventHandler {
        public C12204i() {
            C12195d.this = r4;
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionLost() {
            super.onConnectionLost();
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.LOST, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onConnectionStateChanged(int i, int i2) {
            super.onConnectionStateChanged(i, i2);
            if (i == 3) {
                C12195d c12195d = C12195d.this;
                if (!c12195d.f35616d.getValue().booleanValue()) {
                    return;
                }
                s1.a.a.a.v0.f.d.w2(c12195d, (f) null, (j0) null, new C12207g(c12195d, false, null), 3, (Object) null);
            } else if (i2 == 2) {
                C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.INTERRUPTED, null, 2, null));
                C12195d c12195d2 = C12195d.this;
                Objects.requireNonNull(c12195d2);
                s1.a.a.a.v0.f.d.w2(c12195d2, (f) null, (j0) null, new C12207g(c12195d2, true, null), 3, (Object) null);
            } else if (i2 != 4 && i2 != 6 && i2 != 7 && i2 != 8) {
            } else {
                C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.JOIN_FAILED, new VoipMsgExtras(null, null, false, 0, 0, i, i2, 31, null)));
            }
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onError(int i) {
            super.onError(i);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.ERROR, new VoipMsgExtras(null, null, false, 0, i, 0, 0, 111, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onJoinChannelSuccess(String str, int i, int i2) {
            super.onJoinChannelSuccess(str, i, i2);
            if (str == null) {
                return;
            }
            C12195d.this.f35615c = new C12212j(str, i);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.JOINED, new VoipMsgExtras(null, str, false, 0, 0, 0, 0, 125, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onLeaveChannel(IRtcEngineEventHandler.RtcStats rtcStats) {
            super.onLeaveChannel(rtcStats);
            C12195d c12195d = C12195d.this;
            c12195d.f35615c = null;
            c12195d.f35614b.g(new VoipMsg(VoipMsgAction.LEFT_CHANNEL, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRejoinChannelSuccess(String str, int i, int i2) {
            super.onRejoinChannelSuccess(str, i, i2);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.REJOINED, new VoipMsgExtras(Integer.valueOf(i), str, false, 0, 0, 0, 0, 124, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRequestToken() {
            super.onRequestToken();
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.NEW_TOKEN_REQUIRED, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onRtcStats(IRtcEngineEventHandler.RtcStats rtcStats) {
            super.onRtcStats(rtcStats);
            if (rtcStats == null) {
                return;
            }
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.STATS_RECEIVED, new VoipMsgExtras(null, null, false, rtcStats.users, 0, 0, 0, 119, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onTokenPrivilegeWillExpire(String str) {
            super.onTokenPrivilegeWillExpire(str);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.NEW_TOKEN_REQUIRED, null, 2, null));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserJoined(int i, int i2) {
            super.onUserJoined(i, i2);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.USER_JOINED, new VoipMsgExtras(Integer.valueOf(i), null, false, 0, 0, 0, 0, 126, null)));
            C12195d c12195d = C12195d.this;
            Objects.requireNonNull(c12195d);
            s1.a.a.a.v0.f.d.w2(c12195d, (f) null, (j0) null, new C12192a(c12195d, i, null), 3, (Object) null);
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserMuteAudio(int i, boolean z) {
            super.onUserMuteAudio(i, z);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.USER_MUTE_CHANGED, new VoipMsgExtras(Integer.valueOf(i), null, z, 0, 0, 0, 0, 122, null)));
        }

        @Override // io.agora.rtc.IRtcEngineEventHandler
        public void onUserOffline(int i, int i2) {
            super.onUserOffline(i, i2);
            C12195d.this.f35614b.g(new VoipMsg(VoipMsgAction.OFFLINE, null, 2, null));
            C12195d c12195d = C12195d.this;
            Objects.requireNonNull(c12195d);
            s1.a.a.a.v0.f.d.w2(c12195d, (f) null, (j0) null, new C12194c(c12195d, i, null), 3, (Object) null);
        }
    }

    @Inject
    public C12195d(Context context, g0 g0Var, AbstractC11440o1 abstractC11440o1, AbstractC11405f0 abstractC11405f0) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(g0Var, "dispatcher");
        s1.z.c.l.e(abstractC11440o1, "tokenProvider");
        s1.z.c.l.e(abstractC11405f0, "analyticsUtil");
        this.f35620h = g0Var;
        this.f35621i = abstractC11440o1;
        this.f35622j = abstractC11405f0;
        this.f35613a = g0Var.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
        this.f35619g = C25225a.m3978P1(new C12196a(context));
    }

    /* renamed from: a */
    public Set<Integer> m23471a() {
        AbstractC12213k value = this.f35617e.getValue();
        return value instanceof AbstractC12213k.C12215b ? ((AbstractC12213k.C12215b) value).f35676a : u.a;
    }

    /* renamed from: b */
    public final RtcEngine m23470b() {
        return (RtcEngine) this.f35619g.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ca  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m23469c(java.lang.String r10, s1.w.d<? super p193e.p194a.p619d.p663x.AbstractC12209i> r11) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.C12195d.m23469c(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0189  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23468d(java.lang.String r11, java.lang.String r12, int r13, java.lang.String r14, java.lang.String r15, s1.z.b.l<? super s1.w.d<? super java.lang.String>, ? extends java.lang.Object> r16, s1.w.d<? super p193e.p194a.p619d.p663x.AbstractC12209i> r17) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.C12195d.m23468d(java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, s1.z.b.l, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e0  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m23467e(java.lang.String r10, java.lang.String r11, s1.w.d<? super p193e.p194a.p619d.p663x.AbstractC12209i> r12) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.C12195d.m23467e(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0127  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23466f(java.lang.String r11, java.lang.String r12, int r13, java.lang.String r14, java.lang.String r15, s1.w.d<? super java.lang.Boolean> r16) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.C12195d.m23466f(java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f35613a;
    }
}
