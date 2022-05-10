package p131c.p161d.p282e.p289l.p290d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.settings.SettingsCacheBehavior;
import java.util.concurrent.Executor;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p289l.p290d.p293h.C5269l;
import p131c.p161d.p282e.p289l.p290d.p293h.C5280r;
import p131c.p161d.p282e.p289l.p290d.p293h.C5286u;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p304p.C5429c;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5435a;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
import p131c.p161d.p282e.p289l.p290d.p304p.p306i.C5443b;
import p131c.p161d.p282e.p289l.p290d.p304p.p306i.C5446e;
/* renamed from: c.d.e.l.d.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/e.class */
public class C5197e {

    /* renamed from: a */
    public final C5395b f17858a = new C5395b();

    /* renamed from: b */
    public final C5128c f17859b;

    /* renamed from: c */
    public final Context f17860c;

    /* renamed from: d */
    public PackageManager f17861d;

    /* renamed from: e */
    public String f17862e;

    /* renamed from: f */
    public PackageInfo f17863f;

    /* renamed from: g */
    public String f17864g;

    /* renamed from: h */
    public String f17865h;

    /* renamed from: i */
    public String f17866i;

    /* renamed from: j */
    public String f17867j;

    /* renamed from: k */
    public String f17868k;

    /* renamed from: l */
    public C5286u f17869l;

    /* renamed from: m */
    public C5280r f17870m;

    /* renamed from: c.d.e.l.d.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/e$a.class */
    public class C5198a implements SuccessContinuation<C5436b, Void> {

        /* renamed from: a */
        public final /* synthetic */ String f17871a;

        /* renamed from: b */
        public final /* synthetic */ C5429c f17872b;

        /* renamed from: c */
        public final /* synthetic */ Executor f17873c;

        public C5198a(String str, C5429c cVar, Executor executor) {
            this.f17871a = str;
            this.f17872b = cVar;
            this.f17873c = executor;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Task<Void> mo8618a(C5436b bVar) throws Exception {
            try {
                C5197e.this.m24292a(bVar, this.f17871a, this.f17872b, this.f17873c, true);
                return null;
            } catch (Exception e) {
                C5192b.m24319a().m24314b("Error performing auto configuration.", e);
                throw e;
            }
        }
    }

    /* renamed from: c.d.e.l.d.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/e$b.class */
    public class C5199b implements SuccessContinuation<Void, C5436b> {

        /* renamed from: a */
        public final /* synthetic */ C5429c f17875a;

        public C5199b(C5197e eVar, C5429c cVar) {
            this.f17875a = cVar;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Task<C5436b> mo8618a(Void r3) throws Exception {
            return this.f17875a.mo23784a();
        }
    }

    /* renamed from: c.d.e.l.d.e$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/e$c.class */
    public class C5200c implements Continuation<Void, Object> {
        public C5200c(C5197e eVar) {
        }

        @Override // com.google.android.gms.tasks.Continuation
        /* renamed from: a */
        public Object mo8621a(Task<Void> task) throws Exception {
            if (task.mo8601e()) {
                return null;
            }
            C5192b.m24319a().m24314b("Error fetching settings.", task.mo8617a());
            return null;
        }
    }

    public C5197e(C5128c cVar, Context context, C5286u uVar, C5280r rVar) {
        this.f17859b = cVar;
        this.f17860c = context;
        this.f17869l = uVar;
        this.f17870m = rVar;
    }

    /* renamed from: e */
    public static String m24284e() {
        return C5269l.m24107e();
    }

    /* renamed from: a */
    public Context m24295a() {
        return this.f17860c;
    }

    /* renamed from: a */
    public C5429c m24294a(Context context, C5128c cVar, Executor executor) {
        C5429c a = C5429c.m23801a(context, cVar.m24464d().m24445b(), this.f17869l, this.f17858a, this.f17864g, this.f17865h, m24286c(), this.f17870m);
        a.m23794a(executor).mo8611a(executor, new C5200c(this));
        return a;
    }

    /* renamed from: a */
    public final C5435a m24290a(String str, String str2) {
        return new C5435a(str, str2, m24288b().m24058b(), this.f17865h, this.f17864g, CommonUtils.m7655a(CommonUtils.m7646e(m24295a()), str2, this.f17865h, this.f17864g), this.f17867j, DeliveryMechanism.determineFrom(this.f17866i).getId(), this.f17868k, "0");
    }

    /* renamed from: a */
    public final void m24292a(C5436b bVar, String str, C5429c cVar, Executor executor, boolean z) {
        if ("new".equals(bVar.f18397a)) {
            if (m24291a(bVar, str, z)) {
                cVar.m23796a(SettingsCacheBehavior.SKIP_CACHE_LOOKUP, executor);
            } else {
                C5192b.m24319a().m24314b("Failed to create app with Crashlytics service.", null);
            }
        } else if ("configured".equals(bVar.f18397a)) {
            cVar.m23796a(SettingsCacheBehavior.SKIP_CACHE_LOOKUP, executor);
        } else if (bVar.f18402f) {
            C5192b.m24319a().m24317a("Server says an update is required - forcing a full App update.");
            m24287b(bVar, str, z);
        }
    }

    /* renamed from: a */
    public void m24289a(Executor executor, C5429c cVar) {
        this.f17870m.m24068d().mo8607a(executor, new C5199b(this, cVar)).mo8607a(executor, new C5198a(this.f17859b.m24464d().m24445b(), cVar, executor));
    }

    /* renamed from: a */
    public final boolean m24291a(C5436b bVar, String str, boolean z) {
        return new C5443b(m24286c(), bVar.f18398b, this.f17858a, m24284e()).m23769a(m24290a(bVar.f18401e, str), z);
    }

    /* renamed from: b */
    public final C5286u m24288b() {
        return this.f17869l;
    }

    /* renamed from: b */
    public final boolean m24287b(C5436b bVar, String str, boolean z) {
        return new C5446e(m24286c(), bVar.f18398b, this.f17858a, m24284e()).m23769a(m24290a(bVar.f18401e, str), z);
    }

    /* renamed from: c */
    public String m24286c() {
        return CommonUtils.m7652b(this.f17860c, "com.crashlytics.ApiEndpoint");
    }

    /* renamed from: d */
    public boolean m24285d() {
        try {
            this.f17866i = this.f17869l.m24056c();
            this.f17861d = this.f17860c.getPackageManager();
            String packageName = this.f17860c.getPackageName();
            this.f17862e = packageName;
            PackageInfo packageInfo = this.f17861d.getPackageInfo(packageName, 0);
            this.f17863f = packageInfo;
            this.f17864g = Integer.toString(packageInfo.versionCode);
            this.f17865h = this.f17863f.versionName == null ? "0.0" : this.f17863f.versionName;
            this.f17867j = this.f17861d.getApplicationLabel(this.f17860c.getApplicationInfo()).toString();
            this.f17868k = Integer.toString(this.f17860c.getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            C5192b.m24319a().m24314b("Failed init", e);
            return false;
        }
    }
}
