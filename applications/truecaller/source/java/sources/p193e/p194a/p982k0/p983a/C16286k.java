package p193e.p194a.p982k0.p983a;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.service.TrueAccessibilityService;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p673d0.p674a.AbstractC12468y;
import p193e.p194a.p717f.AbstractC13706b;
import q3.a.x2.a1;
import q3.a.x2.f;
import q3.a.x2.k1;
import s1.z.c.l;
/* renamed from: e.a.k0.a.k */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/k.class */
public final class C16286k implements AbstractC16285j {

    /* renamed from: a */
    public final ComponentName f45866a;

    /* renamed from: b */
    public final a1<Boolean> f45867b = k1.a(Boolean.valueOf(mo17625d()));

    /* renamed from: c */
    public final C16287a f45868c = new C16287a(new Handler(Looper.getMainLooper()));

    /* renamed from: d */
    public final AbstractC19022f0 f45869d;

    /* renamed from: e */
    public final Context f45870e;

    /* renamed from: f */
    public final AbstractC13706b f45871f;

    /* renamed from: g */
    public final CallingSettings f45872g;

    /* renamed from: h */
    public final AbstractC19219a0 f45873h;

    /* renamed from: e.a.k0.a.k$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/k$a.class */
    public static final class C16287a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16287a(Handler handler) {
            super(handler);
            C16286k.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C16286k c16286k = C16286k.this;
            c16286k.f45867b.setValue(Boolean.valueOf(c16286k.mo17625d()));
            Context context = C16286k.this.f45870e;
            StringBuilder m8728C = C22128a.m8728C("AS is turned ");
            m8728C.append(C16286k.this.mo17625d() ? "on" : " off");
            Toast.makeText(context, m8728C.toString(), 0).show();
        }
    }

    @Inject
    public C16286k(AbstractC19022f0 abstractC19022f0, Context context, AbstractC13706b abstractC13706b, CallingSettings callingSettings, AbstractC19219a0 abstractC19219a0) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC13706b, "inCallUi");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC19219a0, "permissionUtil");
        this.f45869d = abstractC19022f0;
        this.f45870e = context;
        this.f45871f = abstractC13706b;
        this.f45872g = callingSettings;
        this.f45873h = abstractC19219a0;
        this.f45866a = new ComponentName(context.getApplicationContext(), TrueAccessibilityService.class);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: a */
    public boolean mo17627a() {
        return this.f45869d.mo14245a();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: c */
    public void mo17626c(boolean z) {
        int i = z ? 1 : 2;
        Context applicationContext = this.f45870e.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        applicationContext.getPackageManager().setComponentEnabledSetting(this.f45866a, i, 1);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: d */
    public boolean mo17625d() {
        return C18334g0.m15242Z(this.f45870e);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: f */
    public boolean mo17624f() {
        return this.f45871f.mo21263f();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: g */
    public int mo17623g() {
        return AbstractC12468y.m22963g(this.f45873h);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: h */
    public boolean mo17622h() {
        Context applicationContext = this.f45870e.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        int componentEnabledSetting = applicationContext.getPackageManager().getComponentEnabledSetting(this.f45866a);
        boolean z = true;
        if (componentEnabledSetting != 0) {
            z = componentEnabledSetting == 1;
        }
        return z;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: i */
    public void mo17621i() {
        ContentResolver contentResolver;
        Uri uriFor = Settings.Secure.getUriFor("enabled_accessibility_services");
        if (uriFor == null || (contentResolver = this.f45870e.getContentResolver()) == null) {
            return;
        }
        contentResolver.registerContentObserver(uriFor, false, this.f45868c);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: j */
    public f mo17620j() {
        return this.f45867b;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16285j
    /* renamed from: k */
    public int mo17619k() {
        return this.f45872g.getInt("callerIdLastYPosition", 0);
    }
}
