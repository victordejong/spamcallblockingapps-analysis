package p193e.p194a.p794g4.p795a;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.notification.call.C4304R;
import io.agora.rtc.Constants;
import java.util.concurrent.CancellationException;
import p1727n3.p1734b.p1741e.C25453c;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p373a.p375a0.C8239a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.g4.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/g4/a/a.class */
public abstract class AbstractC14447a implements i0 {

    /* renamed from: a */
    public final f f41610a;

    /* renamed from: b */
    public final g f41611b;

    /* renamed from: c */
    public final g f41612c;

    /* renamed from: d */
    public p1 f41613d;

    /* renamed from: e */
    public p1 f41614e;

    /* renamed from: f */
    public final g f41615f;

    /* renamed from: g */
    public final C20592g f41616g;

    /* renamed from: h */
    public final AbstractC19230g f41617h;

    /* renamed from: i */
    public final int f41618i;

    /* renamed from: e.a.g4.a.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/a$a.class */
    public static final class C14448a extends m implements a<C8239a> {

        /* renamed from: c */
        public final /* synthetic */ f f41620c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14448a(f fVar) {
            super(0);
            AbstractC14447a.this = r4;
            this.f41620c = fVar;
        }

        public Object invoke() {
            return new C8239a(AbstractC14447a.this.m20100d(), this.f41620c, 0, 4);
        }
    }

    /* renamed from: e.a.g4.a.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/a$b.class */
    public static final class C14449b extends m implements a<C26450q> {

        /* renamed from: c */
        public final /* synthetic */ String f41622c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14449b(String str) {
            super(0);
            AbstractC14447a.this = r4;
            this.f41622c = str;
        }

        public Object invoke() {
            C26450q c26450q = new C26450q(AbstractC14447a.this.m20100d(), this.f41622c);
            c26450q.f74137R.icon = C4304R.C4305drawable.notification_call_ic_button_answer;
            c26450q.m1853p(2, true);
            c26450q.m1853p(8, true);
            Context m20100d = AbstractC14447a.this.m20100d();
            int i = C4304R.color.notification_call_background;
            Object obj = C26467a.f74235a;
            c26450q.f74123D = C26467a.C26471d.m1787a(m20100d, i);
            c26450q.m1858k(AbstractC14447a.this.m20099f());
            c26450q.f74121B = "call";
            c26450q.f74153m = false;
            l.d(c26450q, "NotificationCompat.Build…      .setShowWhen(false)");
            return c26450q;
        }
    }

    @e(c = "com.truecaller.notification.call.CallNotification$setAvatarXConfig$1", f = "CallNotification.kt", l = {87}, m = "invokeSuspend")
    /* renamed from: e.a.g4.a.a$c */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/a$c.class */
    public static final class C14450c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f41623e;

        /* renamed from: f */
        public int f41624f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14450c(d dVar) {
            super(2, dVar);
            AbstractC14447a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20090i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14450c(dVar);
        }

