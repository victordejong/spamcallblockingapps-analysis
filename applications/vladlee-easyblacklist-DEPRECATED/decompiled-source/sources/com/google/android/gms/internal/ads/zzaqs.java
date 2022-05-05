package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqs.class */
public final class zzaqs {

    /* renamed from: A */
    private int f11275A;

    /* renamed from: B */
    private String f11276B;

    /* renamed from: C */
    private boolean f11277C;

    /* renamed from: a */
    private int f11278a;

    /* renamed from: b */
    private boolean f11279b;

    /* renamed from: c */
    private boolean f11280c;

    /* renamed from: d */
    private int f11281d;

    /* renamed from: e */
    private int f11282e;

    /* renamed from: f */
    private int f11283f;

    /* renamed from: g */
    private String f11284g;

    /* renamed from: h */
    private int f11285h;

    /* renamed from: i */
    private int f11286i;

    /* renamed from: j */
    private int f11287j;

    /* renamed from: k */
    private boolean f11288k;

    /* renamed from: l */
    private int f11289l;

    /* renamed from: m */
    private double f11290m;

    /* renamed from: n */
    private boolean f11291n;

    /* renamed from: o */
    private String f11292o;

    /* renamed from: p */
    private String f11293p;

    /* renamed from: q */
    private boolean f11294q;

    /* renamed from: r */
    private boolean f11295r;

    /* renamed from: s */
    private String f11296s;

    /* renamed from: t */
    private boolean f11297t;

    /* renamed from: u */
    private final boolean f11298u;

    /* renamed from: v */
    private boolean f11299v;

    /* renamed from: w */
    private String f11300w;

    /* renamed from: x */
    private String f11301x;

    /* renamed from: y */
    private float f11302y;

    /* renamed from: z */
    private int f11303z;

    public zzaqs(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        m4316a(context);
        m4313b(context);
        m4312c(context);
        Locale locale = Locale.getDefault();
        boolean z = true;
        this.f11294q = m4314a(packageManager, "geo:0,0?q=donuts") != null;
        if (m4314a(packageManager, "http://www.google.com") == null) {
            z = false;
        }
        this.f11295r = z;
        this.f11296s = locale.getCountry();
        zzve.zzou();
        this.f11297t = zzayk.zzxd();
        this.f11298u = DeviceProperties.isLatchsky(context);
        this.f11299v = DeviceProperties.isSidewinder(context);
        this.f11300w = locale.getLanguage();
        this.f11301x = m4315a(context, packageManager);
        this.f11276B = m4311d(context);
        Resources resources = context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            this.f11302y = displayMetrics.density;
            this.f11303z = displayMetrics.widthPixels;
            this.f11275A = displayMetrics.heightPixels;
        }
    }

    public zzaqs(Context context, zzaqt zzaqtVar) {
        m4316a(context);
        m4313b(context);
        m4312c(context);
        this.f11292o = Build.FINGERPRINT;
        this.f11293p = Build.DEVICE;
        this.f11277C = PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzaao.zzk(context);
        this.f11294q = zzaqtVar.zzdmx;
        this.f11295r = zzaqtVar.zzdmy;
        this.f11296s = zzaqtVar.zzdmz;
        this.f11297t = zzaqtVar.zzdna;
        this.f11298u = zzaqtVar.zzdnb;
        this.f11299v = zzaqtVar.zzdnc;
        this.f11300w = zzaqtVar.zzdnd;
        this.f11301x = zzaqtVar.zzdne;
        this.f11276B = zzaqtVar.zzdnf;
        this.f11302y = zzaqtVar.zzboh;
        this.f11303z = zzaqtVar.zzdgf;
        this.f11275A = zzaqtVar.zzdgg;
    }

    /* renamed from: a */
    private static ResolveInfo m4314a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            zzq.zzku().zza(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* renamed from: a */
    private static String m4315a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a = m4314a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a == null || (activityInfo = a.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo == null) {
                return null;
            }
            int i = packageInfo.versionCode;
            String str = activityInfo.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    private final void m4316a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f11278a = audioManager.getMode();
                this.f11279b = audioManager.isMusicActive();
                this.f11280c = audioManager.isSpeakerphoneOn();
                this.f11281d = audioManager.getStreamVolume(3);
                this.f11282e = audioManager.getRingerMode();
                this.f11283f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzq.zzku().zza(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f11278a = -2;
        this.f11279b = false;
        this.f11280c = false;
        this.f11281d = 0;
        this.f11282e = 2;
        this.f11283f = 0;
    }

    /* renamed from: b */
    private final void m4313b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.f11284g = telephonyManager.getNetworkOperator();
        this.f11286i = telephonyManager.getNetworkType();
        this.f11287j = telephonyManager.getPhoneType();
        this.f11285h = -2;
        this.f11288k = false;
        this.f11289l = -1;
        zzq.zzkq();
        if (zzawb.zzq(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.f11285h = activeNetworkInfo.getType();
                this.f11289l = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.f11285h = -1;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                this.f11288k = connectivityManager.isActiveNetworkMetered();
            }
        }
    }

    /* renamed from: c */
    private final void m4312c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            this.f11290m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.f11291n = z;
            return;
        }
        this.f11290m = -1.0d;
        this.f11291n = false;
    }

    /* renamed from: d */
    private static String m4311d(Context context) {
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.vending", 128);
            if (packageInfo == null) {
                return null;
            }
            int i = packageInfo.versionCode;
            String str = packageInfo.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    public final zzaqt zzug() {
        return new zzaqt(this.f11278a, this.f11294q, this.f11295r, this.f11284g, this.f11296s, this.f11297t, this.f11298u, this.f11299v, this.f11279b, this.f11280c, this.f11300w, this.f11301x, this.f11276B, this.f11281d, this.f11285h, this.f11286i, this.f11287j, this.f11282e, this.f11283f, this.f11302y, this.f11303z, this.f11275A, this.f11290m, this.f11291n, this.f11288k, this.f11289l, this.f11292o, this.f11277C, this.f11293p);
    }
}
