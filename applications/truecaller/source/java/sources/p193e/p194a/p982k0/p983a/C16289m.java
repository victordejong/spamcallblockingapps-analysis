package p193e.p194a.p982k0.p983a;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.C3624R;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1734b.p1741e.C25453c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8246b;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.g;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k0.a.m */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/m.class */
public final class C16289m implements AbstractC16288l {

    /* renamed from: a */
    public final g f45875a = C25225a.m3978P1(new C16293d());

    /* renamed from: b */
    public final g f45876b = C25225a.m3978P1(new C16291b());

    /* renamed from: c */
    public final AbstractC8246b<Contact> f45877c;

    /* renamed from: d */
    public final AbstractC19230g f45878d;

    /* renamed from: e */
    public final C20592g f45879e;

    /* renamed from: f */
    public final Context f45880f;

    /* renamed from: g */
    public final f f45881g;

    @e(c = "com.truecaller.callrecording.util.CallRecordingNotificationManagerImpl", f = "CallRecordingNotificationManager.kt", l = {122}, m = "createCallRecordedNotification")
    /* renamed from: e.a.k0.a.m$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/m$a.class */
    public static final class C16290a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45882d;

        /* renamed from: e */
        public int f45883e;

        /* renamed from: g */
        public Object f45885g;

        /* renamed from: h */
        public Object f45886h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16290a(d dVar) {
            super(dVar);
            C16289m.this = r4;
        }

        /* renamed from: s */
        public final Object m17613s(Object obj) {
            this.f45882d = obj;
            this.f45883e |= Integer.MIN_VALUE;
            return C16289m.this.m17616c(null, null, null, null, null, this);
        }
    }

    /* renamed from: e.a.k0.a.m$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/m$b.class */
    public static final class C16291b extends m implements a<AbstractC14920n> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16291b() {
            super(0);
            C16289m.this = r4;
        }

        public Object invoke() {
            Context applicationContext = C16289m.this.m17614e().getApplicationContext();
            Context context = applicationContext;
            if (!(applicationContext instanceof AbstractC14932g)) {
                context = null;
            }
            AbstractC14932g abstractC14932g = (AbstractC14932g) context;
            if (abstractC14932g != null) {
                return abstractC14932g.mo19403n();
            }
            throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
        }
    }

    @e(c = "com.truecaller.callrecording.util.CallRecordingNotificationManagerImpl", f = "CallRecordingNotificationManager.kt", l = {70}, m = "notifyCallRecorded")
    /* renamed from: e.a.k0.a.m$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/m$c.class */
    public static final class C16292c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45888d;

        /* renamed from: e */
        public int f45889e;

        /* renamed from: g */
        public Object f45891g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16292c(d dVar) {
            super(dVar);
            C16289m.this = r4;
        }

        /* renamed from: s */
        public final Object m17612s(Object obj) {
            this.f45888d = obj;
            this.f45889e |= Integer.MIN_VALUE;
            return C16289m.this.mo17617b(null, null, null, this);
        }
    }

    /* renamed from: e.a.k0.a.m$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/m$d.class */
    public static final class C16293d extends m implements a<C25453c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16293d() {
            super(0);
            C16289m.this = r4;
        }

        public Object invoke() {
            C16289m c16289m = C16289m.this;
            return new C25453c(c16289m.f45880f, !C12864a2.m22583K(c16289m.f45878d, c16289m.f45879e) ? C3624R.style.Theme_Notification_Call_Dark : C3624R.style.Theme_Notification_Call_Default);
        }
    }

    @Inject
    public C16289m(AbstractC8246b<Contact> abstractC8246b, AbstractC19230g abstractC19230g, C20592g c20592g, Context context, @Named("CPU") f fVar) {
        l.e(abstractC8246b, "avatarXConfigProvider");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c20592g, "featuresRegistry");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "cpuContext");
        this.f45877c = abstractC8246b;
        this.f45878d = abstractC19230g;
        this.f45879e = c20592g;
        this.f45880f = context;
        this.f45881g = fVar;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16288l
    /* renamed from: a */
    public void mo17618a() {
        m17615d().mo19420f(C3624R.C3626id.call_recorded_notification);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    @Override // p193e.p194a.p982k0.p983a.AbstractC16288l
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17617b(com.truecaller.data.entity.Contact r9, android.content.Intent r10, android.content.Intent r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p983a.C16289m.mo17617b(com.truecaller.data.entity.Contact, android.content.Intent, android.content.Intent, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x019a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17616c(com.truecaller.common.p156ui.avatar.AvatarXConfig r8, java.lang.String r9, java.lang.String r10, android.content.Intent r11, android.content.Intent r12, s1.w.d<? super android.app.Notification> r13) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p983a.C16289m.m17616c(com.truecaller.common.ui.avatar.AvatarXConfig, java.lang.String, java.lang.String, android.content.Intent, android.content.Intent, s1.w.d):java.lang.Object");
    }

    /* renamed from: d */
    public final AbstractC14920n m17615d() {
        return (AbstractC14920n) this.f45876b.getValue();
    }

    /* renamed from: e */
    public final C25453c m17614e() {
        return (C25453c) this.f45875a.getValue();
    }
}
