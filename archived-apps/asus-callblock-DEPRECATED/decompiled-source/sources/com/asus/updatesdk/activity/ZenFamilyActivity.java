package com.asus.updatesdk.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.i;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.AppInfo;
import com.asus.updatesdk.R;
import com.asus.updatesdk.ZenUiFamily;
import com.asus.updatesdk.analytic.AnalyticUtils;
import com.asus.updatesdk.analytic.TrackerManager;
import com.asus.updatesdk.cache.ImageCache;
import com.asus.updatesdk.cache.ImageFetcher;
import com.asus.updatesdk.cdn.CdnUtils;
import com.asus.updatesdk.utility.DeviceUtils;
import com.asus.updatesdk.utility.GeneralUtils;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/activity/ZenFamilyActivity.class */
public class ZenFamilyActivity extends i implements View.OnClickListener {
    public static final int VIEW_PAGER_IS_SCROLLING = 1;
    public static final int VIEW_PAGER_NOT_SCROLLING = 0;
    private static ArrayList<AppInfo> p = new ArrayList<>();
    private static ArrayList<AppInfo> q = new ArrayList<>();
    private Handler C;
    private Runnable D;
    private String I;
    private Activity n;
    private AppInfoAdapter o;
    private PanelViewPagerAdapter r;
    private ViewPager s;
    private AlertDialog t;
    private ImageFetcher u;
    private Button v;
    private View w;
    private ListView x;
    private View y;
    private String z = "#0DAFED";
    private String A = "#0DAFED";
    private String B = "#0DAFED";
    private int E = 0;
    private int F = 0;
    private long G = 6000;
    private boolean H = false;
    private BroadcastReceiver J = new BroadcastReceiver() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.v("ZenFamilyActivity", "mUpdateReceiver onReceive");
            FrameLayout frameLayout = (FrameLayout) ZenFamilyActivity.this.findViewById(R.id.ud_sdk_sync_layout);
            if (frameLayout != null && 8 == frameLayout.getVisibility()) {
                new LoadListTask(ZenFamilyActivity.this, (byte) 0).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/activity/ZenFamilyActivity$LoadListTask.class */
    private class LoadListTask extends AsyncTask<Void, JSONArray, ArrayList<AppInfo>> {
        private LoadListTask() {
        }

        /* synthetic */ LoadListTask(ZenFamilyActivity zenFamilyActivity, byte b2) {
            this();
        }

        private ArrayList<AppInfo> a() {
            ArrayList<AppInfo> arrayList = null;
            Log.v("ZenFamilyActivity", "LoadListTask doInBackground");
            if (!ZenFamilyActivity.this.getIntent().getBooleanExtra("has_bundle", false)) {
                Log.v("ZenFamilyActivity", "getGtmValues");
                GeneralUtils.getGtmValues(ZenFamilyActivity.this.n);
            }
            JSONObject json = CdnUtils.getJson(ZenFamilyActivity.this.n);
            if (json != null) {
                try {
                    updatePanelList(json.getJSONArray(CdnUtils.NODE_FEPL));
                    if (!GeneralUtils.isActivityDestroyed(ZenFamilyActivity.this.n)) {
                        arrayList = ZenFamilyActivity.this.a(json);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            return arrayList;
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ ArrayList<AppInfo> doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(ArrayList<AppInfo> arrayList) {
            ArrayList<AppInfo> arrayList2 = arrayList;
            super.onPostExecute(arrayList2);
            Log.v("ZenFamilyActivity", "onPostExecute");
            TrackerManager.sendDailyReport(ZenFamilyActivity.this.n, arrayList2, ZenFamilyActivity.this.I);
            if (arrayList2 == null) {
                if (!ZenFamilyActivity.this.isFinishing() && !GeneralUtils.isActivityDestroyed(ZenFamilyActivity.this.n)) {
                    ZenFamilyActivity.c(ZenFamilyActivity.this);
                }
                ZenFamilyActivity.this.H = true;
                return;
            }
            if (!ZenFamilyActivity.this.getIntent().getBooleanExtra("has_bundle", false)) {
                ZenFamilyActivity.this.a(ZenFamilyActivity.this.z, ZenFamilyActivity.this.A, ZenFamilyActivity.this.B);
                ZenFamilyActivity.this.a(ZenFamilyActivity.this.z);
            }
            switch (ZenFamilyActivity.a(arrayList2)) {
                case 1:
                    Log.v("ZenFamilyActivity", "STATE_INFO_NON_CHANGE");
                    if (8 != ((FrameLayout) ZenFamilyActivity.this.findViewById(R.id.ud_sdk_sync_layout)).getVisibility()) {
                        ZenFamilyActivity.h(ZenFamilyActivity.this);
                    } else {
                        ZenFamilyActivity.this.j();
                    }
                    if (ZenFamilyActivity.this.r != null) {
                        ZenFamilyActivity.this.r.refreshImagePanel();
                        break;
                    }
                    break;
                case 2:
                    Log.v("ZenFamilyActivity", "STATE_INFO_UPDATE");
                    ZenFamilyActivity.this.o.notifyDataSetChanged();
                    ZenFamilyActivity.this.j();
                    break;
                case 3:
                    Log.v("ZenFamilyActivity", "STATE_INIT_FIRST_TIME");
                    ZenFamilyActivity.h(ZenFamilyActivity.this);
                    break;
            }
            if (ZenFamilyActivity.this.e() && !ZenFamilyActivity.this.C.hasMessages(0)) {
                ZenFamilyActivity.this.C.postDelayed(ZenFamilyActivity.this.D, ZenFamilyActivity.this.G);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00aa A[SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected /* synthetic */ void onProgressUpdate(org.json.JSONArray[] r13) {
            /*
                Method dump skipped, instructions count: 394
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.activity.ZenFamilyActivity.LoadListTask.onProgressUpdate(java.lang.Object[]):void");
        }

        public void updatePanelList(JSONArray jSONArray) {
            publishProgress(jSONArray);
        }
    }

    static /* synthetic */ int a(ArrayList arrayList) {
        int i;
        if (p.size() == 0) {
            p.addAll(arrayList);
            i = 3;
        } else {
            int size = arrayList.size();
            if (size == p.size()) {
                for (int i2 = 0; i2 < size; i2++) {
                    AppInfo appInfo = (AppInfo) arrayList.get(i2);
                    AppInfo appInfo2 = p.get(i2);
                    if (!appInfo.getStatus().equals(appInfo2.getStatus()) || !appInfo.getPackageName().equals(appInfo2.getPackageName()) || !appInfo.getSlogan().equals(appInfo2.getSlogan())) {
                        p.clear();
                        p.addAll(arrayList);
                        i = 2;
                        break;
                    }
                }
                i = 1;
            } else {
                p.clear();
                p.addAll(arrayList);
                i = 2;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<AppInfo> a(JSONObject jSONObject) {
        ArrayList<AppInfo> arrayList;
        ArrayList<AppInfo> arrayList2 = new ArrayList<>();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(CdnUtils.NODE_APPS_ARRAY);
            Log.v("ZenFamilyActivity", "product devices : " + DeviceUtils.SYSPROP_PRODUCT_DEVICE);
            Log.v("ZenFamilyActivity", "CPU abilist : " + DeviceUtils.SYSPROP_CPU_ABILIST);
            Log.v("ZenFamilyActivity", "CPU abi : " + DeviceUtils.SYSPROP_CPU_ABI);
            Log.v("ZenFamilyActivity", "CPU abi2 : " + DeviceUtils.SYSPROP_CPU_ABI2);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                String string = jSONObject2.getString(CdnUtils.NODE_PACKAGE);
                String string2 = jSONObject2.getString(CdnUtils.NODE_ICON_URL);
                String string3 = jSONObject2.getString(CdnUtils.NODE_PLAY_ICON_URL);
                String str = string3;
                if (string3 != null) {
                    str = string3.replace("h150-rw", "h64-rw");
                }
                String string4 = jSONObject2.getString("URL");
                if (!ZenUiFamily.checkBlackList(jSONObject2.getString(CdnUtils.NODE_BLACKLIST))) {
                    ZenUiFamily.AppStatus appUpdateState = ZenUiFamily.getAppUpdateState(this.n, string, ZenUiFamily.getLatestVersionCode(this.n, jSONObject2.getJSONArray(CdnUtils.NODE_APK)), jSONObject2.optInt(CdnUtils.NODE_URGENT));
                    if (!ZenUiFamily.AppStatus.NOT_SUPPORTED.equals(appUpdateState) && ((!DeviceUtils.checkAsusDevice() && !this.n.getPackageName().equals(string)) || !ZenUiFamily.AppStatus.UP_TO_DATE.equals(appUpdateState))) {
                        AppInfo appInfo = new AppInfo(jSONObject2.getString(CdnUtils.NODE_APP_NAME), string, jSONObject2.getString(CdnUtils.NODE_SLOGAN), (float) jSONObject2.getDouble(CdnUtils.NODE_RATING), jSONObject2.getString(CdnUtils.NODE_DOWNLOAD), str, string2, GeneralUtils.getAppIcon(this.n, string), string4, appUpdateState);
                        if (!getPackageName().equals(string) || !(ZenUiFamily.AppStatus.NEED_UPDATE == appUpdateState || ZenUiFamily.AppStatus.IMPORTANT == appUpdateState)) {
                            arrayList2.add(appInfo);
                        } else {
                            arrayList2.add(0, appInfo);
                        }
                        if (10 == arrayList2.size()) {
                            break;
                        }
                    }
                }
            }
            Collections.sort(arrayList2);
            arrayList = arrayList2;
        } catch (JSONException e) {
            e.printStackTrace();
            arrayList = null;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        int b2 = b(str);
        this.w.setBackgroundColor(b2);
        if (this.v != null) {
            this.v.getBackground().setColorFilter(b2, PorterDuff.Mode.SRC_ATOP);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3) {
        if (this.o != null) {
            this.o.setItemButtonColor(b(str), b(str2), b(str3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(String str) {
        int color;
        try {
            color = Color.parseColor(str);
        } catch (Exception e) {
            color = getResources().getColor(R.color.ud_sdk_system_light_blue);
        }
        return color;
    }

    private void b(boolean z) {
        TextView textView = (TextView) this.y.findViewById(R.id.ud_sdk_list_view_footer_no_app_text);
        if (z) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
    }

    static /* synthetic */ void c(ZenFamilyActivity zenFamilyActivity) {
        if (zenFamilyActivity.t == null) {
            zenFamilyActivity.t = new AlertDialog.Builder(zenFamilyActivity.n).setTitle(R.string.ud_sdk_no_network_connection_title).setMessage(R.string.ud_sdk_no_network_connection_content).setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ZenFamilyActivity.this.finish();
                }
            }).setPositiveButton(R.string.ud_sdk_wifi_settings, new DialogInterface.OnClickListener() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ZenFamilyActivity.this.n.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.5
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    ZenFamilyActivity.this.finish();
                }
            }).create();
        }
        zenFamilyActivity.t.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        boolean z = true;
        if (1 != getResources().getConfiguration().orientation) {
            z = false;
        }
        return z;
    }

    private void f() {
        this.x = (ListView) findViewById(R.id.ud_sdk_list_view);
        if (e()) {
            this.x.addHeaderView(getLayoutInflater().inflate(R.layout.ud_sdk_listview_item_header_pager, (ViewGroup) this.x, false));
            this.r = new PanelViewPagerAdapter(this, q, this.u, this.I);
            this.s = (ViewPager) findViewById(R.id.ud_sdk_list_view_header_pager);
            this.s.setAdapter(this.r);
            this.r.initImage();
            g();
            this.E = (int) getResources().getDimension(R.dimen.ud_sdk_list_view_header_root_layout_height);
        }
        this.y = getLayoutInflater().inflate(R.layout.ud_sdk_listview_item_footer_more, (ViewGroup) this.x, false);
        this.x.addFooterView(this.y);
        this.v = (Button) this.y.findViewById(R.id.ud_sdk_list_view_button_more);
        if (DeviceUtils.checkAsusDevice()) {
            this.v.setOnClickListener(this);
        } else {
            this.v.setVisibility(8);
        }
        this.o = new AppInfoAdapter(this, R.layout.ud_sdk_listview_item, p);
        this.x.setAdapter((ListAdapter) this.o);
        this.x.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int i2 = 0;
                if (ZenFamilyActivity.this.e()) {
                    i2 = 1;
                }
                AppInfo appInfo = (AppInfo) ZenFamilyActivity.p.get(i - i2);
                String packageName = appInfo.getPackageName();
                String goToGooglePlayUrl = appInfo.getGoToGooglePlayUrl();
                ZenUiFamily.AppStatus status = appInfo.getStatus();
                if (ZenUiFamily.AppStatus.UP_TO_DATE != status) {
                    GeneralUtils.startCheckAppUpdateAlarm(ZenFamilyActivity.this.n, packageName);
                    GeneralUtils.openGooglePlayPage(ZenFamilyActivity.this.n, packageName, goToGooglePlayUrl, ZenFamilyActivity.this.I);
                } else if (!GeneralUtils.openAsusApp(ZenFamilyActivity.this.n, packageName)) {
                    GeneralUtils.openGooglePlayPage(ZenFamilyActivity.this.n, packageName, goToGooglePlayUrl, ZenFamilyActivity.this.I);
                }
                TrackerManager.sendEvents(ZenFamilyActivity.this.n, TrackerManager.GA_TRACKER, AnalyticUtils.Category.CLICK_LIST_VIEW_APPS, packageName, status.getName(), 0L);
            }
        });
        if (getIntent().getBooleanExtra("has_bundle", false)) {
            a(this.z, this.A, this.B);
            a(this.z);
        }
    }

    private void g() {
        this.F = this.r.getCount();
        if (this.F != 0) {
            this.s.setCurrentItem(0);
            final LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ud_sdk_list_view_header_pager_dot);
            if (this.F != linearLayout.getChildCount()) {
                for (int i = 0; i < this.F; i++) {
                    ImageView imageView = new ImageView(this.n);
                    imageView.setImageResource(R.drawable.ud_sdk_asus_zenui_family_indicator_dot);
                    imageView.setColorFilter(b(this.z), PorterDuff.Mode.SRC_ATOP);
                    linearLayout.addView(imageView);
                }
                ImageView imageView2 = (ImageView) linearLayout.getChildAt(0);
                imageView2.setImageResource(R.drawable.ud_sdk_asus_zenui_family_indicator_pager);
                imageView2.setColorFilter(b(this.z), PorterDuff.Mode.SRC_ATOP);
                this.s.addOnPageChangeListener(new ViewPager.e() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.3
                    @Override // android.support.v4.view.ViewPager.e
                    public void onPageScrollStateChanged(int i2) {
                        switch (i2) {
                            case 0:
                                ZenFamilyActivity.this.C.postDelayed(ZenFamilyActivity.this.D, ZenFamilyActivity.this.G);
                                return;
                            case 1:
                                ZenFamilyActivity.this.C.removeCallbacks(ZenFamilyActivity.this.D);
                                return;
                            default:
                                return;
                        }
                    }

                    @Override // android.support.v4.view.ViewPager.e
                    public void onPageScrolled(int i2, float f, int i3) {
                    }

                    @Override // android.support.v4.view.ViewPager.e
                    public void onPageSelected(int i2) {
                        for (int i3 = 0; i3 < ZenFamilyActivity.this.F; i3++) {
                            ImageView imageView3 = (ImageView) linearLayout.getChildAt(i3);
                            imageView3.setImageResource(R.drawable.ud_sdk_asus_zenui_family_indicator_dot);
                            imageView3.setColorFilter(ZenFamilyActivity.this.b(ZenFamilyActivity.this.z), PorterDuff.Mode.SRC_ATOP);
                        }
                        ImageView imageView4 = (ImageView) linearLayout.getChildAt(i2);
                        imageView4.setImageResource(R.drawable.ud_sdk_asus_zenui_family_indicator_pager);
                        imageView4.setColorFilter(ZenFamilyActivity.this.b(ZenFamilyActivity.this.z), PorterDuff.Mode.SRC_ATOP);
                    }
                });
            }
        }
    }

    private void h() {
        ((FrameLayout) findViewById(R.id.ud_sdk_sync_layout)).setVisibility(8);
        ((RelativeLayout) findViewById(R.id.ud_sdk_content_layout)).setVisibility(0);
        j();
    }

    static /* synthetic */ void h(ZenFamilyActivity zenFamilyActivity) {
        if (zenFamilyActivity.o == null) {
            Log.v("ZenFamilyActivity", "mAppInfoAdapter is null");
            zenFamilyActivity.f();
        } else {
            zenFamilyActivity.o.notifyDataSetChanged();
            if (zenFamilyActivity.e() && zenFamilyActivity.r != null) {
                zenFamilyActivity.r.notifyDataSetChanged();
                zenFamilyActivity.g();
            }
            if (zenFamilyActivity.H) {
                zenFamilyActivity.a(zenFamilyActivity.z, zenFamilyActivity.A, zenFamilyActivity.B);
                zenFamilyActivity.a(zenFamilyActivity.z);
                zenFamilyActivity.H = false;
            }
        }
        zenFamilyActivity.h();
    }

    private void i() {
        ((FrameLayout) findViewById(R.id.ud_sdk_sync_layout)).setVisibility(0);
        ((RelativeLayout) findViewById(R.id.ud_sdk_content_layout)).setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int i = this.n.getResources().getDisplayMetrics().heightPixels;
        int dimension = (int) getResources().getDimension(R.dimen.ud_sdk_list_view_footer_layout_layout_height);
        float dimension2 = getResources().getDimension(R.dimen.ud_sdk_item_image_view_icon_height) + getResources().getDimension(R.dimen.ud_sdk_item_linearLayout_layout_marginBottom);
        int dimension3 = (int) (e() ? dimension2 + getResources().getDimension(R.dimen.ud_sdk_item_slogan_text_view_layout_height) : dimension2 + getResources().getDimension(R.dimen.ud_sdk_land_slogan_text_view_layout_height));
        int k = k();
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
        TypedValue typedValue = new TypedValue();
        int complexToDimensionPixelSize = dimensionPixelSize + (getTheme().resolveAttribute(16843499, typedValue, true) ? TypedValue.complexToDimensionPixelSize(typedValue.data, getResources().getDisplayMetrics()) : 0) + this.E + (dimension3 * k) + dimension;
        int dimension4 = (int) getResources().getDimension(R.dimen.ud_sdk_footer_layout_offset);
        RelativeLayout relativeLayout = (RelativeLayout) this.y.findViewById(R.id.ud_sdk_list_view_footer);
        int i2 = dimension4;
        if (!e()) {
            i2 = dimension4 + ((int) getResources().getDimension(R.dimen.ud_sdk_land_list_view_layout_marginTop));
        }
        int i3 = dimension;
        if (!DeviceUtils.checkAsusDevice()) {
            this.x.setFooterDividersEnabled(false);
            i3 = 0;
        }
        if (k() > 0) {
            b(false);
        } else {
            b(true);
        }
        int i4 = i3;
        if (i - complexToDimensionPixelSize > 0) {
            i4 = i3 + ((i - complexToDimensionPixelSize) - i2);
        }
        relativeLayout.getLayoutParams().height = i4;
    }

    private int k() {
        return (this.x.getCount() - this.x.getHeaderViewsCount()) - this.x.getFooterViewsCount();
    }

    public ImageFetcher getImageFetcher() {
        return this.u;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.ud_sdk_list_view_button_more) {
            Log.v("ZenFamilyActivity", "open Google Play ZenFamilyPage");
            GeneralUtils.openZenFamilyPage(this.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(R.style.AsusUpdateSdkTheme);
        super.onCreate(bundle);
        Log.v("ZenFamilyActivity", "onCreate");
        setContentView(R.layout.ud_sdk_zenfamily_activity);
        this.n = this;
        this.I = getIntent().getStringExtra("call_by_package");
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.J, intentFilter);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        if (i > i2) {
            i2 = i;
        }
        ImageCache.ImageCacheParams imageCacheParams = new ImageCache.ImageCacheParams(this, "images");
        imageCacheParams.setMemCacheSizePercent(0.25f);
        this.u = new ImageFetcher(this, i2 / 2);
        this.u.setLoadingImage(R.drawable.ud_sdk_empty_photo);
        this.u.addImageCache(getSupportFragmentManager(), imageCacheParams);
        this.u.setImageFadeIn(true);
        getWindow().setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM, VCardConfig.FLAG_APPEND_TYPE_PARAM);
        this.w = findViewById(R.id.ud_sdk_background);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setTitle(ZenUiFamily.getZenUiFamilyTitle());
            actionBar.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.ud_sdk_background_white)));
        }
        this.C = new Handler();
        this.D = new Runnable() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.4
            @Override // java.lang.Runnable
            public void run() {
                ZenFamilyActivity.this.runOnUiThread(new Runnable() { // from class: com.asus.updatesdk.activity.ZenFamilyActivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ZenFamilyActivity.this.r != null) {
                            int currentItem = ZenFamilyActivity.this.s.getCurrentItem() + 1;
                            if (currentItem < ZenFamilyActivity.this.F) {
                                ZenFamilyActivity.this.s.setCurrentItem(currentItem);
                                return;
                            }
                            ZenFamilyActivity.this.s.setCurrentItem(0, false);
                            ZenFamilyActivity.this.C.postDelayed(ZenFamilyActivity.this.D, ZenFamilyActivity.this.G);
                        }
                    }
                });
            }
        };
        if (bundle == null) {
            i();
            f();
        } else if (q == null || q.size() == 0) {
            i();
        } else {
            GeneralUtils.setCDNIudVersion(bundle.getLong(CdnUtils.KEY_IUD_VERSION));
            GeneralUtils.setCDNStringsVersion(bundle.getLong(CdnUtils.KEY_STRINGS_VERSION));
            this.G = bundle.getLong("auto_play_millis");
            this.z = bundle.getString("theme_color");
            this.A = bundle.getString("update_button_color");
            this.B = bundle.getString("open_button_color");
            f();
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.J);
        this.u.closeCache();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.t != null) {
            this.t.dismiss();
            this.t = null;
        }
        if (this.C != null) {
            this.C.removeCallbacks(this.D);
        }
        this.u.setExitTasksEarly(true);
        this.u.flushCache();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onResume() {
        super.onResume();
        this.u.setExitTasksEarly(false);
        new LoadListTask(this, (byte) 0).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong(CdnUtils.KEY_IUD_VERSION, GeneralUtils.getCDNIudVersion());
        bundle.putLong(CdnUtils.KEY_STRINGS_VERSION, GeneralUtils.getCDNStringsVersion());
        bundle.putLong("auto_play_millis", this.G);
        bundle.putString("theme_color", this.z);
        bundle.putString("update_button_color", this.A);
        bundle.putString("open_button_color", this.B);
        getIntent().putExtra("has_bundle", true);
    }

    public void setPanelAutoPlayMillis(long j) {
        this.G = j;
    }

    public void setThemeColor(String str, String str2, String str3) {
        this.z = str;
        this.A = str2;
        this.B = str3;
    }
}
