package p193e.p194a.p703e3.p709j;

import android.app.NotificationManager;
import android.content.Context;
import android.widget.RemoteViews;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.call_alert.C3576R;
import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import com.truecaller.data.entity.Contact;
import io.agora.rtc.Constants;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1734b.p1741e.C25453c;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p703e3.p710k.AbstractC13426b;
import p193e.p194a.p703e3.p710k.AbstractC13427c;
import p193e.p194a.p703e3.p710k.AbstractC13428d;
import p193e.p194a.p703e3.p710k.AbstractC13429e;
import p193e.p194a.p703e3.p710k.AbstractC13433i;
import p193e.p194a.p703e3.p710k.AbstractC13461p;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.e3.j.g */
/* loaded from: classes6-dex2jar.jar:e/a/e3/j/g.class */
public final class C13416g implements AbstractC13415f, i0 {

    /* renamed from: a */
    public final g f38939a = C25225a.m3978P1(new C13419c());

    /* renamed from: b */
    public final g f38940b = C25225a.m3978P1(new C13422f());

    /* renamed from: c */
    public final g f38941c = C25225a.m3978P1(new C13417a());

    /* renamed from: d */
    public final AbstractC13426b f38942d;

    /* renamed from: e */
    public final AbstractC19223c0 f38943e;

    /* renamed from: f */
    public final Context f38944f;

    /* renamed from: g */
    public final AbstractC19854f<AbstractC19463a0> f38945g;

    /* renamed from: h */
    public final AbstractC13429e f38946h;

    /* renamed from: i */
    public final AbstractC13433i f38947i;

    /* renamed from: j */
    public final AbstractC13428d f38948j;

    /* renamed from: k */
    public final AbstractC18765c f38949k;

    /* renamed from: l */
    public final a<AbstractC19462a> f38950l;

    /* renamed from: m */
    public final AbstractC13427c f38951m;

    /* renamed from: n */
    public final AbstractC13461p f38952n;

    /* renamed from: o */
    public final C20592g f38953o;

    /* renamed from: p */
    public final f f38954p;

    /* renamed from: q */
    public final f f38955q;

    /* renamed from: e.a.e3.j.g$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/g$a.class */
    public static final class C13417a extends m implements s1.z.b.a<RemoteViews> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13417a() {
            super(0);
            C13416g.this = r4;
        }

