package p193e.p194a.p619d.p663x.p665r;

import android.app.ForegroundServiceStartNotAllowedException;
import android.content.Context;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import com.truecaller.voip.manager.rtm.RtmMsg;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import e.m.e.k;
import io.agora.rtm.ErrorInfo;
import io.agora.rtm.ResultCallback;
import io.agora.rtm.RtmClient;
import io.agora.rtm.RtmClientListener;
import io.agora.rtm.RtmFileMessage;
import io.agora.rtm.RtmImageMessage;
import io.agora.rtm.RtmMediaOperationProgress;
import io.agora.rtm.RtmMessage;
import io.agora.rtm.SendMessageOptions;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.C11395e0;
import q3.a.i0;
import q3.a.n;
import q3.a.o;
import q3.a.w2.h;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.x.r.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/f.class */
public final class C12256f implements AbstractC12285o, i0 {

    /* renamed from: b */
    public final f f35807b;

    /* renamed from: g */
    public final f f35812g;

    /* renamed from: h */
    public final f f35813h;

    /* renamed from: i */
    public final AbstractC11706g f35814i;

    /* renamed from: j */
    public final Context f35815j;

    /* renamed from: k */
    public final k f35816k;

    /* renamed from: l */
    public final AbstractC11405f0 f35817l;

    /* renamed from: a */
    public final g f35806a = C25225a.m3978P1(new C12257a());

    /* renamed from: c */
    public final h<RtmMsg> f35808c = d.d(10);

    /* renamed from: d */
    public final h<Integer> f35809d = d.d(10);

    /* renamed from: e */
    public final C12258b f35810e = new C12258b();

    /* renamed from: f */
    public final Set<AbstractC12261h> f35811f = new LinkedHashSet();

    /* renamed from: e.a.d.x.r.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/f$a.class */
    public static final class C12257a extends m implements a<RtmClient> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12257a() {
            super(0);
            C12256f.this = r4;
        }

