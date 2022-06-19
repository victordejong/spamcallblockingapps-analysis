package p193e.p194a.p982k0.p987l;

import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.callrecording.recorder.CallRecorder;
import com.truecaller.callrecording.recorder.RecordingError;
import com.truecaller.callrecording.util.RecorderMode;
import com.truecaller.log.AssertionUtil;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p982k0.p983a.AbstractC16275b;
import p193e.p194a.p982k0.p984i.AbstractC16321a;
import p193e.p194a.p982k0.p987l.AbstractC16340h;
import p193e.p194a.p982k0.p987l.AbstractC16347m;
import p193e.p194a.p982k0.p988m.AbstractC16353a;
import p193e.p194a.p982k0.p988m.AbstractC16354b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.k0.l.d */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/d.class */
public final class C16334d implements AbstractC16333c, CallRecorder.AbstractC3629a, i0, AbstractC16340h.AbstractC16341a {

    /* renamed from: a */
    public boolean f45970a = true;

    /* renamed from: b */
    public final g f45971b = C25225a.m3978P1(C16335a.f45982b);

    /* renamed from: c */
    public final a1<AbstractC16347m> f45972c = k1.a(AbstractC16347m.C16349b.f46006a);

    /* renamed from: d */
    public p1 f45973d;

    /* renamed from: e */
    public C16345k f45974e;

    /* renamed from: f */
    public final f f45975f;

    /* renamed from: g */
    public final AbstractC16353a f45976g;

    /* renamed from: h */
    public final AbstractC16338f f45977h;

    /* renamed from: i */
    public final AbstractC16275b f45978i;

    /* renamed from: j */
    public final AbstractC16340h f45979j;

    /* renamed from: k */
    public final AbstractC19222c f45980k;

    /* renamed from: l */
    public final AbstractC16321a f45981l;

    /* renamed from: e.a.k0.l.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/d$a.class */
    public static final class C16335a extends m implements a<y> {

        /* renamed from: b */
        public static final C16335a f45982b = new C16335a();

        public C16335a() {
            super(0);
        }

        public Object invoke() {
            return d.j((p1) null, 1, (Object) null);
        }
    }

    @e(c = "com.truecaller.callrecording.recorder.CallRecorderSessionManagerImpl$startRecording$1", f = "CallRecorderSessionManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k0.l.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/d$b.class */
    public static final class C16336b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f45984f;

        /* renamed from: g */
        public final /* synthetic */ RecordingAnalyticsSource f45985g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16336b(String str, RecordingAnalyticsSource recordingAnalyticsSource, s1.w.d dVar) {
            super(2, dVar);
            C16334d.this = r5;
            this.f45984f = str;
            this.f45985g = recordingAnalyticsSource;
        }

        /* renamed from: i */
        public final s1.w.d<s> m17524i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16336b(this.f45984f, this.f45985g, dVar);
        }

