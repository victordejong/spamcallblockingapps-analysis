package p193e.p194a.p619d.p652q;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.telecom.CallAudioState;
import android.telecom.Connection;
import android.telecom.DisconnectCause;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import com.truecaller.voip.legacy.incoming.p191ui.LegacyIncomingVoipActivity;
import java.util.concurrent.CancellationException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p622b.p623a.AbstractC11105d;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p652q.C11777w;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
/* renamed from: e.a.d.q.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/b.class */
public class C11746b extends Connection implements i0, AbstractC11755i {

    /* renamed from: k */
    public static final /* synthetic */ int f34527k = 0;

    /* renamed from: b */
    public ServiceConnectionC11747a f34529b;

    /* renamed from: c */
    public AbstractC11105d f34530c;

    /* renamed from: d */
    public AbstractC11147f f34531d;

    /* renamed from: e */
    public l<? super CallAudioState, s> f34532e;

    /* renamed from: g */
    public a<s> f34534g;

    /* renamed from: h */
    public final f f34535h;

    /* renamed from: i */
    public final Context f34536i;

    /* renamed from: j */
    public final boolean f34537j;

    /* renamed from: a */
    public y f34528a = d.j((p1) null, 1, (Object) null);

    /* renamed from: f */
    public final Connection f34533f = this;

    /* renamed from: e.a.d.q.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/q/b$a.class */
    public final class ServiceConnectionC11747a implements ServiceConnection {

        /* renamed from: a */
        public boolean f34538a = true;

        /* renamed from: b */
        public final l<IBinder, s> f34539b;

        /* renamed from: c */
        public final a<s> f34540c;

        /* renamed from: d */
        public final /* synthetic */ C11746b f34541d;

        @e(c = "com.truecaller.voip.callconnection.LegacyVoipCallConnection$VoipServiceConnection$onServiceDisconnected$1", f = "LegacyVoipCallConnection.kt", l = {274}, m = "invokeSuspend")
        /* renamed from: e.a.d.q.b$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/q/b$a$a.class */
        public static final class C11748a extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public int f34542e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11748a(s1.w.d dVar) {
                super(2, dVar);
                ServiceConnectionC11747a.this = r5;
            }

            /* renamed from: i */
            public final s1.w.d<s> m24055i(Object obj, s1.w.d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C11748a(dVar);
            }

            /* renamed from: k */
            public final Object m24054k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C11748a(dVar).m24053s(s.a);
            }

