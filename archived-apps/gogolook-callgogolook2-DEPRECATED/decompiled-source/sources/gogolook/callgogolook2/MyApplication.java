package gogolook.callgogolook2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.multidex.MultiDexApplication;
import androidx.work.Configuration;
import com.appsflyer.adrevenue.AppsFlyerAdRevenue;
import com.appsflyer.adrevenue.adnetworks.AppsFlyerAdRevenueWrapperType;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.campaign.Campaign165ReportActivity;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.job.DailySyncJobWorker;
import gogolook.callgogolook2.main.dialer.DialerUtils;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.service.WhoscallService;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.Callable;
import kotlinx.coroutines.Dispatchers;
import net.sqlcipher.database.SQLiteDatabase;
import p065f.p066a.p068b.p069a.AbstractC4246d;
import p065f.p066a.p068b.p069a.C4258k;
import p081h.p119d.p120a.C5776l;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6151v;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p160h.p179e.p180a.AbstractC6342c;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p184j.C6369d;
import p081h.p160h.p179e.p180a.p185l.C6373a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p188o.C6400b;
import p081h.p160h.p179e.p180a.p188o.C6402c;
import p081h.p160h.p179e.p180a.p188o.EnumC6399a;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.C11037a;
import p459j.p460a.p463b0.C11142n;
import p459j.p460a.p463b0.EnumC11144p;
import p459j.p460a.p463b0.p466s.C11243e;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.C11517b;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p488f.C11817a;
import p459j.p460a.p474c0.p488f.C11822c;
import p459j.p460a.p474c0.p488f.C11827e;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12206r0;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.AbstractC12404c;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p537m.C13015a;
import p459j.p460a.p538m0.C13026i;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13207s;
import p459j.p460a.p564s.C13425c0;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p566t.C13621a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p576w.C13734e;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C13987e3;
import p459j.p460a.p582w0.C14000f2;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14031j;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14094o;
import p459j.p460a.p582w0.C14098o2;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14172t3;
import p459j.p460a.p582w0.C14195v2;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14216x2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p587d5.C13977d;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p588e5.C13993a;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14339d;
import p459j.p460a.p604y0.p610e.AbstractC14587d;
import p459j.p460a.p604y0.p610e.C14577c;
import p626l.C14989s;
import p660rx.Single;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication.class */
public class MyApplication extends MultiDexApplication implements Configuration.Provider {

    /* renamed from: a */
    public static String[] f10451a = {"whoscall.db"};

    /* renamed from: b */
    public static final String f10452b = MyApplication.class.getSimpleName();

    /* renamed from: c */
    public static Context f10453c;

    /* renamed from: gogolook.callgogolook2.MyApplication$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$a.class */
    public static final class C4328a extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C12153d0.m6985c(MyApplication.f10452b, "Carrier config changed. Reloading MMS config.");
            C11828f.m8172u();
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$b.class */
    public class C4329b extends Thread {
        public C4329b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            MyApplication.this.m29017k();
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$c.class */
    public class C4330c extends AbstractC6342c {
        public C4330c(MyApplication myApplication) {
        }

