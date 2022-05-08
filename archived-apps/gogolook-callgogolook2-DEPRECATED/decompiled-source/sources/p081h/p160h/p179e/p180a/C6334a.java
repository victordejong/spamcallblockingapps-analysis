package p081h.p160h.p179e.p180a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.criteo.sync.sdk.AdvertisingInfoLoader;
import com.gogolook.whoscallsdk.core.realm.WCRealmManager;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p182h.C6355a;
import p081h.p160h.p179e.p180a.p183i.C6363f;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6376b;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p186m.AsyncTaskC6380f;
import p081h.p160h.p179e.p180a.p186m.AsyncTaskC6381g;
import p081h.p160h.p179e.p180a.p186m.AsyncTaskC6383i;
import p081h.p160h.p179e.p180a.p186m.C6375a;
import p081h.p160h.p179e.p180a.p190p.C6428a;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p081h.p160h.p179e.p180a.p190p.C6431d;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6437h;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.C6441l;
/* renamed from: h.h.e.a.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/a.class */
public class C6334a {

    /* renamed from: g */
    public static String f15731g;

    /* renamed from: h */
    public static String f15732h;

    /* renamed from: i */
    public static String f15733i;

    /* renamed from: j */
    public static String f15734j;

    /* renamed from: a */
    public Context f15735a = null;

    /* renamed from: b */
    public BlockingQueue<Runnable> f15736b = null;

    /* renamed from: c */
    public ThreadPoolExecutor f15737c = null;

    /* renamed from: d */
    public BlockingQueue<Runnable> f15738d = null;

    /* renamed from: e */
    public ThreadPoolExecutor f15739e = null;

    /* renamed from: f */
    public Map<String, AsyncTaskC6380f> f15740f = null;

