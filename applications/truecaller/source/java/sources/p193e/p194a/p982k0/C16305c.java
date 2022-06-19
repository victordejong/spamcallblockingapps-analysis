package p193e.p194a.p982k0;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.calling.recorder.CallRecordingListActivity;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.CallRecordingOnBoardingLaunchContext;
import com.truecaller.callrecording.analytics.RecordingAction;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingActivity;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import java.net.URLDecoder;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p372b0.p430q.C8615v;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p982k0.AbstractC16315h;
import p193e.p194a.p982k0.p983a.AbstractC16275b;
import p193e.p194a.p982k0.p983a.AbstractC16278e;
import p193e.p194a.p982k0.p983a.AbstractC16283h;
import p193e.p194a.p982k0.p983a.AbstractC16288l;
import p193e.p194a.p982k0.p983a.AbstractC16296p;
import p193e.p194a.p982k0.p984i.AbstractC16321a;
import p193e.p194a.p982k0.p987l.AbstractC16333c;
import p193e.p194a.p982k0.p987l.AbstractC16347m;
import p193e.p194a.p982k0.p987l.C16344j;
import p193e.p194a.p982k0.p987l.C16346l;
import p193e.p194a.p982k0.p988m.AbstractC16353a;
import p193e.p194a.p982k0.p996o.AbstractC16441a;
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
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.d0;
import s1.z.c.j;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k0.c */
/* loaded from: classes7-dex2jar.jar:e/a/k0/c.class */
public final class C16305c implements AbstractC16278e, AbstractC16441a, CallRecordingManager, i0 {

    /* renamed from: c */
    public AbstractC16312e f45903c;

    /* renamed from: d */
    public boolean f45904d;

    /* renamed from: f */
    public final f f45906f;

    /* renamed from: g */
    public final f f45907g;

    /* renamed from: h */
    public final AbstractC16278e f45908h;

    /* renamed from: i */
    public final AbstractC16441a f45909i;

    /* renamed from: j */
    public final a<Context> f45910j;

    /* renamed from: k */
    public final a<AbstractC19237j0> f45911k;

    /* renamed from: l */
    public final a<AbstractC16353a> f45912l;

    /* renamed from: m */
    public final a<AbstractC16283h> f45913m;

    /* renamed from: n */
    public final a<AbstractC16313f> f45914n;

    /* renamed from: o */
    public final a<AbstractC16275b> f45915o;

    /* renamed from: p */
    public final a<AbstractC16333c> f45916p;

    /* renamed from: q */
    public final a<AbstractC16288l> f45917q;

    /* renamed from: r */
    public final a<AbstractC16321a> f45918r;

    /* renamed from: a */
    public final g f45901a = C25225a.m3978P1(C16306a.f45919b);

    /* renamed from: b */
    public final a1<AbstractC16315h> f45902b = k1.a(AbstractC16315h.C16318c.f45934a);

    /* renamed from: e */
    public final C8615v f45905e = new C8615v(new C16308c(this));

    /* renamed from: e.a.k0.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/c$a.class */
    public static final class C16306a extends m implements s1.z.b.a<y> {

        /* renamed from: b */
        public static final C16306a f45919b = new C16306a();

        public C16306a() {
            super(0);
        }

        public Object invoke() {
            return d.j((p1) null, 1, (Object) null);
        }
    }

    @e(c = "com.truecaller.callrecording.CallRecordingManagerImpl$onCallRecordingSaved$1", f = "CallRecordingManagerImpl.kt", l = {216}, m = "invokeSuspend")
    /* renamed from: e.a.k0.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/c$b.class */
    public static final class C16307b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f45920e;

        /* renamed from: g */
        public final /* synthetic */ Contact f45922g;

        /* renamed from: h */
        public final /* synthetic */ Intent f45923h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16307b(Contact contact, Intent intent, s1.w.d dVar) {
            super(2, dVar);
            C16305c.this = r5;
            this.f45922g = contact;
            this.f45923h = intent;
        }