        public Object invoke() {
            return new RemoteViews(C13416g.this.f38944f.getPackageName(), C3576R.layout.notification_call_alert);
        }
    }

    @e(c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationUIImpl$dismiss$1", f = "CallAlertNotificationUI.kt", l = {191, 192}, m = "invokeSuspend")
    /* renamed from: e.a.e3.j.g$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/g$b.class */
    public static final class C13418b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f38957e;

        /* renamed from: f */
        public Object f38958f;

        /* renamed from: g */
        public Object f38959g;

        /* renamed from: h */
        public Object f38960h;

        /* renamed from: i */
        public int f38961i;

        /* renamed from: k */
        public final /* synthetic */ String f38963k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13418b(String str, d dVar) {
            super(2, dVar);
            C13416g.this = r5;
            this.f38963k = str;
        }

        /* renamed from: i */
        public final d<s> m21843i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13418b(this.f38963k, dVar);
        }

        /* renamed from: k */
        public final Object m21842k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13418b(this.f38963k, dVar).m21841s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0197 A[Catch: NullPointerException -> 0x01b7, TryCatch #0 {NullPointerException -> 0x01b7, blocks: (B:9:0x003b, B:14:0x006a, B:16:0x0075, B:18:0x009b, B:20:0x00a3, B:24:0x00d2, B:26:0x00d9, B:32:0x0131, B:35:0x0143, B:41:0x018c, B:43:0x0197, B:46:0x01a9), top: B:51:0x000a }] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m21841s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 467
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p709j.C13416g.C13418b.m21841s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.e3.j.g$c */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/g$c.class */
    public static final class C13419c extends m implements s1.z.b.a<NotificationManager> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13419c() {
            super(0);
            C13416g.this = r4;
        }

        public Object invoke() {
            Object systemService = C13416g.this.f38944f.getSystemService(RemoteMessageConst.NOTIFICATION);
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            return (NotificationManager) systemService;
        }
    }

    @e(c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationUIImpl", f = "CallAlertNotificationUI.kt", l = {Constants.ERR_ALREADY_IN_RECORDING}, m = "shouldShowCallContext")
    /* renamed from: e.a.e3.j.g$d */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/g$d.class */
    public static final class C13420d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f38965d;

        /* renamed from: e */
        public int f38966e;

        /* renamed from: g */
        public int f38968g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13420d(d dVar) {
            super(dVar);
            C13416g.this = r4;
        }

        /* renamed from: s */
        public final Object m21840s(Object obj) {
            this.f38965d = obj;
            this.f38966e |= Integer.MIN_VALUE;
            return C13416g.this.m21844d(null, null, this);
        }
    }

    @e(c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationUIImpl$show$1", f = "CallAlertNotificationUI.kt", l = {98, 99}, m = "invokeSuspend")
    /* renamed from: e.a.e3.j.g$e */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/g$e.class */
    public static final class C13421e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f38969e;

        /* renamed from: f */
        public boolean f38970f;

        /* renamed from: g */
        public int f38971g;

        /* renamed from: i */
        public final /* synthetic */ Contact f38973i;

        /* renamed from: j */
        public final /* synthetic */ IncomingCallContext f38974j;

        /* renamed from: k */
        public final /* synthetic */ String f38975k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13421e(Contact contact, IncomingCallContext incomingCallContext, String str, d dVar) {
            super(2, dVar);
            C13416g.this = r5;
            this.f38973i = contact;
            this.f38974j = incomingCallContext;
            this.f38975k = str;
        }

        /* renamed from: i */
        public final d<s> m21839i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13421e(this.f38973i, this.f38974j, this.f38975k, dVar);
        }

        /* renamed from: k */
        public final Object m21838k(Object obj, Object obj2) {
            return m21839i(obj, (d) obj2).m21837s(s.a);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(22:2|(2:4|(2:6|(19:8|26|(1:28)(1:29)|30|(1:32)(1:33)|34|60|35|38|(1:40)|41|(4:43|(1:45)(1:46)|47|(1:49))|50|(1:52)|53|(1:55)(1:56)|57|58|59)(2:9|10))(1:11))(2:12|(2:14|15)(4:16|(2:18|(2:20|21))|58|59))|22|(2:24|25)|26|(0)(0)|30|(0)(0)|34|60|35|38|(0)|41|(0)|50|(0)|53|(0)(0)|57|58|59) */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x01e9, code lost:
            r17 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x01eb, code lost:
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r17);
            r17 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0144  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x01b5  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x01bf  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x01f9  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x02f4  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0379  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x045d  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0464  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m21837s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 1171
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p709j.C13416g.C13421e.m21837s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.e3.j.g$f */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/g$f.class */
    public static final class C13422f extends m implements s1.z.b.a<C25453c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13422f() {
            super(0);
            C13416g.this = r4;
        }

        public Object invoke() {
            return new C25453c(C13416g.this.f38944f, C3576R.style.ThemeCallAlertNotificationDefault);
        }
    }

    @Inject
    public C13416g(AbstractC13426b abstractC13426b, AbstractC19223c0 abstractC19223c0, Context context, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC13429e abstractC13429e, AbstractC13433i abstractC13433i, AbstractC13428d abstractC13428d, AbstractC18765c abstractC18765c, a<AbstractC19462a> aVar, AbstractC13427c abstractC13427c, AbstractC13461p abstractC13461p, @Named("features_registry") C20592g c20592g, @Named("CPU") f fVar, @Named("UI") f fVar2) {
        l.e(abstractC13426b, "analyticsNotificationManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(context, "appContext");
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC13429e, "callAlertNotificationHelper");
        l.e(abstractC13433i, "callAlertSimSupport");
        l.e(abstractC13428d, "blockManager");
        l.e(abstractC18765c, "contextCall");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13427c, "callAlertAvatarUtils");
        l.e(abstractC13461p, "callSilenceHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(fVar, "cpuCoroutine");
        l.e(fVar2, "uiContext");
        this.f38942d = abstractC13426b;
        this.f38943e = abstractC19223c0;
        this.f38944f = context;
        this.f38945g = abstractC19854f;
        this.f38946h = abstractC13429e;
        this.f38947i = abstractC13433i;
        this.f38948j = abstractC13428d;
        this.f38949k = abstractC18765c;
        this.f38950l = aVar;
        this.f38951m = abstractC13427c;
        this.f38952n = abstractC13461p;
        this.f38953o = c20592g;
        this.f38954p = fVar;
        this.f38955q = fVar2;
    }

    /* renamed from: c */
    public static final RemoteViews m21845c(C13416g c13416g) {
        return (RemoteViews) c13416g.f38941c.getValue();
    }

    @Override // p193e.p194a.p703e3.p709j.AbstractC13415f
    /* renamed from: a */
    public void mo21847a(String str) {
        l.e(str, "normalizedNumber");
        s1.a.a.a.v0.f.d.w2(this, this.f38955q, (j0) null, new C13418b(str, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p703e3.p709j.AbstractC13415f
    /* renamed from: b */
    public void mo21846b(Contact contact, String str, IncomingCallContext incomingCallContext) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, "normalizedNumber");
        s1.a.a.a.v0.f.d.w2(this, this.f38954p, (j0) null, new C13421e(contact, incomingCallContext, str, null), 2, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21844d(com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext r8, java.lang.String r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p709j.C13416g.m21844d(com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext, java.lang.String, s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f38955q;
    }
}