    /* renamed from: h.h.e.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/a$a.class */
    public static final class ComponentCallbacks2C6335a implements ComponentCallbacks2 {
        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i == 20 || i == 80) {
                C6438i.m22578d("flush sdk api queue");
                C6334a.m23211s().m23213q();
            }
        }
    }

    /* renamed from: h.h.e.a.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/a$b.class */
    public class RunnableC6336b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C6341b f15741a;

        /* renamed from: b */
        public final /* synthetic */ long f15742b;

        /* renamed from: c */
        public final /* synthetic */ long f15743c;

        public RunnableC6336b(C6341b bVar, long j, long j2) {
            this.f15741a = bVar;
            this.f15742b = j;
            this.f15743c = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            byte[] c = C6341b.m23202c(this.f15741a);
            if (c != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", C6428a.m22650b(C6431d.m22622b(C6334a.this.f15735a), c));
                contentValues.put("_type", Integer.valueOf(this.f15741a.f15772r));
                contentValues.put(BlockLogRealmObject.MODE, Integer.valueOf(this.f15741a.f15771q));
                C6370k.m22930b(C6334a.this.f15735a).m22931b(contentValues);
                C6334a.this.m23267a(this.f15742b, this.f15743c);
            }
        }
    }

    /* renamed from: h.h.e.a.a$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/a$c.class */
    public class C6337c extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ C6341b f15745a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC6378d f15746b;

        /* renamed from: c */
        public final /* synthetic */ boolean f15747c;

        public C6337c(C6341b bVar, AbstractC6378d dVar, boolean z) {
            this.f15745a = bVar;
            this.f15746b = dVar;
            this.f15747c = z;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            C6334a.this.m23259a(this.f15745a, i, jSONObject, this.f15746b, this.f15747c);
        }
    }

    /* renamed from: h.h.e.a.a$d */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/a$d.class */
    public class C6338d extends AbstractC6376b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6376b f15749a;

        /* renamed from: b */
        public final /* synthetic */ C6375a f15750b;

        public C6338d(AbstractC6376b bVar, C6375a aVar) {
            this.f15749a = bVar;
            this.f15750b = aVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22663a() {
            C6334a.this.f15740f.remove(this.f15750b.f15865d);
            AbstractC6376b bVar = this.f15749a;
            if (bVar != null) {
                bVar.mo22663a();
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22662a(int i, ArrayList<AbstractC6377c> arrayList) {
            AbstractC6376b bVar = this.f15749a;
            if (bVar != null) {
                bVar.mo22662a(i, arrayList);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22661a(String str) {
            this.f15749a.mo22661a(str);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22660a(ArrayList<AbstractC6377c> arrayList) {
            C6334a.this.f15740f.remove(this.f15750b.f15865d);
            this.f15749a.mo22660a(arrayList);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22659a(ArrayList<AbstractC6377c> arrayList, C6429b bVar) {
            C6334a.this.f15740f.remove(this.f15750b.f15865d);
            AbstractC6376b bVar2 = this.f15749a;
            if (bVar2 != null) {
                bVar2.mo22659a(arrayList, bVar);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: b */
        public void mo22658b() {
            AbstractC6376b bVar = this.f15749a;
            if (bVar != null) {
                bVar.mo22658b();
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: b */
        public void mo22657b(ArrayList<AbstractC6377c> arrayList) {
            C6334a.this.f15740f.remove(this.f15750b.f15865d);
            AbstractC6376b bVar = this.f15749a;
            if (bVar != null) {
                bVar.mo22657b(arrayList);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: c */
        public void mo22656c(ArrayList<AbstractC6377c> arrayList) {
            AbstractC6376b bVar = this.f15749a;
            if (bVar != null) {
                bVar.mo22656c(arrayList);
            }
        }
    }

    /* renamed from: h.h.e.a.a$e */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/a$e.class */
    public class AsyncTaskC6339e extends AsyncTask<Object, Object, Object> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6342c f15752a;

        public AsyncTaskC6339e(AbstractC6342c cVar) {
            this.f15752a = cVar;
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) {
            Object invoke;
            C6334a.this.m23224f();
            C6334a.this.m23214p();
            if (!TextUtils.isEmpty(C6334a.f15731g) && TextUtils.isEmpty(C6431d.m22619b(C6334a.this.f15735a, "pref_ab_did", (String) null))) {
                C6431d.m22612d(C6334a.this.f15735a, "pref_ab_did", C6334a.f15731g.substring(C6334a.f15731g.length() - 2));
            }
            C6334a.this.m23225e();
            try {
                Integer num = (Integer) Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, C6334a.this.f15735a);
                if (!(num == null || num.intValue() != 0 || (invoke = Class.forName(AdvertisingInfoLoader.AdvertisingIdClientClassName).getMethod("getAdvertisingIdInfo", Context.class).invoke(null, C6334a.this.f15735a)) == null)) {
                    String str = (String) invoke.getClass().getMethod("getId", new Class[0]).invoke(invoke, new Object[0]);
                    if (TextUtils.isEmpty(C6334a.f15731g)) {
                        String unused = C6334a.f15731g = C6432e.m22598b(str);
                        C6431d.m22612d(C6334a.this.f15735a, "pref_ab_did", C6334a.f15731g.substring(C6334a.f15731g.length() - 2));
                        C6431d.m22618b(C6334a.this.f15735a, "prefs_sdk_adid", C6334a.f15731g, true);
                    }
                    String unused2 = C6334a.f15732h = str;
                    C6431d.m22618b(C6334a.this.f15735a, "prefs_sdk_latest_adid", C6334a.f15732h, true);
                }
            } catch (Exception e) {
                C6438i.m22578d("init sdk adid failed");
                C6438i.m22578d(e.getMessage());
            }
            if (TextUtils.isEmpty(C6334a.f15731g)) {
                String unused3 = C6334a.f15731g = C6334a.f15733i;
                C6431d.m22618b(C6334a.this.f15735a, "prefs_sdk_adid", C6334a.f15731g, true);
            }
            C6438i.m22578d("sdk adId = " + C6334a.f15731g);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            AbstractC6342c cVar = this.f15752a;
            if (cVar != null) {
                cVar.mo23197a();
            }
        }
    }

    /* renamed from: h.h.e.a.a$f */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/a$f.class */
    public static class C6340f {

        /* renamed from: a */
        public static volatile C6334a f15754a = new C6334a();
    }

    @TargetApi(14)
    /* renamed from: a */
    public static void m23266a(Application application) {
        application.registerComponentCallbacks(new ComponentCallbacks2C6335a());
    }

    /* renamed from: b */
    public static void m23240b(Application application, String str, boolean z, AbstractC6342c cVar) {
        C6340f.f15754a.m23265a(application, str, z, cVar);
    }

    /* renamed from: s */
    public static C6334a m23211s() {
        if (C6340f.f15754a.f15735a != null) {
            return C6340f.f15754a;
        }
        C6438i.m22578d("get whoscall instance failed");
        throw new C6343d("Init whoscallSDK failed");
    }

    /* renamed from: a */
    public int m23253a(String str, int i) {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22628a(context, str, i);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: a */
    public int m23250a(String str, ContentValues contentValues, String str2, String[] strArr) {
        return C6370k.m22930b(this.f15735a).m22936a(str, contentValues, str2, strArr);
    }

    /* renamed from: a */
    public int m23245a(String str, String str2, String[] strArr) {
        return C6370k.m22930b(this.f15735a).m22935a(str, str2, strArr);
    }

    /* renamed from: a */
    public long m23252a(String str, long j) {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22627a(context, str, j);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: a */
    public long m23251a(String str, ContentValues contentValues) {
        return C6370k.m22930b(this.f15735a).m22937a(str, contentValues);
    }

    /* renamed from: a */
    public Cursor m23243a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        return C6370k.m22930b(this.f15735a).m22934a(str, strArr, str2, strArr2, str3);
    }

    /* renamed from: a */
    public AsyncTaskC6380f m23255a(C6375a aVar) {
        if (this.f15735a != null) {
            aVar.f15867f = new C6338d(aVar.f15867f, aVar);
            AsyncTaskC6380f fVar = new AsyncTaskC6380f(this.f15735a, aVar);
            this.f15740f.put(aVar.f15865d, fVar);
            try {
                if (Build.VERSION.SDK_INT >= 11) {
                    fVar.executeOnExecutor(this.f15739e, new Void[0]);
                } else {
                    fVar.execute(new Void[0]);
                }
                return fVar;
            } catch (RejectedExecutionException e) {
                return null;
            }
        } else {
            throw new C6343d("whoscallSDK context = null, please init it first");
        }
    }

    /* renamed from: a */
    public String m23248a(String str, String str2) {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22626a(context, str, str2);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: a */
    public String m23246a(String str, String str2, boolean z) {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22625a(context, str, str2, z);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: a */
    public void m23270a() {
        if (Build.VERSION.SDK_INT >= 21) {
            C6441l.m22564a(this.f15735a, 1);
        } else if (C6370k.m22930b(this.f15735a).m22929c()) {
            C6354g.m23065c(this.f15735a);
        }
    }

    /* renamed from: a */
    public void m23268a(long j) {
        C6370k.m22930b(this.f15735a).m22928c(j);
    }

    /* renamed from: a */
    public void m23267a(long j, long j2) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis() + j2;
            if (Build.VERSION.SDK_INT >= 21) {
                C6441l.m22563a(this.f15735a, 1, j, j2);
            } else if (!C6370k.m22930b(this.f15735a).m22929c()) {
                C6438i.m22578d("will start queue task after " + j2 + " milliseconds");
                m23247a("com.gogolook.whoscallsdk.core.wcsdk_queuetask", "", "", currentTimeMillis);
            } else if (m23252a(C6354g.f15782b, 0L) - currentTimeMillis > 180000) {
                C6438i.m22578d("will start queue task after " + j2 + " milliseconds");
                m23270a();
                m23247a("com.gogolook.whoscallsdk.core.wcsdk_queuetask", "", "", currentTimeMillis);
            }
        }
    }

    /* renamed from: a */
    public final void m23265a(Application application, String str, boolean z, AbstractC6342c cVar) {
        if (this.f15735a != null) {
            return;
        }
        if (application instanceof Application) {
            this.f15735a = application.getApplicationContext();
            if (Build.VERSION.SDK_INT >= 11) {
                this.f15736b = new C6437h();
                this.f15737c = new ThreadPoolExecutor(5, 10, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS, TimeUnit.MILLISECONDS, this.f15736b);
                if (C6344e.m23192b()) {
                    this.f15738d = new C6437h();
                    this.f15739e = new ThreadPoolExecutor(5, 10, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS, TimeUnit.MILLISECONDS, this.f15738d);
                }
            }
            if (C6344e.m23192b()) {
                this.f15740f = Collections.synchronizedMap(new HashMap());
            }
            C6438i.m22578d("init whoscall SDK");
            if (Build.VERSION.SDK_INT < 21) {
                C6354g.m23072a(application.getApplicationContext());
            }
            if (z && Build.VERSION.SDK_INT >= 14) {
                m23266a(application);
            }
            m23256a(cVar);
            C6364a.m22981a(str);
            return;
        }
        C6438i.m22578d("init whoscall SDK failed, input error");
        throw new C6343d("Init whoscallSDK failed");
    }

    /* renamed from: a */
    public void m23264a(AsyncTask asyncTask) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                asyncTask.executeOnExecutor(this.f15737c, new Object[0]);
            } else {
                asyncTask.execute(new Object[0]);
            }
        } catch (RejectedExecutionException e) {
            C6438i.m22583a(e);
        } catch (Exception e2) {
            C6438i.m22583a(e2);
            C6432e.m22605a(e2.getClass().getName(), e2.getMessage());
        }
    }

    /* renamed from: a */
    public void m23261a(C6341b bVar) {
        m23258a(bVar, 7200000L, 21600000L);
    }

    /* renamed from: a */
    public void m23260a(C6341b bVar, int i, JSONObject jSONObject) {
        try {
            m23259a(bVar, i, jSONObject, (AbstractC6378d) null, false);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final void m23259a(C6341b bVar, int i, JSONObject jSONObject, AbstractC6378d dVar, boolean z) throws Exception {
        if (jSONObject != null) {
            C6438i.m22578d("callback from wchttpasync with url : " + bVar.f15755a + " code :" + i + ", response = " + jSONObject.toString());
        } else {
            C6438i.m22578d("callback from wchttpasync with url : " + bVar.f15755a + " code :" + i);
        }
        if (i == 200 && jSONObject != null && bVar.f15771q == 2) {
            C6355a.m23051b(jSONObject.toString());
        }
        if (dVar != null) {
            dVar.mo1272a(i, jSONObject);
        }
        if (i != 200 && bVar.f15765k && bVar.f15759e == 0) {
            m23261a(bVar);
        } else if (i > 0 && ((i < 500 || i > 599) && bVar.f15759e != 0)) {
            C6370k.m22930b(this.f15735a).m22928c(bVar.f15759e);
        }
        if (m23269a(bVar.f15772r, bVar.f15771q)) {
            C6438i.m22586a(C6363f.m22992a(z, bVar.f15772r, bVar.f15771q, bVar.m23200e(), i, i != 200 && bVar.f15765k && (i <= 0 || (i >= 500 && i <= 599))));
        }
    }

    /* renamed from: a */
    public void m23258a(C6341b bVar, long j, long j2) {
        m23242a(new Thread(new RunnableC6336b(bVar, j, j2)));
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void m23257a(C6341b bVar, boolean z) {
        if (this.f15735a != null) {
            if (m23269a(bVar.f15772r, bVar.f15771q)) {
                C6438i.m22586a(C6363f.m22993a(z, bVar.f15772r, bVar.f15771q, bVar.m23200e()));
            }
            bVar.f15760f = new C6337c(bVar, bVar.f15760f, z);
            m23264a(new AsyncTaskC6381g(this.f15735a, bVar));
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: a */
    public final void m23256a(AbstractC6342c cVar) {
        m23264a(new AsyncTaskC6339e(cVar));
    }

    /* renamed from: a */
    public void m23254a(String str) {
        if (this.f15740f.containsKey(str)) {
            this.f15740f.get(str).m22901a();
        }
    }

    /* renamed from: a */
    public void m23247a(String str, String str2, String str3, long j) {
        Context context = this.f15735a;
        if (context != null) {
            C6354g.m23068a(context, str, str2, str3, j);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: a */
    public void m23242a(Thread thread) {
        this.f15737c.execute(thread);
    }

    /* renamed from: a */
    public boolean m23269a(int i, int i2) {
        boolean z = true;
        if (!C6344e.m23188e() || (!(i == 1 || i == 3) || i2 == 2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m23249a(String str, AbstractC6377c cVar) {
        if (!this.f15740f.containsKey(str)) {
            return false;
        }
        this.f15740f.get(str).f15871a.m22912a(cVar);
        return true;
    }

    /* renamed from: a */
    public boolean m23244a(String str, boolean z) {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22624a(context, str, z);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: b */
    public String m23234b(String str, String str2) {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22619b(context, str, str2);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: b */
    public void m23238b(C6341b bVar) {
        m23257a(bVar, true);
    }

    /* renamed from: b */
    public void m23236b(String str, int i) {
        Context context = this.f15735a;
        if (context != null) {
            C6431d.m22621b(context, str, i);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: b */
    public void m23235b(String str, long j) {
        Context context = this.f15735a;
        if (context != null) {
            C6431d.m22620b(context, str, j);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: b */
    public void m23233b(String str, String str2, boolean z) {
        Context context = this.f15735a;
        if (context != null) {
            C6431d.m22618b(context, str, str2, z);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: b */
    public void m23232b(String str, boolean z) {
        Context context = this.f15735a;
        if (context != null) {
            C6431d.m22617b(context, str, z);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: b */
    public C6341b[] m23241b() {
        try {
            return C6370k.m22930b(this.f15735a).m22927d();
        } catch (IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: c */
    public int m23231c() {
        Context context = this.f15735a;
        if (context != null) {
            return C6432e.m22599b(context);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: c */
    public void m23228c(String str, String str2) {
        Context context = this.f15735a;
        if (context != null) {
            C6431d.m22614c(context, str, str2);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: d */
    public void m23227d() {
        Context context = this.f15735a;
        if (context != null) {
            try {
                C6370k.m22930b(context).m22935a("apiqueue", null, null);
                C6370k.m22930b(this.f15735a).m22935a("scheduletask", null, null);
            } catch (Exception e) {
                C6438i.m22583a(e);
            }
            m23216n().edit().clear().commit();
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: d */
    public void m23226d(String str, String str2) {
        Context context = this.f15735a;
        if (context != null) {
            C6431d.m22612d(context, str, str2);
            return;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: e */
    public String m23225e() {
        if (f15732h == null) {
            f15732h = C6431d.m22625a(this.f15735a, "prefs_sdk_latest_adid", "", true);
        }
        return f15732h;
    }

    /* renamed from: f */
    public String m23224f() {
        if (TextUtils.isEmpty(f15731g)) {
            f15731g = C6431d.m22625a(this.f15735a, "prefs_sdk_adid", "", true);
        }
        return f15731g;
    }

    /* renamed from: g */
    public int m23223g() {
        Context context = this.f15735a;
        if (context == null) {
            return 0;
        }
        return C6432e.m22610a(context);
    }

    /* renamed from: h */
    public int m23222h() {
        return C6370k.m22930b(this.f15735a).m22926e();
    }

    /* renamed from: i */
    public Context m23221i() {
        Context context = this.f15735a;
        if (context != null) {
            return context;
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: j */
    public String m23220j() {
        if (!TextUtils.isEmpty(f15734j)) {
            return f15734j;
        }
        String f = m23224f();
        if (TextUtils.isEmpty(f)) {
            return C6432e.m22598b(m23219k());
        }
        f15734j = C6432e.m22598b(f);
        return f15734j;
    }

    /* renamed from: k */
    public String m23219k() {
        if (TextUtils.isEmpty(f15733i)) {
            m23214p();
        }
        return f15733i;
    }

    /* renamed from: l */
    public File m23218l() {
        Context context = this.f15735a;
        if (context != null) {
            return context.getDatabasePath(C6370k.m22930b(context).m22942a());
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: m */
    public File m23217m() {
        Context context = this.f15735a;
        if (context != null) {
            return context.getDatabasePath(WCRealmManager.INSTANCE.getDbName());
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: n */
    public SharedPreferences m23216n() {
        Context context = this.f15735a;
        if (context != null) {
            return C6431d.m22613d(context);
        }
        throw new C6343d("whoscallSDK context = null, please init it first");
    }

    /* renamed from: o */
    public boolean m23215o() {
        return !TextUtils.isEmpty(f15731g);
    }

    /* renamed from: p */
    public final void m23214p() {
        if (TextUtils.isEmpty(f15733i)) {
            f15733i = C6431d.m22625a(this.f15735a, "prefs_sdk_install_id", "", true);
            if (TextUtils.isEmpty(f15733i)) {
                f15733i = C6432e.m22598b(UUID.randomUUID().toString());
                C6438i.m22578d("sdk installId = " + f15733i);
                C6431d.m22618b(this.f15735a, "prefs_sdk_install_id", f15733i, true);
            }
        }
    }

    /* renamed from: q */
    public void m23213q() {
        m23264a(new AsyncTaskC6383i());
    }
}
