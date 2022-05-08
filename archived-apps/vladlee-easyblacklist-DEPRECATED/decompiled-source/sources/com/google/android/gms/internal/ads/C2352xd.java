package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.xd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xd.class */
final class C2352xd implements zzcub<zzcue> {

    /* renamed from: a */
    private final zzdhd f10681a;

    /* renamed from: b */
    private final Context f10682b;

    public C2352xd(zzdhd zzdhdVar, Context context) {
        this.f10681a = zzdhdVar;
        this.f10682b = context;
    }

    /* renamed from: a */
    private static ResolveInfo m4458a(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* renamed from: a */
    private static String m4460a(Context context) {
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

    /* renamed from: a */
    private static String m4459a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a = m4458a(packageManager, "market://details?id=com.google.android.gms.ads");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcue m4461a() {
        PackageManager packageManager = this.f10682b.getPackageManager();
        Locale locale = Locale.getDefault();
        boolean z = m4458a(packageManager, "geo:0,0?q=donuts") != null;
        boolean z2 = m4458a(packageManager, "http://www.google.com") != null;
        String country = locale.getCountry();
        boolean startsWith = Build.DEVICE.startsWith("generic");
        boolean isLatchsky = DeviceProperties.isLatchsky(this.f10682b);
        boolean isSidewinder = DeviceProperties.isSidewinder(this.f10682b);
        String language = locale.getLanguage();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList localeList = LocaleList.getDefault();
            for (int i = 0; i < localeList.size(); i++) {
                arrayList.add(localeList.get(i).getLanguage());
            }
        }
        String a = m4459a(this.f10682b, packageManager);
        String a2 = m4460a(this.f10682b);
        String str = Build.FINGERPRINT;
        Context context = this.f10682b;
        boolean z3 = false;
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            z3 = false;
            if (queryIntentActivities != null) {
                z3 = false;
                if (resolveActivity != null) {
                    int i2 = 0;
                    while (true) {
                        z3 = false;
                        if (i2 >= queryIntentActivities.size()) {
                            break;
                        }
                        if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                            z3 = resolveActivity.activityInfo.packageName.equals(zzdxr.zzcc(context));
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        return new zzcue(z, z2, country, startsWith, isLatchsky, isSidewinder, language, arrayList, a, a2, str, z3, Build.MODEL, zzq.zzks().zzws());
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcue> zzanc() {
        return this.f10681a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.xc

            /* renamed from: a */
            private final C2352xd f10680a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10680a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10680a.m4461a();
            }
        });
    }
}