        /* renamed from: k */
        public final Object m17523k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C16336b c16336b = new C16336b(this.f45984f, this.f45985g, dVar);
            s sVar = s.a;
            c16336b.m17522s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m17522s(Object obj) {
            C25225a.m3932a3(obj);
            C16334d c16334d = C16334d.this;
            String str = this.f45984f;
            RecordingAnalyticsSource recordingAnalyticsSource = this.f45985g;
            synchronized (c16334d) {
                l.e(recordingAnalyticsSource, "source");
                c16334d.f45970a = true;
                RecorderMode mo17645a = c16334d.f45978i.mo17645a();
                boolean z = mo17645a != RecorderMode.SDK;
                AbstractC16354b mo17506e = c16334d.f45976g.mo17506e(str, z);
                if (mo17506e instanceof AbstractC16354b.C16358d) {
                    String str2 = ((AbstractC16354b.C16358d) mo17506e).f46019a;
                    CallRecorder mo17518a = c16334d.f45977h.mo17518a(z, str2, mo17645a, c16334d.f45978i.mo17644b(), c16334d);
                    try {
                        mo17518a.mo17515a();
                        mo17518a.start();
                        if (mo17518a.mo17529b()) {
                            C16346l c16346l = new C16346l(recordingAnalyticsSource, str, str2, new b(), c16334d.f45980k.mo13821a());
                            c16334d.f45974e = new C16345k(mo17518a, c16346l);
                            c16334d.f45972c.setValue(new AbstractC16347m.C16351d(c16346l));
                            c16334d.f45979j.mo17516a(c16334d);
                            c16334d.f45973d = null;
                        } else {
                            C16334d.m17526d(c16334d, false, null, RecordingError.RECORDER_ERROR, 3);
                        }
                    } catch (Exception e) {
                        C16334d.m17526d(c16334d, false, null, RecordingError.START_FAILED, 3);
                    }
                } else {
                    C16334d.m17526d(c16334d, false, null, l.a(mo17506e, AbstractC16354b.C16355a.f46016a) ? RecordingError.INVALID_STORAGE_STATE : l.a(mo17506e, AbstractC16354b.C16356b.f46017a) ? RecordingError.CREATE_DIRECTORY_FAILED : l.a(mo17506e, AbstractC16354b.C16357c.f46018a) ? RecordingError.CREATE_FILE_FAILED : RecordingError.UNMAPPED, 3);
                }
            }
            return s.a;
        }
    }

    @Inject
    public C16334d(@Named("IO") f fVar, AbstractC16353a abstractC16353a, AbstractC16338f abstractC16338f, AbstractC16275b abstractC16275b, AbstractC16340h abstractC16340h, AbstractC19222c abstractC19222c, AbstractC16321a abstractC16321a) {
        l.e(fVar, "recordingCoroutineContext");
        l.e(abstractC16353a, "callRecordingStorageHelper");
        l.e(abstractC16338f, "recorderProvider");
        l.e(abstractC16275b, "callRecordingConfigHelper");
        l.e(abstractC16340h, "recorderWatchdog");
        l.e(abstractC19222c, "clock");
        l.e(abstractC16321a, "recordingAnalytics");
        this.f45975f = fVar;
        this.f45976g = abstractC16353a;
        this.f45977h = abstractC16338f;
        this.f45978i = abstractC16275b;
        this.f45979j = abstractC16340h;
        this.f45980k = abstractC19222c;
        this.f45981l = abstractC16321a;
    }

    /* renamed from: d */
    public static void m17526d(C16334d c16334d, boolean z, Exception exc, RecordingError recordingError, int i) {
        Exception e;
        C16344j c16344j;
        CallRecorder callRecorder;
        if ((i & 1) != 0) {
            z = false;
        }
        Exception exc2 = exc;
        if ((i & 2) != 0) {
            exc2 = null;
        }
        RecordingError recordingError2 = recordingError;
        if ((i & 4) != 0) {
            recordingError2 = null;
        }
        synchronized (c16334d) {
            if (z) {
                if (!c16334d.mo17527b()) {
                    return;
                }
            }
            c16334d.f45979j.stop();
            p1 p1Var = c16334d.f45973d;
            if (p1Var != null) {
                d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            c16334d.f45973d = null;
            try {
                C16345k c16345k = c16334d.f45974e;
                if (c16345k != null && (callRecorder = c16345k.f45998a) != null) {
                    callRecorder.stop();
                }
                e = null;
            } catch (Exception e2) {
                e = e2;
            }
            if (exc2 != null) {
                recordingError2 = RecordingError.UNMAPPED;
            } else if (recordingError2 == null) {
                recordingError2 = e != null ? RecordingError.STOP_FAILED : RecordingError.NONE;
            }
            RecordingError recordingError3 = RecordingError.NONE;
            if (recordingError2 == recordingError3) {
                C16345k c16345k2 = c16334d.f45974e;
                if (c16345k2 != null) {
                    long mo13821a = c16334d.f45980k.mo13821a();
                    C16346l c16346l = c16345k2.f45999b;
                    c16344j = new C16344j(c16346l, mo13821a - c16346l.f46004e, recordingError3);
                } else {
                    c16344j = new C16344j(null, 0L, RecordingError.MISSING_SESSION, 3);
                }
            } else {
                C16345k c16345k3 = c16334d.f45974e;
                c16344j = new C16344j(c16345k3 != null ? c16345k3.f45999b : null, 0L, recordingError2, 2);
            }
            l.e(c16344j, "result");
            d.w2(c16334d, (f) null, (j0) null, new C16337e(c16334d, c16344j, null), 3, (Object) null);
            c16334d.f45972c.setValue(new AbstractC16347m.C16348a(c16344j));
            if (exc2 != null) {
                AssertionUtil.reportThrowableButNeverCrash(exc2);
            }
            String str = "Stop recording is done | " + c16344j + " \n " + exc2 + " \n " + e;
        }
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16333c
    /* renamed from: a */
    public void mo17528a() {
        m17526d(this, true, null, null, 6);
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16333c
    /* renamed from: b */
    public boolean mo17527b() {
        CallRecorder callRecorder;
        C16345k c16345k = this.f45974e;
        return C12864a2.m22540r((c16345k == null || (callRecorder = c16345k.f45998a) == null) ? null : Boolean.valueOf(callRecorder.mo17529b()));
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16340h.AbstractC16341a
    /* renamed from: c */
    public void mo17517c() {
        synchronized (this) {
            m17526d(this, false, null, RecordingError.WATCHDOG_TRIGGERED, 3);
        }
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16333c
    /* renamed from: e */
    public boolean mo17525e(String str, RecordingAnalyticsSource recordingAnalyticsSource) {
        synchronized (this) {
            l.e(recordingAnalyticsSource, "source");
            if (mo17527b()) {
                return false;
            }
            if (this.f45973d == null) {
                AbstractC16347m abstractC16347m = (AbstractC16347m) this.f45972c.getValue();
                AbstractC16347m.C16350c c16350c = AbstractC16347m.C16350c.f46007a;
                if (!l.a(abstractC16347m, c16350c)) {
                    this.f45972c.setValue(c16350c);
                    this.f45973d = d.w2(this, (f) null, (j0) null, new C16336b(str, recordingAnalyticsSource, null), 3, (Object) null);
                    return true;
                }
            }
            return false;
        }
    }

    public f getCoroutineContext() {
        return this.f45975f.plus((p1) this.f45971b.getValue());
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16333c
    public i1 getState() {
        return this.f45972c;
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder.AbstractC3629a
    public void onError(Exception exc) {
        l.e(exc, "exception");
        m17526d(this, false, exc, null, 5);
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16333c
    public void reset() {
        CallRecorder callRecorder;
        synchronized (this) {
            C16345k c16345k = this.f45974e;
            if (c16345k != null && (callRecorder = c16345k.f45998a) != null && callRecorder.mo17529b()) {
                m17526d(this, false, null, RecordingError.RESET_WITH_ONGOING_SESSION, 3);
            }
            this.f45974e = null;
            this.f45972c.setValue(AbstractC16347m.C16349b.f46006a);
        }
    }
}