        @Override // p081h.p160h.p179e.p180a.AbstractC6342c
        /* renamed from: a */
        public void mo23197a() {
            C14216x2.m2208a("App:onCreateAsync:trackFirstOpen:+");
            if (!C13915b3.m3062a("had_send_open_event", false)) {
                C14289m.m1845k();
                C13915b3.m3055b("had_send_open_event", true);
            }
            C14031j.m2737c();
            C6373a.m22918a("topic_region", C14017g4.m2810n());
            C6373a.m22918a("topic_version", String.valueOf(C14017g4.m2807q()));
            C14216x2.m2208a("App:onCreateAsync:trackFirstOpen:-");
            C14216x2.m2208a("App:onCreateAsync:AuthLogin:+");
            if (C14217x3.m2107z()) {
                if (C14137r4.m2368j()) {
                    C14137r4.m2381a((AbstractC6378d) null);
                } else if (C14137r4.m2367k()) {
                    C14137r4.m2387a();
                } else if (C14137r4.m2372f() && C6364a.m22985a(C6369d.m22943e())) {
                    C6364a.m22983a(C6369d.m22943e(), "scope_changed: ", (AbstractC6378d) null);
                } else if (!C14137r4.m2372f() && C6364a.m22985a(C6369d.m22944d())) {
                    C6364a.m22983a(C6369d.m22944d(), "scope_changed: ", (AbstractC6378d) null);
                }
            }
            C14216x2.m2208a("App:onCreateAsync:AuthLogin:-");
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$d.class */
    public class C4331d implements C13640c.AbstractC13645e {
        public C4331d() {
        }

        @Override // p459j.p460a.p568u.C13640c.AbstractC13645e
        /* renamed from: a */
        public void mo1273a(int i, boolean z) {
            if (z) {
                MyApplication.this.m29015m();
                C13909c.m3070c();
                C13963d3.m2960k();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$e.class */
    public class C4332e extends Thread {
        public C4332e() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C5776l.m24484a(MyApplication.this).m24486a();
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$f.class */
    public class C4333f extends Thread {
        public C4333f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            C5776l.m24484a(MyApplication.this).m24486a();
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$g.class */
    public class C4334g implements Application.ActivityLifecycleCallbacks {
        public C4334g(MyApplication myApplication) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C14094o.m2564a(true);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$h.class */
    public class ComponentCallbacks2C4335h implements ComponentCallbacks2 {
        public ComponentCallbacks2C4335h(MyApplication myApplication) {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(android.content.res.Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i == 20) {
                C14094o.m2559c();
                C14094o.m2564a(false);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$i.class */
    public class C4336i implements AbstractC12181l0.AbstractC12185d {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11516a f10458a;

        /* renamed from: b */
        public final /* synthetic */ int f10459b;

        /* renamed from: c */
        public final /* synthetic */ int f10460c;

        public C4336i(MyApplication myApplication, AbstractC11516a aVar, int i, int i2) {
            this.f10458a = aVar;
            this.f10459b = i;
            this.f10460c = i2;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0.AbstractC12185d
        /* renamed from: a */
        public void mo6866a(int i) {
            this.f10458a.mo9407b(i).mo6864a(this.f10459b, this.f10460c);
        }
    }

    /* renamed from: gogolook.callgogolook2.MyApplication$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/MyApplication$j.class */
    public static final class RunnableC4337j implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12170i f10461a;

        public RunnableC4337j(AbstractC12170i iVar) {
            this.f10461a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f10461a.mo6916a("bugle_use_mms_api", true);
            C4258k.m29200a(false);
        }
    }

    static {
        C6298e.m23344b(29);
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m29031a(C11507b.C11508a aVar) {
        aVar.m9447a("isStrangerSmsPopup", true);
        aVar.m9447a("smsDialogDirectly", true);
        return null;
    }

    /* renamed from: a */
    public static void m29035a(int i) {
        if (i == 1) {
            C6344e.m23191b(true);
        } else if (i == 2) {
            C12378a.f27903h = "https://api-production.whoscall.com";
            C12378a.f27904i = "https://num-production.whoscall.com";
            C12378a.f27905j = "https://apis.whoscall.com";
            C12378a.f27906k = "https://apiscdn.whoscall.com";
            C12378a.f27907l = "https://textsearch-production.whoscall.com";
            C12378a.f27909n = "https://ind-api.whoscall.com/analytics/sms";
            C12378a.f27908m = "https://settings.whoscall.com";
            C6344e.m23191b(true);
            return;
        } else if (i == 3) {
            C12378a.f27903h = "https://api-staging.whoscall.com:443";
            C12378a.f27904i = "https://num-staging.whoscall.com";
            C12378a.f27905j = "https://apis-staging.whoscall.com";
            C12378a.f27906k = "https://apiscdn-staging.whoscall.com";
            C12378a.f27907l = "https://searchapi-staging.whoscall.com";
            C12378a.f27909n = "https://ind-api.whoscall.com/analytics_staging/sms";
            C12378a.f27908m = "https://settings-staging.whoscall.com";
            C6344e.m23191b(false);
            return;
        }
        C12378a.f27903h = "https://api.whoscall.com";
        C12378a.f27904i = "https://num.whoscall.com";
        C12378a.f27905j = "https://apis.whoscall.com";
        C12378a.f27906k = "https://apiscdn.whoscall.com";
        C12378a.f27907l = "https://searchapi.whoscall.com";
        C12378a.f27909n = "https://ind-api.whoscall.com/analytics/sms";
        C12378a.f27908m = "https://settings.whoscall.com";
    }

    /* renamed from: a */
    public static void m29034a(Context context) {
        context.registerReceiver(new C4328a(), new IntentFilter("android.telephony.action.CARRIER_CONFIG_CHANGED"));
    }

    /* renamed from: a */
    public static void m29033a(Context context, AbstractC12170i iVar, AbstractC4246d dVar) {
        C4258k.m29203a(new C11822c(context));
        C4258k.m29202a(dVar);
        C4258k.m29201a(new C11827e(context));
        C4258k.m29199b(true);
        iVar.mo6916a("bugle_use_mms_api", true);
        C4258k.m29200a(false);
        iVar.mo6922a(new RunnableC4337j(iVar));
    }

    /* renamed from: o */
    public static Context m29013o() {
        return f10453c;
    }

    @RequiresApi(26)
    /* renamed from: a */
    public final void m29036a() {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(C6298e.m23350a(this, C14195v2.f31720a, C14206w4.m2225a((int) R$string.newscenter_notification_title), C14206w4.m2225a((int) R$string.newscenter_notification_setting)));
            arrayList.add(C6298e.m23341c(this, C14195v2.f31721b, C14206w4.m2225a((int) R$string.foreground_settings_title), C14206w4.m2225a((int) R$string.foreground_settings_about), false));
            arrayList.add(C6298e.m23343b(this, C14195v2.f31722c, C14206w4.m2225a((int) R$string.notification_channel_in_call_screen_title), C14206w4.m2225a((int) R$string.notification_channel_in_call_screen_desc), false));
            arrayList.add(C6298e.m23348a(this, C14195v2.f31723d, C14206w4.m2225a((int) R$string.notification_fcm_title), C14206w4.m2225a((int) R$string.notification_fcm_description), true));
            arrayList.add(C6298e.m23348a(this, C14195v2.f31724e, C14206w4.m2225a((int) R$string.notification_channel_sms), C14206w4.m2225a((int) R$string.notification_channel_sms_desc), true));
            C6298e.m23347a(this, arrayList);
        } catch (NullPointerException e) {
        }
    }

    /* renamed from: a */
    public void m29030a(AbstractC11516a aVar) {
        C12206r0.m6802a("app.initializeAsync");
        m29025c(aVar);
        C11828f.m8173t();
        C12206r0.m6803a();
    }

    @Override // androidx.multidex.MultiDexApplication, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        f10453c = this;
        new C4329b().start();
    }

    /* renamed from: b */
    public final C13734e m29029b() {
        return C13734e.m3574a(this);
    }

    /* renamed from: b */
    public void m29027b(AbstractC11516a aVar) {
        C12206r0.m6802a("app.initializeSync");
        Context a = aVar.mo9412a();
        AbstractC12170i c = aVar.mo9406c();
        aVar.mo9408b();
        AbstractC11528g f = aVar.mo9403f();
        m29033a(a, c, aVar.mo9405d());
        C11817a.m8243a(a);
        f.mo9241j();
        if (C14017g4.m2803u()) {
            m29034a(a);
        }
        C12206r0.m6803a();
    }

    /* renamed from: c */
    public C13773d m29026c() {
        return C13773d.m3484a(f10453c, m29029b());
    }

    /* renamed from: c */
    public final void m29025c(AbstractC11516a aVar) {
        int a = aVar.mo9408b().mo6909a("shared_preferences_version", -1);
        int parseInt = Integer.parseInt(getString(R$string.pref_version));
        if (parseInt > a) {
            C12153d0.m6985c("MessagingApp", "Upgrading shared prefs from " + a + " to " + parseInt);
            try {
                aVar.mo9408b().mo6864a(a, parseInt);
                AbstractC12181l0.m6900a(new C4336i(this, aVar, a, parseInt));
                aVar.mo9408b().mo6905b("shared_preferences_version", parseInt);
            } catch (Exception e) {
                C12153d0.m6986b("MessagingApp", "Failed to upgrade shared prefs", e);
            }
        } else if (parseInt < a) {
            C12153d0.m6987b("MessagingApp", "Shared prefs downgrade requested and ignored. oldVersion = " + a + ", newVersion = " + parseInt);
        }
    }

    /* renamed from: d */
    public final void m29024d() {
        C14216x2.m2208a("App:onCreateSync:init:set_api_gateway:+");
        m29035a(0);
        C14216x2.m2208a("App:onCreateSync:init:set_api_gateway:-");
        C14216x2.m2208a("App:onCreateSync:init:add_dialer_dynamic_shortcut:+");
        DialerUtils.m27818b(this);
        C14216x2.m2208a("App:onCreateSync:init:add_dialer_dynamic_shortcut:-");
    }

    /* renamed from: e */
    public final void m29023e() {
        Trace b = C10062a.m13512b("facebook_sdk_initial");
        C6135n.m23756a(true);
        C6135n.m23750c();
        C6135n.m23751b(false);
        C6135n.m23757a(EnumC6151v.APP_EVENTS);
        b.stop();
    }

    /* renamed from: f */
    public /* synthetic */ Void m29022f() throws Exception {
        m29019i();
        return null;
    }

    @TargetApi(14)
    /* renamed from: g */
    public final void m29021g() {
        if (Build.VERSION.SDK_INT >= 14) {
            registerActivityLifecycleCallbacks(new C4334g(this));
            registerComponentCallbacks(new ComponentCallbacks2C4335h(this));
        }
    }

    @Override // androidx.work.Configuration.Provider
    @NonNull
    public Configuration getWorkManagerConfiguration() {
        return new Configuration.Builder().setJobSchedulerJobIdRange(55000, 57000).build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* renamed from: h */
    public final void m29020h() {
        long j;
        String valueOf = String.valueOf(C14017g4.m2807q());
        if (!valueOf.equals("0")) {
            String b = C13915b3.m3056b("VersionCodeRecord", "");
            List asList = Arrays.asList(b.split(","));
            int size = asList.size();
            if (!asList.contains(valueOf)) {
                C13640c.m3745d().m3750a(true, (C13640c.AbstractC13645e) null);
                if (b.equals("")) {
                    C14217x3.m2198a(System.currentTimeMillis());
                    C13915b3.m3043f();
                } else {
                    C13915b3.m3057b("app_update_time", System.currentTimeMillis());
                    while (true) {
                        size--;
                        j = 0;
                        if (size < 0) {
                            break;
                        } else if (!((String) asList.get(size)).equals("")) {
                            try {
                                j = Long.valueOf((String) asList.get(size)).longValue();
                                break;
                            } catch (Exception e) {
                                e.printStackTrace();
                                j = 0;
                            }
                        }
                    }
                    C14216x2.m2208a("SecurityPrefs.onAppVersionUpgrade:+");
                    C14092n3.m2586a(j);
                    C14216x2.m2208a("SecurityPrefs.onAppVersionUpgrade:-");
                    C14216x2.m2208a("PrivacyConsentUtils.onAppVersionUpgrade:+");
                    C13963d3.m2975a(j);
                    C14216x2.m2208a("PrivacyConsentUtils.onAppVersionUpgrade:-");
                    C6402c.m22776e();
                    if (j < 10040420) {
                        try {
                            try {
                                C13008c.m4798d();
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        } catch (Exception e3) {
                            C13973d4.m2952a(e3);
                        }
                    }
                    if (j < 10040504) {
                        C13915b3.m3055b("isNumberTransmissionAccepted", true);
                    }
                    if (j < 10040520) {
                        C13008c.m4798d();
                    }
                    if (j < 10040521) {
                        new C4332e().start();
                    }
                    if (j < 10040570) {
                        new C4333f().start();
                    }
                    if (j < 40700000 && C14017g4.m2830F()) {
                        boolean z = !C13915b3.m3067a("isContactSmsPopup") && !C13915b3.m3067a("isStrangerSmsPopup");
                        boolean z2 = new Random().nextInt(100) < 30;
                        if (z && z2) {
                            C13978e.f31386a.m9457a(C11037a.f24828a);
                        }
                    }
                    if (j >= 52400000 && j < 52600000 && !C12612g0.m5762o() && !C12612g0.m5766k()) {
                        C13915b3.m3055b("HasInputDDD", true);
                    }
                    if (j >= 61000000 && j < 61200000) {
                        new C13207s().m4414a(this);
                    }
                    if (j < 61200000) {
                        C13026i.m4762a(this, f10451a);
                    }
                    if (j < 62200000) {
                        int a = C13915b3.m3066a("PageFilter" + EnumC11144p.CALLLOG.ordinal(), 0);
                        C13915b3.m3048d("PageFilter" + EnumC11144p.CALLLOG.ordinal(), a == 0 ? 7 : C11142n.m10205a(a - 1));
                    }
                    if (j < 62800000) {
                        C13915b3.m3055b("incall_service_enabled", CallUtils.m26527q());
                        C14339d.m1524a(asList);
                    }
                    if (j == 62900122) {
                        C13915b3.m3055b("is_loaded_realm_log_dirty", true);
                    }
                    if (j < 63000000 && Locale.getDefault() != C14098o2.m2551a()) {
                        Locale.setDefault(C14098o2.m2551a());
                    }
                    if (j < 63700000) {
                        C13915b3.m3061a("calldialog_portrait_y");
                        C13915b3.m3061a("calldialog_landscape_y");
                    }
                    if (j < 64400000) {
                        if (C13915b3.m3067a("isStrangerIncomingPopup")) {
                            C13915b3.m3055b("is_stranger_call_popup", C13915b3.m3062a("isStrangerIncomingPopup", false));
                        }
                        if (C13915b3.m3067a("isContactIncomingPopup")) {
                            C13915b3.m3055b("is_contact_call_popup", C13915b3.m3062a("isContactIncomingPopup", false));
                        }
                    }
                    if (j < 65000000) {
                        C13057d.m4671g();
                    }
                    if (j < 65400000) {
                        C14021h2.m2778h();
                        C13760c.m3488c().m3490a(new C14172t3(Dispatchers.getUnconfined()), (C13760c.AbstractC13762b) null, (AbstractC12402b<AbstractC12404c>) null);
                    }
                    if (j < 66300000 && CallUtils.m26565b()) {
                        C13993a.m2920a();
                    }
                    if (j < 66700000) {
                        C13977d.m2949a();
                    }
                    if (j < 67100000) {
                        C14094o.m2568a();
                    }
                    if (j < 67500000) {
                        C11876e eVar = new C11876e();
                        if (eVar.m8004b()) {
                            eVar.m8014a(this);
                        }
                        C14063l4.m2693I();
                    }
                }
                HashSet<String> hashSet = new HashSet(asList);
                StringBuilder sb = new StringBuilder();
                for (String str : hashSet) {
                    sb.append(str);
                    sb.append(",");
                }
                sb.append(valueOf);
                sb.append(",");
                C13915b3.m3044e("VersionCodeRecord", sb.toString());
                C13987e3.m2930b();
                CallUtils.m26571a(C13915b3.m3062a("incall_service_enabled", false));
            }
        }
    }

    /* renamed from: i */
    public final void m29019i() {
        C14216x2.m2208a("App:onCreateAsync:+");
        C14216x2.m2208a("App:onCreateAsync:ggaFormat:+");
        C6357a.m23019b(String.valueOf(C14017g4.m2807q()), C14017g4.m2810n());
        C14216x2.m2208a("App:onCreateAsync:ggaFormat:-");
        C14216x2.m2208a("App:onCreateAsync:event:+");
        C6344e.m23194a("gogolook.callgogolook2.developmode.LogManager", "putEventDiaperLog");
        C14216x2.m2208a("App:onCreateAsync:event:-");
        LogManager.m28568c("MyApplication onCreate");
        C14216x2.m2208a("App:onCreateAsync:ab:+");
        if (C13640c.m3745d().m3755a(new C4331d()) != -1) {
            m29015m();
        }
        C14216x2.m2208a("App:onCreateAsync:ab:-");
        C14216x2.m2208a("App:onCreateAsync:AdSDK:+");
        AdUtils.m28804e();
        C14216x2.m2208a("App:onCreateAsync:AdSDK:-");
        C14216x2.m2208a("App:onCreateAsync:onAppUpgrade:+");
        m29020h();
        C14216x2.m2208a("App:onCreateAsync:onAppUpgrade:-");
        C14216x2.m2208a("App:onCreateAsync:updateCountryCode:+");
        C14217x3.m2204D();
        C14216x2.m2208a("App:onCreateAsync:updateCountryCode:-");
        C14216x2.m2208a("App:onCreateAsync:monitorCache:+");
        m29021g();
        C14216x2.m2208a("App:onCreateAsync:monitorCache:-");
        C14216x2.m2208a("App:onCreateAsync:firebase:+");
        FirebaseAnalytics.getInstance(this);
        C14216x2.m2208a("App:onCreateAsync:firebase:-");
        C14216x2.m2208a("App:onCreateAsync:google:+");
        C14000f2.m2902b();
        C14216x2.m2208a("App:onCreateAsync:google:-");
        C14216x2.m2208a("App:onCreateAsync:autoCate:+");
        C14132r.m2396d();
        C14216x2.m2208a("App:onCreateAsync:autoCate:-");
        C14216x2.m2208a("App:onCreateAsync:dailySyncJob:+");
        DailySyncJobWorker.m27937b(m29013o());
        C14216x2.m2208a("App:onCreateAsync:dailySyncJob:-");
        C14216x2.m2208a("App:onCreateAsync:inCallService:+");
        if (!CallUtils.m26546d()) {
            CallUtils.m26571a(false);
        }
        C14216x2.m2208a("App:onCreateAsync:inCallService:-");
        C14216x2.m2208a("App:onCreateAsync:Campaign165ReportActivity:+");
        try {
            getPackageManager().setComponentEnabledSetting(new ComponentName(this, Campaign165ReportActivity.class), C13015a.m4769b() ? 1 : 2, 1);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        C14216x2.m2208a("App:onCreateAsync:Campaign165ReportActivity:-");
        if (C13891a.m3144r()) {
            C14216x2.m2208a("App:onCreateAsync:applySmsDialogSettingForNewUser:+");
            C13938c4.m3013a();
            C14216x2.m2208a("App:onCreateAsync:applySmsDialogSettingForNewUser:-");
            C14216x2.m2208a("App:onCreateAsync:InitVasSettingConfigManager:+");
            C14577c.f32580h.m1083a(this, (AbstractC14587d) null);
            C14216x2.m2208a("App:onCreateAsync:InitVasSettingConfigManager:-");
        }
        C14216x2.m2208a("App:onCreateAsync:markFirstTimeDefaultSmsEnabled:+");
        C12810o.m5229p();
        C14216x2.m2208a("App:onCreateAsync:markFirstTimeDefaultSmsEnabled:-");
        C14216x2.m2208a("App:onCreateAsync:-");
    }

    /* renamed from: j */
    public final void m29018j() {
        new C13621a(this).m3828b();
        C14216x2.m2208a("App:onCreateSync:checkAndSetWebViewDataDirectorySuffix:+");
        Exception a = C6298e.m23346a(getApplicationInfo().processName);
        if (a != null) {
            C13973d4.m2952a(a);
        }
        C14216x2.m2208a("App:onCreateSync:checkAndSetWebViewDataDirectorySuffix:-");
        C14216x2.m2208a("App:onCreateSync:init:+");
        m29024d();
        C14216x2.m2208a("App:onCreateSync:init:-");
        C14216x2.m2208a("App:onCreateSync:createNotificationChannel:+");
        if (C6298e.m23357a()) {
            m29036a();
        }
        C14216x2.m2208a("App:onCreateSync:createNotificationChannel:-");
        C14216x2.m2208a("App:onCreateSync:developMode:+");
        C13565v.m3921g().mo3928a((Context) this);
        C14216x2.m2208a("App:onCreateSync:developMode:-");
        C14216x2.m2208a("App:onCreateSync:gga:+");
        C6344e.m23195a(this, "whoscall", C14017g4.m2810n(), "whoscall_android", "5Ic9K03pY07J88FIZ8jQ4TTD3r8sAUcv", new C4330c(this));
        C6344e.m23193a(false);
        C14216x2.m2208a("App:onCreateSync:gga:-");
        C14216x2.m2208a("App:onCreateSync:realm:+");
        Realm.init(this);
        C14216x2.m2208a("App:onCreateSync:realm:-");
        C14216x2.m2208a("App:onCreateSync:ggaConfig:+");
        C6344e.m23191b(C13565v.m3921g().m3923f());
        C14216x2.m2208a("App:onCreateSync:ggaConfig:-");
        C14216x2.m2208a("App:onCreateSync:sqlcipher.loadLibs:+");
        SQLiteDatabase.loadLibs(this);
        C14216x2.m2208a("App:onCreateSync:sqlcipher.loadLibs:-");
        C14216x2.m2208a("App:onCreateSync:offlinedb:+");
        C6400b.m22806b().m22807a(getDatabasePath("db").getParentFile().getAbsolutePath() + "/", EnumC6399a.TYPE_DB_COMMON_OFFLINE, EnumC6399a.TYPE_DB_PERSONAL_OFFLINE);
        C14216x2.m2208a("App:onCreateSync:offlinedb:-");
        C14216x2.m2208a("App:onCreateSync:whoscallService:+");
        if (!C13878a3.m3254H() || !C13878a3.m3215e(this)) {
            C6298e.m23353a(this, new Intent(this, WhoscallService.class));
        }
        C14216x2.m2208a("App:onCreateSync:whoscallService:-");
        C14216x2.m2208a("App:onCreateSync:rageNotification:+");
        if (C13565v.m3921g().m23335b()) {
            C13425c0.m4045i().m23322a(true);
        }
        C14216x2.m2208a("App:onCreateSync:rageNotification:-");
        C14216x2.m2208a("App:onCreateSync:ctc:+");
        C11243e.m9942f();
        C14216x2.m2208a("App:onCreateSync:ctc:-");
        C14216x2.m2208a("App:onCreateSync:SMS_FactoryImpl.register+");
        C11517b.m9410a(getApplicationContext(), this);
        C14216x2.m2208a("App:onCreateSync:SMS_FactoryImpl.register-");
        C14216x2.m2208a("App:onCreateSync:setupWCAdSdk:+");
        AdUtils.m28815a(this, 2L);
        C14216x2.m2208a("App:onCreateSync:setupWCAdSdk:-");
        C14216x2.m2208a("App:onCreateSync:setupAppsFlyerAdRevenue:+");
        m29016l();
        C14216x2.m2208a("App:onCreateSync:setupAppsFlyerAdRevenue:-");
        C14216x2.m2208a("App:onCreateSync:initializeFacebookSdk:+");
        m29023e();
        C14216x2.m2208a("App:onCreateSync:initializeFacebookSdk:-");
        Single.fromCallable(new Callable() { // from class: j.a.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return MyApplication.this.m29022f();
            }
        }).subscribeOn(Schedulers.computation()).subscribe();
    }

    /* renamed from: k */
    public final void m29017k() {
        Dispatchers.getMain();
    }

    /* renamed from: l */
    public final void m29016l() {
        Trace b = C10062a.m13512b("appsflyer_ad_revenue_sdk_init_time");
        AppsFlyerAdRevenue.Builder builder = new AppsFlyerAdRevenue.Builder(this);
        builder.addNetworks(AppsFlyerAdRevenueWrapperType.MOPUB);
        try {
            AppsFlyerAdRevenue.initialize(builder.build());
            AppsFlyerAdRevenue.moPubWrapper().recordImpressionData();
        } catch (IllegalStateException e) {
            C13973d4.m2952a(e);
        }
        b.stop();
    }

    /* renamed from: m */
    public final void m29015m() {
        C10062a.m13511c().m13515a(C13640c.m3745d().m3753a("perf_enable"));
    }

    @Override // android.app.Application
    @TargetApi(16)
    public void onCreate() {
        Trace b = C10062a.m13512b("app_create_time");
        C14216x2.m2208a("App:onCreate:+");
        super.onCreate();
        if (f10453c == null) {
            f10453c = this;
        }
        m29018j();
        C14216x2.m2208a("App:onCreate:-");
        b.stop();
    }
}
