package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import com.google.android.gms.ads.internal.zzp;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazd.class */
public class zzazd {
    public zzazd() {
    }

    /* renamed from: a */
    public static zzazd m16047a(int i) {
        return i >= 28 ? new zzazk() : i >= 26 ? new zzazl() : i >= 24 ? new zzazi() : i >= 21 ? new zzazj() : i >= 19 ? new zzazg() : i >= 18 ? new zzazh() : i >= 17 ? new zzaze() : new zzazd();
    }

    /* renamed from: a */
    public static boolean m16046a(zzbgj zzbgjVar) {
        if (zzbgjVar == null) {
            return false;
        }
        zzbgjVar.onPause();
        return true;
    }

    /* renamed from: b */
    public static boolean m16045b(zzbgj zzbgjVar) {
        if (zzbgjVar == null) {
            return false;
        }
        zzbgjVar.onResume();
        return true;
    }

    /* renamed from: e */
    public static boolean m16044e() {
        int myUid = Process.myUid();
        return myUid == 0 || myUid == 1000;
    }

    /* renamed from: a */
    public int mo16036a() {
        return 5;
    }

    /* renamed from: a */
    public int mo16043a(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "wifi_on", 0);
    }

    /* renamed from: a */
    public Drawable mo16041a(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    /* renamed from: a */
    public WebResourceResponse mo16030a(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    /* renamed from: a */
    public zzbgi mo16031a(zzbgj zzbgjVar, zzts zztsVar, boolean z) {
        return new zzbhk(zzbgjVar, zztsVar, z);
    }

    /* renamed from: a */
    public zzuk mo16024a(Context context, TelephonyManager telephonyManager) {
        return zzuk.ENUM_UNKNOWN;
    }

    /* renamed from: a */
    public String mo16042a(Context context) {
        return "";
    }

    /* renamed from: a */
    public void mo16027a(Activity activity) {
    }

    /* renamed from: a */
    public boolean mo16032a(Activity activity, Configuration configuration) {
        return false;
    }

    /* renamed from: a */
    public boolean mo16040a(final Context context, final WebSettings webSettings) {
        zzbay.m15929a(context, new Callable(context, webSettings) { // from class: c.d.b.d.g.a.m5

            /* renamed from: a */
            public final Context f14017a;

            /* renamed from: b */
            public final WebSettings f14018b;

            {
                this.f14017a = context;
                this.f14018b = webSettings;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context2 = this.f14017a;
                WebSettings webSettings2 = this.f14018b;
                if (context2.getCacheDir() != null) {
                    webSettings2.setAppCachePath(context2.getCacheDir().getAbsolutePath());
                    webSettings2.setAppCacheMaxSize(0L);
                    webSettings2.setAppCacheEnabled(true);
                }
                webSettings2.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings2.setDatabaseEnabled(true);
                webSettings2.setDomStorageEnabled(true);
                webSettings2.setDisplayZoomControls(false);
                webSettings2.setBuiltInZoomControls(true);
                webSettings2.setSupportZoom(true);
                webSettings2.setAllowContentAccess(false);
                return true;
            }
        });
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        return true;
    }

    /* renamed from: a */
    public boolean mo16035a(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    public int mo16039b(ContentResolver contentResolver) {
        return Settings.System.getInt(contentResolver, "airplane_mode_on", 0);
    }

    /* renamed from: b */
    public ViewGroup.LayoutParams mo16037b() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: b */
    public void mo16038b(Context context) {
    }

    /* renamed from: c */
    public int mo16029c() {
        return 1;
    }

    /* renamed from: c */
    public CookieManager mo16028c(Context context) {
        if (m16044e()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzbbq.m15855b("Failed to obtain CookieManager.", th);
            zzp.m17965g().m16188a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    /* renamed from: d */
    public long mo16034d() {
        return -1L;
    }
}
