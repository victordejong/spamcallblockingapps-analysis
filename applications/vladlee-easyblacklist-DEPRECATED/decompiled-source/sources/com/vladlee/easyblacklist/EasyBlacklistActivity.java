package com.vladlee.easyblacklist;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Telephony;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/EasyBlacklistActivity.class */
public class EasyBlacklistActivity extends AppCompatActivity implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: l */
    public static int f19247l = 100;

    /* renamed from: m */
    private static EasyBlacklistActivity f19248m;

    /* renamed from: n */
    private FirebaseAnalytics f19252n;

    /* renamed from: p */
    private C3454gl f19254p;

    /* renamed from: k */
    ArrayList<C3305bq> f19251k = null;

    /* renamed from: o */
    private ViewPager f19253o = null;

    /* renamed from: q */
    private AdView f19255q = null;

    /* renamed from: r */
    private LinearLayout f19256r = null;

    /* renamed from: s */
    private C3365dk f19257s = null;

    /* renamed from: t */
    private AsyncTaskC3255a f19258t = null;

    /* renamed from: u */
    private ProgressDialog f19259u = null;

    /* renamed from: v */
    private ThreadPoolExecutor f19260v = null;

    /* renamed from: w */
    private long f19261w = 0;

    /* renamed from: x */
    private long f19262x = 0;

    /* renamed from: y */
    private long f19263y = 0;

    /* renamed from: z */
    private int f19264z = 0;

    /* renamed from: A */
    private boolean f19249A = false;

    /* renamed from: B */
    private int f19250B = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.vladlee.easyblacklist.EasyBlacklistActivity$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/EasyBlacklistActivity$a.class */
    public final class AsyncTaskC3255a extends AsyncTask<Void, Void, Void> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AsyncTaskC3255a() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            C3318by.m161m(EasyBlacklistActivity.this);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            if (EasyBlacklistActivity.this.f19259u != null) {
                if (EasyBlacklistActivity.this.f19259u.isShowing()) {
                    EasyBlacklistActivity.this.f19259u.dismiss();
                }
                EasyBlacklistActivity.this.f19259u = null;
            }
            EasyBlacklistActivity.this.stopService(new Intent(EasyBlacklistActivity.this, BlockService.class));
            BlockService.m367a(EasyBlacklistActivity.this);
            EasyBlacklistActivity.this.setRequestedOrientation(-1);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            EasyBlacklistActivity.this.setRequestedOrientation(5);
        }
    }

    /* renamed from: a */
    public static void m329a(ArrayList<C3305bq> arrayList) {
        EasyBlacklistActivity easyBlacklistActivity = f19248m;
        if (easyBlacklistActivity != null) {
            easyBlacklistActivity.f19251k = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m328a(boolean z) {
        AdView adView;
        C3365dk dkVar;
        if (!m341a((AppCompatActivity) this) || !m342a((Context) this)) {
            m323c(8);
            AdView adView2 = this.f19255q;
            if (adView2 != null) {
                adView2.setVisibility(8);
            }
        } else if (!this.f19249A || ((dkVar = this.f19257s) != null && !dkVar.m135b(this))) {
            boolean z2 = true;
            if (this.f19261w > 120000) {
                z = true;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
            boolean z3 = activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
            LinearLayout linearLayout = (LinearLayout) findViewById(2131296456);
            long j = this.f19263y;
            if (j <= 1) {
                m323c(8);
                return;
            }
            if (j == 5 || j == 11 || j == 22) {
                z2 = false;
            }
            if (!z2) {
                m323c(0);
                m304l();
                linearLayout.setVisibility(0);
            } else if (z3 && (adView = this.f19255q) != null && this.f19256r != null && (z || adView.getVisibility() == 8 || this.f19256r.getVisibility() == 8)) {
                this.f19255q.setAdListener(new C3342co(this, linearLayout));
                try {
                    this.f19255q.loadAd(new AdRequest.Builder().build());
                    this.f19255q.setVisibility(0);
                    linearLayout.setVisibility(8);
                } catch (Exception e) {
                    e.printStackTrace();
                    m323c(8);
                    FirebaseAnalytics.getInstance(this).m646a("exception_loadAds", new Bundle());
                }
            } else if (!z3) {
                m323c(8);
            }
            findViewById(2131296349).setOnClickListener(new View$OnClickListenerC3343cp(this));
        } else {
            m323c(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m342a(Context context) {
        String a = ((CallsBlacklistApp) getApplication()).m355b().m230a();
        if (a == null || !m330a(a)) {
            return true;
        }
        return C3391ed.m89a(context, "pref_gdpr_consent", false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m341a(androidx.appcompat.app.AppCompatActivity r5) {
        /*
            r0 = r5
            android.view.WindowManager r0 = r0.getWindowManager()
            android.view.Display r0 = r0.getDefaultDisplay()
            r6 = r0
            android.util.DisplayMetrics r0 = new android.util.DisplayMetrics
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            r1 = r7
            r0.getMetrics(r1)
            r0 = r5
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            r8 = r0
            r0 = r7
            int r0 = r0.heightPixels
            float r0 = (float) r0
            r1 = r8
            float r0 = r0 / r1
            r8 = r0
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat     // Catch: NameNotFoundException | ParseException -> 0x0084
            r7 = r0
            r0 = r7
            java.lang.String r1 = "dd/MM/yyyy"
            java.util.Locale r2 = java.util.Locale.US     // Catch: NameNotFoundException | ParseException -> 0x0084
            r0.<init>(r1, r2)     // Catch: NameNotFoundException | ParseException -> 0x0084
            r0 = r7
            java.lang.String r1 = "01/01/2017"
            java.util.Date r0 = r0.parse(r1)     // Catch: NameNotFoundException | ParseException -> 0x0084
            long r0 = r0.getTime()     // Catch: NameNotFoundException | ParseException -> 0x0084
            r9 = r0
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: NameNotFoundException | ParseException -> 0x0084
            r1 = r5
            java.lang.String r1 = r1.getPackageName()     // Catch: NameNotFoundException | ParseException -> 0x0084
            r2 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r2)     // Catch: NameNotFoundException | ParseException -> 0x0084
            long r0 = r0.firstInstallTime     // Catch: NameNotFoundException | ParseException -> 0x0084
            r11 = r0
            r0 = r11
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0060
            goto L_0x0066
        L_0x0060:
            r0 = 0
            r13 = r0
            goto L_0x0069
        L_0x0066:
            r0 = 1
            r13 = r0
        L_0x0069:
            r0 = r13
            if (r0 == 0) goto L_0x0078
            r0 = r8
            r1 = 1141637120(0x440c0000, float:560.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0082
            r0 = 0
            return r0
        L_0x0078:
            r0 = r8
            r1 = 1142128640(0x44138000, float:590.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0082
            r0 = 0
            return r0
        L_0x0082:
            r0 = 1
            return r0
        L_0x0084:
            r5 = move-exception
            goto L_0x0066
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.EasyBlacklistActivity.m341a(androidx.appcompat.app.AppCompatActivity):boolean");
    }

    /* renamed from: a */
    private static boolean m330a(String str) {
        return Arrays.asList("BE", "EL", "LT", "PT", "BG", "ES", "LU", "RO", "CZ", "FR", "HU", "SI", "DK", "HR", "MT", "SK", "DE", "IT", "NL", "FI", "EE", "CY", "AT", "SE", "IE", "LV", "PL", "UK", "IS", "NO", "LI", "CH", "ME", "MK", "AL", "RS").contains(str.toUpperCase());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m327b(int i) {
        this.f19253o.m6411b(i);
        m320d(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m323c(int i) {
        LinearLayout linearLayout = this.f19256r;
        if (linearLayout != null) {
            linearLayout.setVisibility(i);
        } else {
            findViewById(2131296453).setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m320d(int i) {
        int[] iArr = {2131230874, 2131230856, 2131230877};
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131296348);
        int i2 = i;
        if (this.f19254p.mo39c() < 4) {
            i2 = i + 1;
        }
        if (i2 == 3) {
            floatingActionButton.setVisibility(8);
            return;
        }
        int i3 = Build.VERSION.SDK_INT;
        Resources resources = getResources();
        floatingActionButton.setImageDrawable(i3 >= 21 ? resources.getDrawable(iArr[i2], null) : resources.getDrawable(iArr[i2]));
        floatingActionButton.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m317e(int i) {
        int i2 = i;
        if (this.f19254p.mo39c() < 4) {
            i2 = i + 1;
        }
        if (i2 == 0) {
            findViewById(2131296623).setVisibility(8);
        } else if (i2 == 1) {
            SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m25a((Activity) this);
            findViewById(2131296623).setVisibility(0);
        } else if (i2 == 2) {
            findViewById(2131296623).setVisibility(8);
            findViewById(2131296624).setVisibility(8);
            findViewById(2131296625).setVisibility(0);
            findViewById(2131296626).setVisibility(8);
        } else if (i2 == 3) {
            findViewById(2131296623).setVisibility(8);
            findViewById(2131296624).setVisibility(8);
            findViewById(2131296625).setVisibility(8);
            findViewById(2131296626).setVisibility(0);
            return;
        } else {
            return;
        }
        findViewById(2131296624).setVisibility(8);
        findViewById(2131296625).setVisibility(8);
        findViewById(2131296626).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ void m314f(EasyBlacklistActivity easyBlacklistActivity) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("pref_block_hidden_calls", Boolean.FALSE));
        arrayList.add(new Pair("pref_block_unknown_calls", Boolean.FALSE));
        arrayList.add(new Pair("pref_block_unknown_sms", Boolean.FALSE));
        arrayList.add(new Pair("pref_block_all_calls", Boolean.FALSE));
        arrayList.add(new Pair("pref_block_all_sms", Boolean.FALSE));
        arrayList.add(new Pair("pref_block_all_calls_if_voip", Boolean.FALSE));
        arrayList.add(new Pair("pref_block_non_numeric_sms", Boolean.FALSE));
        arrayList.add(new Pair("pref_show_notifications", Boolean.TRUE));
        arrayList.add(new Pair("pref_show_notifications_blocking", Boolean.TRUE));
        arrayList.add(new Pair("pref_show_notifications_incoming", Boolean.TRUE));
        arrayList.add(new Pair("pref_password_on_start", Boolean.FALSE));
        arrayList.add(new Pair("pref_hide_blocked_messages", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_enable", Boolean.FALSE));
        arrayList.add(new Pair("pref_show_status_bar_icon", Boolean.TRUE));
        arrayList.add(new Pair("pref_block_calls_option", Boolean.TRUE));
        arrayList.add(new Pair("pref_block_sms_option", Boolean.TRUE));
        arrayList.add(new Pair("pref_enable_blocking", Boolean.TRUE));
        arrayList.add(new Pair("pref_whitelist", Boolean.TRUE));
        arrayList.add(new Pair("pref_enable_blocking", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_monday", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_tuesday", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_wednesday", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_thursday", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_friday", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_saturday", Boolean.TRUE));
        arrayList.add(new Pair("pref_schedule_sunday", Boolean.TRUE));
        C3317bx a = C3317bx.m204a(easyBlacklistActivity);
        SQLiteDatabase readableDatabase = a.getReadableDatabase();
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            Pair pair = (Pair) arrayList.get(i);
            boolean a2 = C3392ee.m79a(readableDatabase, (String) pair.first);
            hashMap.put(pair.first, Boolean.valueOf(a2));
            z = z;
            if (!a2) {
                z = z;
                if (!z) {
                    z = true;
                }
            }
        }
        if (z) {
            SQLiteDatabase writableDatabase = a.getWritableDatabase();
            writableDatabase.beginTransaction();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Pair pair2 = (Pair) arrayList.get(i2);
                Boolean bool = (Boolean) hashMap.get(pair2.first);
                if (bool != null && !bool.booleanValue()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, (String) pair2.first);
                    boolean a3 = C3391ed.m89a(easyBlacklistActivity, (String) pair2.first, ((Boolean) pair2.second).booleanValue());
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, a3 ? "true" : "false");
                    writableDatabase.insert("preferences", null, contentValues);
                    if ("pref_block_calls_option".equals(pair2.first)) {
                        C3391ed.m86b(easyBlacklistActivity, "pref_block_calls_option", a3);
                    } else if ("pref_block_sms_option".equals(pair2.first)) {
                        C3391ed.m86b(easyBlacklistActivity, "pref_block_sms_option", a3);
                    }
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            C3391ed.m86b((Context) easyBlacklistActivity, "pref_update_prefs_db_to_version6", true);
        }
    }

    /* renamed from: h */
    public static ArrayList<C3305bq> m312h() {
        EasyBlacklistActivity easyBlacklistActivity = f19248m;
        if (easyBlacklistActivity != null) {
            return easyBlacklistActivity.f19251k;
        }
        return null;
    }

    /* renamed from: i */
    public static void m310i() {
        EasyBlacklistActivity easyBlacklistActivity = f19248m;
        if (easyBlacklistActivity != null) {
            SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m19b((Activity) easyBlacklistActivity);
        }
    }

    /* renamed from: j */
    public static ThreadPoolExecutor m308j() {
        EasyBlacklistActivity easyBlacklistActivity = f19248m;
        if (easyBlacklistActivity != null) {
            return easyBlacklistActivity.f19260v;
        }
        return null;
    }

    /* renamed from: k */
    public static boolean m306k() {
        EasyBlacklistActivity easyBlacklistActivity = f19248m;
        if (easyBlacklistActivity != null) {
            return easyBlacklistActivity.f19249A;
        }
        return false;
    }

    /* renamed from: l */
    private void m304l() {
        AdView adView = this.f19255q;
        if (adView != null) {
            adView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ void m303l(EasyBlacklistActivity easyBlacklistActivity) {
        if (m341a((AppCompatActivity) easyBlacklistActivity)) {
            easyBlacklistActivity.f19249A = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(easyBlacklistActivity) == 0;
            if (easyBlacklistActivity.f19249A) {
                easyBlacklistActivity.f19257s = new C3365dk(easyBlacklistActivity);
                easyBlacklistActivity.f19257s.f19500a = new C3355da(easyBlacklistActivity);
                easyBlacklistActivity.f19257s.m143a((Context) easyBlacklistActivity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m302m() {
        TabLayout tabLayout = (TabLayout) findViewById(2131296580);
        tabLayout.m901a(this.f19253o);
        tabLayout.m906a(0).m861a(getString(2131623978));
        tabLayout.m906a(1).m861a(getString(2131623991));
        tabLayout.m906a(2).m861a(getString(2131624172));
        if (this.f19254p.mo39c() > 3) {
            tabLayout.m906a(0).m861a(getString(2131624192));
            tabLayout.m906a(1).m861a(getString(2131623978));
            tabLayout.m906a(2).m861a(getString(2131623991));
            tabLayout.m906a(3).m861a(getString(2131624172));
        }
        tabLayout.m897a(new C3344cq(this));
        m320d(this.f19253o.m6413b());
        m317e(this.f19253o.m6413b());
        m300n();
        ((FloatingActionButton) findViewById(2131296348)).setOnClickListener(new View$OnClickListenerC3345cr(this, tabLayout));
    }

    /* renamed from: n */
    private void m300n() {
        ArrayList arrayList = new ArrayList();
        if (this.f19254p.mo39c() == 4) {
            arrayList.add(new C3340cm(getString(2131624192), 2131230915));
        }
        arrayList.add(new C3340cm(getString(2131623978), 2131230868));
        arrayList.add(new C3340cm(getString(2131623991), 2131230890));
        arrayList.add(new C3340cm(getString(2131624172), 2131230907));
        arrayList.add(new C3340cm(getString(2131624220), 2131230921));
        arrayList.add(new C3340cm(null, 0));
        arrayList.add(new C3340cm(getString(2131624184), 2131230910));
        ListView listView = (ListView) findViewById(2131296408);
        listView.setAdapter((ListAdapter) new C3341cn(this, arrayList));
        listView.setOnItemClickListener(new C3348cu(this));
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(2131296407);
        C3349cv cvVar = new C3349cv(this, this, drawerLayout, (Toolbar) findViewById(2131296622));
        drawerLayout.m8036a(cvVar);
        m9926b().mo9830a(true);
        m9926b();
        cvVar.m9868a();
    }

    /* renamed from: o */
    private void m298o() {
        C3365dk dkVar = this.f19257s;
        if (dkVar != null && dkVar.m145a() && !this.f19257s.m135b(this)) {
            this.f19257s.m132c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1001 || Build.VERSION.SDK_INT < 19) {
            return;
        }
        if (!C3369do.m127a((Context) this) || !CheckPermissionsActivity.m346c(this)) {
            C3392ee.m74b((Context) this, "pref_block_sms_option", false);
        } else {
            C3392ee.m74b((Context) this, "pref_block_sms_option", true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FirebaseAnalytics.getInstance(this).m646a("mainActivity_configChange", new Bundle());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x014d -> B:4:0x000d). Please submit an issue!!! */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent;
        super.onCreate(bundle);
        try {
            this.f19252n = FirebaseAnalytics.getInstance(this);
        } catch (Exception e) {
        }
        Bundle bundle2 = new Bundle();
        FirebaseAnalytics.getInstance(this).m646a("mainActivity_createBegin", bundle2);
        if (Build.VERSION.SDK_INT >= 23 ? CheckPermissionsActivity.m348b(this) : true) {
            f19248m = this;
            int availableProcessors = Runtime.getRuntime().availableProcessors();
            if (availableProcessors <= 0) {
                availableProcessors = 1;
            }
            this.f19260v = new ThreadPoolExecutor(1, availableProcessors, 1000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                extras = new Bundle();
            }
            boolean z = extras.getBoolean(C3356db.f19477f, false);
            String string = !z ? null : extras.getString(C3356db.f19472a, "");
            if (Build.VERSION.SDK_INT >= 19 && z) {
                if (string.length() > 0) {
                    Intent intent2 = new Intent(this, SmsChatActivity.class);
                    intent2.putExtra(C3356db.f19472a, string);
                    intent = intent2;
                } else {
                    intent = new Intent(this, SmsNewMessageActivity.class);
                }
                String string2 = extras.getString(C3356db.f19473b);
                if (string2 != null) {
                    intent.putExtra(C3356db.f19473b, string2);
                }
                startActivity(intent);
            }
            setContentView(2131492931);
            new Thread(new RunnableC3350cw(this, extras)).start();
            FirebaseAnalytics.getInstance(this).m646a("mainActivity_createEnd", bundle2);
            return;
        }
        FirebaseAnalytics.getInstance(this).m646a("mainActivity_noPermissions", bundle2);
        Intent intent3 = new Intent(this, CheckPermissionsActivity.class);
        intent3.putExtras(getIntent());
        startActivity(intent3);
        finish();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131558400, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        FirebaseAnalytics.getInstance(this).m646a("mainActivity_destroy", new Bundle());
        PreferenceManager.getDefaultSharedPreferences(this).unregisterOnSharedPreferenceChangeListener(this);
        ProgressDialog progressDialog = this.f19259u;
        if (progressDialog != null) {
            if (progressDialog.isShowing()) {
                this.f19259u.dismiss();
            }
            this.f19259u = null;
        }
        AdView adView = this.f19255q;
        if (adView != null) {
            try {
                adView.destroy();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f19253o = null;
        this.f19254p = null;
        this.f19255q = null;
        C3365dk dkVar = this.f19257s;
        if (dkVar != null) {
            dkVar.m136b();
            this.f19257s.f19500a = null;
            this.f19257s = null;
        }
        this.f19252n = null;
        ThreadPoolExecutor threadPoolExecutor = this.f19260v;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.purge();
            this.f19260v.shutdownNow();
        }
        if (f19248m == this) {
            f19248m = null;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Intent intent;
        int itemId = menuItem.getItemId();
        if (itemId == 2131296317) {
            intent = new Intent(this, SettingsActivity.class);
        } else if (itemId != 2131296319) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            intent = new Intent(this, WhitelistActivity.class);
        }
        startActivity(intent);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f19261w += System.currentTimeMillis() - this.f19262x;
        AdView adView = this.f19255q;
        if (adView != null) {
            adView.pause();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        C3454gl glVar;
        super.onPostResume();
        if (Build.VERSION.SDK_INT >= 19 && (glVar = this.f19254p) != null && glVar.mo39c() < 4) {
            String packageName = getPackageName();
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(this);
            if (((defaultSmsPackage == null || packageName == null || !defaultSmsPackage.equals(packageName)) ? false : true) && CheckPermissionsActivity.m346c(this) && ((TabLayout) findViewById(2131296580)).m907a() < 4) {
                int b = this.f19253o.m6413b();
                this.f19254p.m37f();
                m302m();
                m327b(b + 1);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.C0598a.AbstractC0599a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 10005) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (iArr[0] == 0) {
            SwitchCompat switchCompat = (SwitchCompat) findViewById(2131296573);
            if (switchCompat != null) {
                switchCompat.setChecked(true);
                C3392ee.m74b((Context) this, "pref_block_sms_option", true);
                return;
            }
            C3392ee.m74b((Context) this, "pref_block_sms_option", false);
        }
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        AdView adView;
        super.onResume();
        m298o();
        if (this.f19261w > 120000 && (adView = this.f19255q) != null) {
            adView.destroy();
        }
        this.f19262x = System.currentTimeMillis();
        if (this.f19261w > 120000) {
            this.f19261w = 0L;
            this.f19263y++;
            m328a(true);
            C3391ed.m91a(this, "pref_app_starts", this.f19263y);
        } else {
            m328a(false);
        }
        AdView adView2 = this.f19255q;
        if (adView2 != null) {
            adView2.resume();
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        SwitchCompat switchCompat;
        int i;
        if ("pref_block_calls_option".equals(str)) {
            i = C3392ee.m80a((Context) this, "pref_block_calls_option", true) ? 2131623994 : 2131623993;
        } else if ("pref_block_sms_option".equals(str)) {
            i = C3392ee.m80a((Context) this, "pref_block_sms_option", true) ? 2131624002 : 2131624001;
        } else {
            if ("pref_hide_blocked_messages".equals(str) && (switchCompat = (SwitchCompat) findViewById(2131296571)) != null) {
                switchCompat.setChecked(C3392ee.m80a((Context) this, "pref_hide_blocked_messages", true));
            }
            if (!"pref_block_calls_option".equals(str) || "pref_block_sms_option".equals(str) || "pref_enable_blocking".equals(str) || "pref_show_status_bar_icon".equals(str)) {
                BlockService.m367a(this);
            }
            return;
        }
        Toast.makeText(this, i, 0).show();
        if (!"pref_block_calls_option".equals(str)) {
        }
        BlockService.m367a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (!CheckPermissionsActivity.m348b(this)) {
            startActivity(new Intent(this, CheckPermissionsActivity.class));
            finish();
        }
        m298o();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }
}
