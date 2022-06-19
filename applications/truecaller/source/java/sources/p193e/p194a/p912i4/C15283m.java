package p193e.p194a.p912i4;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.network.notification.NotificationScope;
import com.truecaller.network.notification.NotificationType;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import e.m.e.t;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p937j4.p939b.p940a.AbstractC15572i;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.i4.m */
/* loaded from: classes11-dex2jar.jar:e/a/i4/m.class */
public final class C15283m extends AbstractC21765k {

    /* renamed from: b */
    public final String f43505b = "NotificationDefaultSmsPromoWorkAction";

    /* renamed from: c */
    public final Context f43506c;

    /* renamed from: d */
    public final AbstractC6392i0 f43507d;

    /* renamed from: e */
    public final C20592g f43508e;

    /* renamed from: f */
    public final AbstractC19230g f43509f;

    /* renamed from: g */
    public final C15569f f43510g;

    /* renamed from: h */
    public final AbstractC19510i0 f43511h;

    @Inject
    public C15283m(Context context, AbstractC6392i0 abstractC6392i0, C20592g c20592g, AbstractC19230g abstractC19230g, C15569f c15569f, AbstractC19510i0 abstractC19510i0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC6392i0, "settings");
        l.e(c20592g, "firebaseRemoteConfig");
        l.e(abstractC19230g, "deviceInfoUtils");
        l.e(c15569f, "notificationDao");
        l.e(abstractC19510i0, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f43506c = context;
        this.f43507d = abstractC6392i0;
        this.f43508e = c20592g;
        this.f43509f = abstractC19230g;
        this.f43510g = c15569f;
        this.f43511h = abstractC19510i0;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        boolean z;
        Integer num;
        b mo31136U1 = this.f43507d.mo31136U1();
        l.d(mo31136U1, "settings.featureDefaultSmsAppPromoDate");
        if (!mo31136U1.j() || this.f43507d.mo31173N() == 1) {
            b D = this.f43507d.mo30968y2().D(this.f43507d.mo30997s3());
            l.d(D, "(settings.defaultSmsNoti…aultSmsAppPromoDuration))");
            if (D.j()) {
                b mo31136U12 = this.f43507d.mo31136U1();
                l.d(mo31136U12, "settings.featureDefaultSmsAppPromoDate");
                if (mo31136U12.g()) {
                    this.f43507d.mo30984v1(0);
                }
            }
        } else {
            C20592g c20592g = this.f43508e;
            C20592g.C20593a c20593a = c20592g.f58010q4;
            s1.a.l<?>[] lVarArr = C20592g.f57695p6;
            String mo10938g = ((AbstractC20597i) c20593a.m10941a(c20592g, lVarArr[280])).mo10938g();
            C20592g c20592g2 = this.f43508e;
            String mo10938g2 = ((AbstractC20597i) c20592g2.f58017r4.m10941a(c20592g2, lVarArr[281])).mo10938g();
            C20592g c20592g3 = this.f43508e;
            List<String> T = i.T(new String[]{mo10938g, mo10938g2, ((AbstractC20597i) c20592g3.f58024s4.m10941a(c20592g3, lVarArr[282])).mo10938g()});
            if (!T.isEmpty()) {
                for (String str : T) {
                    if (str.length() == 0) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                String str2 = (String) T.get(0);
                String str3 = (String) T.get(1);
                String str4 = (String) T.get(2);
                t tVar = new t();
                t tVar2 = new t();
                t tVar3 = new t();
                tVar3.i("i", Long.valueOf(System.currentTimeMillis()));
                tVar3.i("s", Integer.valueOf(NotificationScope.LOCAL.value));
                tVar3.i("t", Integer.valueOf(NotificationType.DEFAULT_SMS_PROMO.value));
                tVar3.i(AbstractC2405c.f7629a, Long.valueOf(System.currentTimeMillis() / 1000));
                t tVar4 = new t();
                tVar4.j("s", str3);
                tVar4.j("t", str2);
                tVar4.j("u", "truecaller://home/smsapp?context=default_sms_promo");
                tVar4.j("bbt", str4);
                tVar2.a.put("a", tVar4);
                tVar2.a.put("e", tVar3);
                tVar.a.put("d", tVar2);
                num = InternalTruecallerNotification.NotificationState.NEW.value;
                tVar.i("s", num);
                tVar.i("m", 1);
                InternalTruecallerNotification internalTruecallerNotification = null;
                try {
                    internalTruecallerNotification = new InternalTruecallerNotification(tVar);
                } catch (Exception e) {
                }
                if (internalTruecallerNotification != null) {
                    C15569f c15569f = this.f43510g;
                    Objects.requireNonNull(c15569f);
                    synchronized (AbstractC15572i.f44040c) {
                        if (c15569f.m18623d().add(internalTruecallerNotification)) {
                            c15569f.m18619h();
                        }
                    }
                    this.f43507d.mo30984v1(1);
                    this.f43507d.mo31150R2(System.currentTimeMillis());
                    this.f43511h.mo13214l("Dsan1-GenerateNotification");
                }
            }
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f43505b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z;
        if (!this.f43509f.mo13794c()) {
            Context context = this.f43506c;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
            if (((AbstractApplicationC8442a) context).mo28540W()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