        /* renamed from: k */
        public final Object m20089k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14450c(dVar).m20088s(s.a);
        }

        /* renamed from: s */
        public final Object m20088s(Object obj) {
            Object obj2;
            AbstractC14447a abstractC14447a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f41624f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14447a abstractC14447a2 = AbstractC14447a.this;
                C8239a m20102b = abstractC14447a2.m20102b();
                this.f41623e = abstractC14447a2;
                this.f41624f = 1;
                obj2 = C8239a.m28759sk(m20102b, 0, this, 1);
                if (obj2 == aVar) {
                    return aVar;
                }
                abstractC14447a = abstractC14447a2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                abstractC14447a = (AbstractC14447a) this.f41623e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            abstractC14447a.mo20076l((Bitmap) obj2);
            return s.a;
        }
    }

    /* renamed from: e.a.g4.a.a$d */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/a$d.class */
    public static final class C14451d extends m implements a<C25453c> {

        /* renamed from: c */
        public final /* synthetic */ Context f41627c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14451d(Context context) {
            super(0);
            AbstractC14447a.this = r4;
            this.f41627c = context;
        }

        public Object invoke() {
            return new C25453c(this.f41627c, AbstractC14447a.this.m20099f() ? C4304R.style.Theme_Notification_Call_Dark : C4304R.style.Theme_Notification_Call_Default);
        }
    }

    @e(c = "com.truecaller.notification.call.CallNotification$update$1", f = "CallNotification.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, Constants.ERR_PUBLISH_STREAM_NOT_FOUND}, m = "invokeSuspend")
    /* renamed from: e.a.g4.a.a$e */
    /* loaded from: classes11-dex2jar.jar:e/a/g4/a/a$e.class */
    public static final class C14452e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f41628e;

        /* renamed from: g */
        public final /* synthetic */ Service f41630g;

        /* renamed from: h */
        public final /* synthetic */ boolean f41631h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14452e(Service service, boolean z, d dVar) {
            super(2, dVar);
            AbstractC14447a.this = r5;
            this.f41630g = service;
            this.f41631h = z;
        }

        /* renamed from: i */
        public final d<s> m20087i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14452e(this.f41630g, this.f41631h, dVar);
        }

        /* renamed from: k */
        public final Object m20086k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14452e(this.f41630g, this.f41631h, dVar).m20085s(s.a);
        }

        /* renamed from: s */
        public final Object m20085s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f41628e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f41628e = 1;
                if (s1.a.a.a.v0.f.d.D0(100L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                Service service = this.f41630g;
                AbstractC14447a abstractC14447a = AbstractC14447a.this;
                service.startForeground(abstractC14447a.f41618i, abstractC14447a.m20101c().m1865d());
                C10480a.m26045M1("[InCallUIService] startForeground called. Immediate = " + this.f41631h);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            p1 p1Var = AbstractC14447a.this.f41613d;
            if (p1Var != null) {
                this.f41628e = 2;
                if (p1Var.k(this) == aVar) {
                    return aVar;
                }
            }
            Service service2 = this.f41630g;
            AbstractC14447a abstractC14447a2 = AbstractC14447a.this;
            service2.startForeground(abstractC14447a2.f41618i, abstractC14447a2.m20101c().m1865d());
            C10480a.m26045M1("[InCallUIService] startForeground called. Immediate = " + this.f41631h);
            return s.a;
        }
    }

    public AbstractC14447a(f fVar, f fVar2, Context context, C20592g c20592g, AbstractC19230g abstractC19230g, int i, String str) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "cpuContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        this.f41616g = c20592g;
        this.f41617h = abstractC19230g;
        this.f41618i = i;
        this.f41610a = fVar.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
        this.f41611b = C25225a.m3978P1(new C14451d(context));
        this.f41612c = C25225a.m3978P1(new C14448a(fVar2));
        this.f41615f = C25225a.m3978P1(new C14449b(str));
    }

    /* renamed from: q */
    public static /* synthetic */ void m20091q(AbstractC14447a abstractC14447a, Service service, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        abstractC14447a.m20092p(service, z);
    }

    /* renamed from: a */
    public final void m20103a() {
        m20102b().mo9806c();
        s1.a.a.a.v0.f.d.R(this.f41610a, (CancellationException) null, 1, (Object) null);
    }

    /* renamed from: b */
    public final C8239a m20102b() {
        return (C8239a) this.f41612c.getValue();
    }

    /* renamed from: c */
    public final C26450q m20101c() {
        return (C26450q) this.f41615f.getValue();
    }

    /* renamed from: d */
    public final Context m20100d() {
        return (Context) this.f41611b.getValue();
    }

    /* renamed from: e */
    public abstract void mo20079e();

    /* renamed from: f */
    public final boolean m20099f() {
        return C12864a2.m22583K(this.f41617h, this.f41616g);
    }

    /* renamed from: g */
    public final void m20098g(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(m20102b(), avatarXConfig, false, 2, null);
        p1 p1Var = this.f41613d;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f41613d = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C14450c(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f41610a;
    }

    /* renamed from: h */
    public abstract void mo20078h(String str, int i, int i2);

    /* renamed from: i */
    public final void m20097i(Intent intent) {
        l.e(intent, "intent");
        m20101c().f74147g = PendingIntent.getActivity(m20100d(), 0, intent, 67108864);
    }

    /* renamed from: j */
    public abstract void mo20077j(String str);

    /* renamed from: k */
    public final void m20096k(RemoteViews remoteViews, int i, int i2, boolean z) {
        l.e(remoteViews, "$this$setImageIconAndState");
        remoteViews.setImageViewResource(i, i2);
        if (z) {
            remoteViews.setInt(i, "setColorFilter", C19291g.m13538k0(m20100d(), C4304R.attr.notificationCallButtonCheckedColor));
            remoteViews.setInt(i, "setBackgroundResource", C4304R.C4305drawable.notification_call_button_background_checked);
            return;
        }
        remoteViews.setInt(i, "setColorFilter", C19291g.m13538k0(m20100d(), C4304R.attr.notificationCallButtonNormalColor));
        remoteViews.setInt(i, "setBackgroundResource", C4304R.C4305drawable.notification_call_button_background_normal);
    }

    /* renamed from: l */
    public void mo20076l(Bitmap bitmap) {
        l.e(bitmap, RemoteMessageConst.Notification.ICON);
        p1 p1Var = this.f41613d;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    /* renamed from: m */
    public final void m20095m(int i) {
        m20101c().f74137R.icon = i;
    }

    /* renamed from: n */
    public final void m20094n(boolean z) {
        m20101c().f74154n = z;
    }

    /* renamed from: o */
    public final void m20093o(long j) {
        m20101c().f74137R.when = j;
    }

    /* renamed from: p */
    public final void m20092p(Service service, boolean z) {
        l.e(service, "service");
        p1 p1Var = this.f41614e;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        if (z) {
            service.startForeground(this.f41618i, m20101c().m1865d());
            C10480a.m26045M1("[InCallUIService] startForeground called. Immediate = " + z);
        }
        this.f41614e = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C14452e(service, z, null), 3, (Object) null);
    }
}