            /* renamed from: s */
            public final Object m24053s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f34542e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f34542e = 1;
                    if (d.D0(1000L, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                ServiceConnectionC11747a.this.f34540c.invoke();
                ServiceConnectionC11747a serviceConnectionC11747a = ServiceConnectionC11747a.this;
                if (serviceConnectionC11747a.f34538a) {
                    C11746b c11746b = serviceConnectionC11747a.f34541d;
                    int i2 = C11746b.f34527k;
                    c11746b.m24056f(4);
                }
                return s.a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ServiceConnectionC11747a(C11746b c11746b, l<? super IBinder, s> lVar, a<s> aVar) {
            s1.z.c.l.e(lVar, "onConnectedCallback");
            s1.z.c.l.e(aVar, "onDisconnectedCallback");
            this.f34541d = c11746b;
            this.f34539b = lVar;
            this.f34540c = aVar;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            s1.z.c.l.e(componentName, "className");
            s1.z.c.l.e(iBinder, "binder");
            if (this.f34541d.f34528a.j()) {
                return;
            }
            this.f34539b.d(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            s1.z.c.l.e(componentName, "className");
            d.w2(this.f34541d, (f) null, (j0) null, new C11748a(null), 3, (Object) null);
        }
    }

    public C11746b(f fVar, Context context, boolean z) {
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f34535h = fVar;
        this.f34536i = context;
        this.f34537j = z;
        setAudioModeIsVoip(true);
        setConnectionProperties(128);
        setConnectionCapabilities(2);
        setCallerDisplayName("", 3);
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: a */
    public void mo24016a(l<? super CallAudioState, s> lVar) {
        l<? super CallAudioState, s> lVar2;
        this.f34532e = lVar;
        CallAudioState callAudioState = getCallAudioState();
        if (callAudioState == null || (lVar2 = this.f34532e) == null) {
            return;
        }
        s sVar = (s) lVar2.d(callAudioState);
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: b */
    public void mo24015b() {
        setDisconnected(new DisconnectCause(4));
        a<s> aVar = this.f34534g;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: c */
    public void mo24014c(a<s> aVar) {
        this.f34534g = aVar;
        if (getState() == 6) {
            ((C11777w.C11778a) aVar).invoke();
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: d */
    public Connection mo24013d() {
        return this.f34533f;
    }

    /* renamed from: e */
    public final void m24057e(Class<?> cls, l<? super IBinder, s> lVar, a<s> aVar) {
        try {
            ServiceConnectionC11747a serviceConnectionC11747a = this.f34529b;
            if (serviceConnectionC11747a != null) {
                this.f34536i.unbindService(serviceConnectionC11747a);
            }
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        this.f34529b = null;
        ServiceConnectionC11747a serviceConnectionC11747a2 = new ServiceConnectionC11747a(this, lVar, aVar);
        if (!this.f34536i.bindService(new Intent(this.f34536i, cls), serviceConnectionC11747a2, 0)) {
            m24056f(1);
        }
        this.f34529b = serviceConnectionC11747a2;
    }

    /* renamed from: f */
    public final void m24056f(int i) {
        try {
            ServiceConnectionC11747a serviceConnectionC11747a = this.f34529b;
            if (serviceConnectionC11747a != null) {
                this.f34536i.unbindService(serviceConnectionC11747a);
            }
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        this.f34529b = null;
        if (!this.f34528a.j()) {
            d.T(this.f34528a, (CancellationException) null, 1, (Object) null);
        }
        setDisconnected(new DisconnectCause(i));
        a<s> aVar = this.f34534g;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
        destroy();
    }

    public f getCoroutineContext() {
        return this.f34535h.plus(this.f34528a);
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    public void initialize() {
        if (getState() == 1 && getState() != 6) {
            setInitializing();
            if (this.f34537j) {
                m24057e(LegacyVoipService.class, new C11751e(this), new C11752f(this));
            } else {
                m24057e(LegacyIncomingVoipService.class, new C11749c(this), new C11750d(this));
            }
        }
    }

    @Override // android.telecom.Connection
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        l<? super CallAudioState, s> lVar;
        String str = "Call audio state is changed: " + callAudioState;
        if (callAudioState == null || (lVar = this.f34532e) == null) {
            return;
        }
        s sVar = (s) lVar.d(callAudioState);
    }

    @Override // android.telecom.Connection
    public void onDisconnect() {
        AbstractC11105d abstractC11105d = this.f34530c;
        if (abstractC11105d != null) {
            abstractC11105d.mo25226Q1();
        }
        a<s> aVar = this.f34534g;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // android.telecom.Connection
    public void onHold() {
        AbstractC11105d abstractC11105d = this.f34530c;
        if (abstractC11105d != null) {
            abstractC11105d.mo25228O1();
        }
    }

    @Override // android.telecom.Connection
    public void onShowIncomingCallUi() {
        super.onShowIncomingCallUi();
        Context context = this.f34536i;
        context.startActivity(LegacyIncomingVoipActivity.C4814a.m34326b(LegacyIncomingVoipActivity.f16374d, context, false, false, 6));
    }

    @Override // android.telecom.Connection
    public void onSilence() {
        StringBuilder m8728C = C22128a.m8728C("On silence ");
        m8728C.append(getExtras());
        m8728C.toString();
        AbstractC11147f abstractC11147f = this.f34531d;
        if (abstractC11147f != null) {
            abstractC11147f.mo25122m3();
        }
    }

    @Override // android.telecom.Connection
    public void onStateChanged(int i) {
        super.onStateChanged(i);
    }

    @Override // android.telecom.Connection
    public void onUnhold() {
        AbstractC11105d abstractC11105d = this.f34530c;
        if (abstractC11105d != null) {
            abstractC11105d.mo25230M1();
        }
    }
}