        /* renamed from: i */
        public final s1.w.d<s> m17573i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16307b(this.f45922g, this.f45923h, dVar);
        }

        /* renamed from: k */
        public final Object m17572k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C16307b(this.f45922g, this.f45923h, dVar).m17571s(s.a);
        }

        /* renamed from: s */
        public final Object m17571s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45920e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16288l abstractC16288l = (AbstractC16288l) C16305c.this.f45917q.get();
                Contact contact = this.f45922g;
                Intent intent = this.f45923h;
                C16305c c16305c = C16305c.this;
                Objects.requireNonNull(c16305c);
                Object obj2 = c16305c.f45910j.get();
                l.d(obj2, "context.get()");
                Context context = (Context) obj2;
                l.e(context, AnalyticsConstants.CONTEXT);
                Intent intent2 = new Intent(context, CallRecordingListActivity.class);
                intent2.addFlags(603979776);
                this.f45920e = 1;
                if (abstractC16288l.mo17617b(contact, intent, intent2, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.k0.c$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/c$c.class */
    public static final /* synthetic */ class C16308c extends j implements s1.z.b.a<s> {
        public C16308c(C16305c c16305c) {
            super(0, c16305c, C16305c.class, "setupSessionManagerListener", "setupSessionManagerListener()V", 0);
        }

        public Object invoke() {
            C16305c c16305c = (C16305c) ((b) this).b;
            Objects.requireNonNull(c16305c);
            d.w2(c16305c, (f) null, (j0) null, new C16310d(c16305c, null), 3, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.callrecording.CallRecordingManagerImpl$showToast$1", f = "CallRecordingManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k0.c$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/c$d.class */
    public static final class C16309d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ int f45925f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16309d(int i, s1.w.d dVar) {
            super(2, dVar);
            C16305c.this = r5;
            this.f45925f = i;
        }

        /* renamed from: i */
        public final s1.w.d<s> m17570i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16309d(this.f45925f, dVar);
        }

        /* renamed from: k */
        public final Object m17569k(Object obj, Object obj2) {
            s sVar = s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C16305c c16305c = C16305c.this;
            int i = this.f45925f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C12864a2.m22554g0((AbstractC19237j0) c16305c.f45911k.get(), i, null, 0, 6, null);
            return sVar;
        }

        /* renamed from: s */
        public final Object m17568s(Object obj) {
            C25225a.m3932a3(obj);
            C12864a2.m22554g0((AbstractC19237j0) C16305c.this.f45911k.get(), this.f45925f, null, 0, 6, null);
            return s.a;
        }
    }

    @Inject
    public C16305c(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC16278e abstractC16278e, AbstractC16441a abstractC16441a, a<Context> aVar, a<AbstractC19237j0> aVar2, a<AbstractC16353a> aVar3, a<AbstractC16283h> aVar4, a<AbstractC16313f> aVar5, a<AbstractC16275b> aVar6, a<AbstractC16333c> aVar7, a<AbstractC16288l> aVar8, a<AbstractC16321a> aVar9) {
        l.e(fVar, "recordingCoroutineContext");
        l.e(fVar2, "uiCoroutineContext");
        l.e(abstractC16278e, "callRecordingFeatureHelper");
        l.e(abstractC16441a, "callRecordingsMigrationHelper");
        l.e(aVar, AnalyticsConstants.CONTEXT);
        l.e(aVar2, "toastUtil");
        l.e(aVar3, "callRecordingCallRecordingStorageHelper");
        l.e(aVar4, "callRecordingIntentDelegate");
        l.e(aVar5, "callRecordingSettings");
        l.e(aVar6, "callRecordingConfigHelper");
        l.e(aVar7, "callRecorderSessionManager");
        l.e(aVar8, "callRecordingNotificationManager");
        l.e(aVar9, "recordingAnalytics");
        this.f45906f = fVar;
        this.f45907g = fVar2;
        this.f45908h = abstractC16278e;
        this.f45909i = abstractC16441a;
        this.f45910j = aVar;
        this.f45911k = aVar2;
        this.f45912l = aVar3;
        this.f45913m = aVar4;
        this.f45914n = aVar5;
        this.f45915o = aVar6;
        this.f45916p = aVar7;
        this.f45917q = aVar8;
        this.f45918r = aVar9;
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: A */
    public void mo17607A(AbstractC16312e abstractC16312e) {
        this.f45903c = abstractC16312e;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: B */
    public boolean mo17606B() {
        return this.f45908h.mo17606B();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: C */
    public void mo17605C(CallRecording callRecording, RecordingAnalyticsSource recordingAnalyticsSource) {
        l.e(callRecording, "callRecording");
        l.e(recordingAnalyticsSource, "source");
        Intent mo17631b = ((AbstractC16283h) this.f45913m.get()).mo17631b(callRecording.f11505c);
        if (mo17631b == null) {
            m17597K(2131886719);
        } else if (!((AbstractC16283h) this.f45913m.get()).mo17630c(mo17631b)) {
            m17597K(C2752R.string.call_recording_toast_error_no_activity_found_play);
        } else {
            m17597K(C2752R.string.call_recording_toast_item_play);
        }
        ((AbstractC16321a) this.f45918r.get()).mo17531e(recordingAnalyticsSource, RecordingAction.PLAY);
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: D */
    public void mo17604D(Contact contact) {
        Intent intent;
        if (contact != null && ((AbstractC16313f) this.f45914n.get()).mo17554L()) {
            String m17598J = m17598J();
            if (m17598J != null) {
                AbstractC16283h abstractC16283h = (AbstractC16283h) this.f45913m.get();
                String decode = URLDecoder.decode(m17598J, StringConstant.UTF8);
                l.d(decode, "URLDecoder.decode(it, \"UTF-8\")");
                intent = abstractC16283h.mo17631b(decode);
            } else {
                intent = null;
            }
            d.w2(this, (f) null, (j0) null, new C16307b(contact, intent, null), 3, (Object) null);
        }
        ((AbstractC16333c) this.f45916p.get()).reset();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: E */
    public AbstractC16312e mo17603E() {
        return this.f45903c;
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: F */
    public CallRecordingManager.Configuration mo17602F() {
        return ((AbstractC16275b) this.f45915o.get()).mo17640f();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: G */
    public void mo17601G() {
        if (l.a(mo17579s(), AbstractC16296p.C16300d.f45899a)) {
            AbstractC16313f abstractC16313f = (AbstractC16313f) this.f45914n.get();
            abstractC16313f.mo17561G(abstractC16313f.mo17560G0() + 1);
        }
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: H */
    public void mo17600H() {
        this.f45908h.mo17600H();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: I */
    public boolean mo17599I() {
        return this.f45908h.mo17599I();
    }

    /* renamed from: J */
    public final String m17598J() {
        String str;
        AbstractC16347m abstractC16347m = (AbstractC16347m) ((AbstractC16333c) this.f45916p.get()).getState().getValue();
        if (abstractC16347m instanceof AbstractC16347m.C16351d) {
            str = ((AbstractC16347m.C16351d) abstractC16347m).f46008a.f46002c;
        } else {
            str = null;
            if (abstractC16347m instanceof AbstractC16347m.C16348a) {
                C16346l c16346l = ((AbstractC16347m.C16348a) abstractC16347m).f46005a.f45995a;
                str = null;
                if (c16346l != null) {
                    str = c16346l.f46002c;
                }
            }
        }
        return str;
    }

    /* renamed from: K */
    public final p1 m17597K(int i) {
        return d.w2(this, this.f45907g, (j0) null, new C16309d(i, null), 2, (Object) null);
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: a */
    public void mo17596a() {
        synchronized (this) {
            ((AbstractC16333c) this.f45916p.get()).mo17528a();
        }
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: b */
    public boolean mo17595b() {
        return ((AbstractC16333c) this.f45916p.get()).mo17527b();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: c */
    public void mo17594c(boolean z) {
        this.f45908h.mo17594c(z);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: d */
    public boolean mo17593d() {
        return this.f45908h.mo17593d();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: e */
    public void mo17592e(String str, RecordingAnalyticsSource recordingAnalyticsSource) {
        synchronized (this) {
            l.e(recordingAnalyticsSource, "source");
            this.f45903c = null;
            this.f45904d = false;
            if (!mo17577v()) {
                return;
            }
            this.f45905e.m28195a();
            if (((AbstractC16333c) this.f45916p.get()).mo17525e(str, recordingAnalyticsSource) && ((AbstractC16313f) this.f45914n.get()).mo17552M0() < 3) {
                C12864a2.m22554g0((AbstractC19237j0) this.f45911k.get(), C2752R.string.callrecording_speaker_toast, null, 1, 2, null);
                AbstractC16313f abstractC16313f = (AbstractC16313f) this.f45914n.get();
                abstractC16313f.mo17562D(abstractC16313f.mo17552M0() + 1);
            }
        }
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: f */
    public boolean mo17591f() {
        return this.f45908h.mo17591f();
    }

    @Override // p193e.p194a.p982k0.p996o.AbstractC16441a
    /* renamed from: g */
    public void mo17392g() {
        this.f45909i.mo17392g();
    }

    public f getCoroutineContext() {
        return this.f45906f.plus((p1) this.f45901a.getValue());
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    public i1 getState() {
        return this.f45902b;
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: h */
    public boolean mo17590h() {
        return ((AbstractC16313f) this.f45914n.get()).mo17553L0();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: i */
    public boolean mo17589i() {
        return this.f45908h.mo17589i();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    public boolean isEnabled() {
        return this.f45908h.isEnabled();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: j */
    public void mo17588j(Context context, CallRecordingOnBoardingLaunchContext callRecordingOnBoardingLaunchContext, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(callRecordingOnBoardingLaunchContext, "launchContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(callRecordingOnBoardingLaunchContext, "launchContext");
        Intent intent = new Intent(context, CallRecordingOnBoardingActivity.class);
        intent.putExtra("ARG_LAUNCH_CONTEXT", callRecordingOnBoardingLaunchContext);
        intent.putExtra("ARG_FORCE_DARK_THEME", z);
        try {
            if (!(context instanceof Activity)) {
                Context context2 = context;
                while (context2 instanceof ContextWrapper) {
                    Context baseContext = ((ContextWrapper) context2).getBaseContext();
                    l.d(baseContext, "currentContext.baseContext");
                    context2 = baseContext;
                    if (baseContext instanceof Activity) {
                    }
                }
                throw new IllegalStateException("Context does not implement " + d0.a(Activity.class).a());
            }
        } catch (IllegalStateException e) {
            intent.setFlags(335544320);
        }
        context.startActivity(intent);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: k */
    public boolean mo17587k() {
        return this.f45908h.mo17587k();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: l */
    public void mo17586l(boolean z) {
        this.f45904d = z;
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: m */
    public boolean mo17585m() {
        return this.f45904d;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: n */
    public boolean mo17584n() {
        return this.f45908h.mo17584n();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: o */
    public q3.a.x2.f<AbstractC16296p> mo17583o() {
        return this.f45908h.mo17583o();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: p */
    public boolean mo17582p(String str) {
        String str2;
        Object value = ((AbstractC16333c) this.f45916p.get()).getState().getValue();
        Object obj = value;
        if (!(value instanceof AbstractC16347m.C16348a)) {
            obj = null;
        }
        AbstractC16347m.C16348a c16348a = (AbstractC16347m.C16348a) obj;
        boolean z = false;
        if (c16348a != null) {
            C16344j c16344j = c16348a.f46005a;
            z = false;
            if (mo17581q()) {
                z = false;
                if (c16344j.f45996b < TimeUnit.SECONDS.toMillis(4L)) {
                    C16346l c16346l = c16344j.f45995a;
                    if (c16346l != null && (str2 = c16346l.f46002c) != null) {
                        ((AbstractC16353a) this.f45912l.get()).mo17514a(str2);
                    }
                    ((AbstractC16333c) this.f45916p.get()).reset();
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: q */
    public boolean mo17581q() {
        return ((AbstractC16313f) this.f45914n.get()).mo17537y1();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: r */
    public void mo17580r(String str, RecordingAnalyticsSource recordingAnalyticsSource) {
        synchronized (this) {
            l.e(recordingAnalyticsSource, "source");
            String str2 = "Toggle recording - state is " + ((AbstractC16315h) this.f45902b.getValue()) + " and number is " + str;
            AbstractC16315h abstractC16315h = (AbstractC16315h) this.f45902b.getValue();
            if (!l.a(abstractC16315h, AbstractC16315h.C16316a.f45932a) && !(abstractC16315h instanceof AbstractC16315h.C16317b) && !l.a(abstractC16315h, AbstractC16315h.C16318c.f45934a)) {
                if (abstractC16315h instanceof AbstractC16315h.C16320e) {
                    mo17596a();
                } else {
                    l.a(abstractC16315h, AbstractC16315h.C16319d.f45935a);
                }
            }
            mo17592e(str, recordingAnalyticsSource);
        }
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: s */
    public AbstractC16296p mo17579s() {
        return this.f45908h.mo17579s();
    }

    @Override // p193e.p194a.p982k0.p996o.AbstractC16441a
    /* renamed from: t */
    public void mo17391t(boolean z) {
        this.f45909i.mo17391t(z);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: u */
    public boolean mo17578u() {
        return this.f45908h.mo17578u();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: v */
    public boolean mo17577v() {
        return this.f45908h.mo17577v();
    }

    @Override // com.truecaller.callrecording.CallRecordingManager
    /* renamed from: w */
    public String mo17576w() {
        return m17598J();
    }

    @Override // p193e.p194a.p982k0.p996o.AbstractC16441a
    /* renamed from: x */
    public boolean mo17390x() {
        return this.f45909i.mo17390x();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: y */
    public boolean mo17575y() {
        return this.f45908h.mo17575y();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: z */
    public boolean mo17574z() {
        return this.f45908h.mo17574z();
    }
}