        public Object invoke() {
            RtmClient rtmClient;
            try {
                Context context = C12256f.this.f35815j;
                rtmClient = RtmClient.createInstance(context, context.getString(C4781R.string.voip_agora_app_id), C12256f.this.f35810e);
            } catch (Exception e) {
                rtmClient = null;
            }
            return rtmClient;
        }
    }

    /* renamed from: e.a.d.x.r.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/f$b.class */
    public static final class C12258b implements RtmClientListener {
        public C12258b() {
            C12256f.this = r4;
        }

        public void onConnectionStateChanged(int i, int i2) {
            C12256f.this.f35809d.offer(Integer.valueOf(i));
        }

        public void onFileMessageReceivedFromPeer(RtmFileMessage rtmFileMessage, String str) {
        }

        public void onImageMessageReceivedFromPeer(RtmImageMessage rtmImageMessage, String str) {
        }

        public void onMediaDownloadingProgress(RtmMediaOperationProgress rtmMediaOperationProgress, long j) {
        }

        public void onMediaUploadingProgress(RtmMediaOperationProgress rtmMediaOperationProgress, long j) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0159, code lost:
            if (s1.f0.r.p(r11) != false) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMessageReceived(io.agora.rtm.RtmMessage r10, java.lang.String r11) {
            /*
                Method dump skipped, instructions count: 371
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12256f.C12258b.onMessageReceived(io.agora.rtm.RtmMessage, java.lang.String):void");
        }

        public void onPeersOnlineStatusChanged(Map<String, Integer> map) {
        }

        public void onTokenExpired() {
        }
    }

    /* renamed from: e.a.d.x.r.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/f$c.class */
    public static final class C12259c implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ n f35820a;

        public C12259c(n nVar) {
            this.f35820a = nVar;
        }

        public void onFailure(ErrorInfo errorInfo) {
            String str = "Cannot send Rtm message. Error info " + errorInfo;
            if (!this.f35820a.j()) {
                this.f35820a.c(Boolean.FALSE);
            }
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            if (!this.f35820a.j()) {
                this.f35820a.c(Boolean.TRUE);
            }
        }
    }

    @Inject
    public C12256f(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC11706g abstractC11706g, Context context, @Named("VoipGson") k kVar, AbstractC11405f0 abstractC11405f0) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(abstractC11706g, "voipConfig");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(kVar, "gson");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        this.f35812g = fVar;
        this.f35813h = fVar2;
        this.f35814i = abstractC11706g;
        this.f35815j = context;
        this.f35816k = kVar;
        this.f35817l = abstractC11405f0;
        this.f35807b = fVar;
    }

    /* renamed from: h */
    public static final void m23356h(C12256f c12256f, String str, String str2, boolean z) {
        c12256f.f35817l.mo24715d(new C11395e0(VoipAnalyticsCallDirection.INCOMING, str2, null, null, null, null, null, false, 252), VoipAnalyticsState.INVITED, null);
        C10480a.m26045M1("Starting service IncomingVoipService::RtmManager");
        if (Build.VERSION.SDK_INT < 31) {
            Context context = c12256f.f35815j;
            C26467a.m1796f(context, LegacyIncomingVoipService.m34330b(context, str, str2, z));
            return;
        }
        try {
            Context context2 = c12256f.f35815j;
            C26467a.m1796f(context2, LegacyIncomingVoipService.m34330b(context2, str, str2, z));
        } catch (ForegroundServiceStartNotAllowedException e) {
            c12256f.f35817l.mo24717b(str2);
        }
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: a */
    public Object mo23320a(VoipUser voipUser, RtmMsg rtmMsg, s1.w.d<? super Boolean> dVar) {
        return mo23319b(voipUser.f16283a, rtmMsg, dVar);
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: b */
    public Object mo23319b(String str, RtmMsg rtmMsg, s1.w.d<? super Boolean> dVar) {
        RtmClient mo23315f = mo23315f();
        if (mo23315f != null) {
            o oVar = new o(C25225a.m3844s1(dVar), 1);
            oVar.z();
            RtmMessage createMessage = mo23315f.createMessage();
            createMessage.setText(this.f35816k.m(rtmMsg));
            SendMessageOptions sendMessageOptions = new SendMessageOptions();
            sendMessageOptions.enableOfflineMessaging = false;
            sendMessageOptions.enableHistoricalMessaging = false;
            l.d(createMessage, "rtmMessage");
            createMessage.getText();
            mo23315f.sendMessageToPeer(str, createMessage, sendMessageOptions, new C12259c(oVar));
            Object y = oVar.y();
            if (y == s1.w.j.a.a) {
                l.e(dVar, "frame");
            }
            return y;
        }
        return Boolean.FALSE;
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: c */
    public void mo23318c(i0 i0Var, p<? super Integer, ? super s1.w.d<? super s>, ? extends Object> pVar) {
        l.e(i0Var, "scope");
        l.e(pVar, "block");
        C19291g.m13599P0(i0Var, this.f35809d, pVar);
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    public void clear() {
        synchronized (this) {
            this.f35811f.clear();
        }
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: d */
    public void mo23317d(i0 i0Var, p<? super RtmMsg, ? super s1.w.d<? super s>, ? extends Object> pVar) {
        l.e(i0Var, "scope");
        l.e(pVar, "block");
        C19291g.m13599P0(i0Var, this.f35808c, pVar);
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: e */
    public h<RtmMsg> mo23316e() {
        return this.f35808c;
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: f */
    public RtmClient mo23315f() {
        return (RtmClient) this.f35806a.getValue();
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12285o
    /* renamed from: g */
    public AbstractC12261h mo23314g(i0 i0Var, String str, a<Long> aVar) {
        Object obj;
        synchronized (this) {
            l.e(i0Var, "coroutineScope");
            l.e(str, "id");
            l.e(aVar, "timeProvider");
            RtmClient mo23315f = mo23315f();
            if (mo23315f != null) {
                Iterator<T> it = this.f35811f.iterator();
                do {
                    obj = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    obj = it.next();
                } while (!l.a(((AbstractC12261h) obj).getId(), str));
                AbstractC12261h abstractC12261h = (AbstractC12261h) obj;
                if (abstractC12261h != null) {
                    return abstractC12261h;
                }
                C12264k c12264k = new C12264k(str, i0Var, mo23315f, this.f35816k, aVar);
                this.f35811f.add(c12264k);
                return c12264k;
            }
            return null;
        }
    }

    public f getCoroutineContext() {
        return this.f35807b;
    }
}
