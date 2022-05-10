package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzdgx;
import com.google.android.gms.internal.ads.zzdha;
import com.google.android.gms.internal.ads.zzdzb;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzepj;
import com.google.common.collect.MapMakerInternalMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.qu */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qu.class */
public final class C3966qu implements zzdgx<zzdha> {

    /* renamed from: a */
    public final zzdzb f14842a;

    /* renamed from: b */
    public final Context f14843b;

    public C3966qu(zzdzb zzdzbVar, Context context) {
        this.f14842a = zzdzbVar;
        this.f14843b = context;
    }

    /* renamed from: a */
    public static ResolveInfo m26460a(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), MapMakerInternalMap.MAX_SEGMENTS);
    }

    /* renamed from: a */
    public static String m26462a(Context context) {
        try {
            PackageInfo b = Wrappers.m17026b(context).m17028b("com.android.vending", 128);
            if (b == null) {
                return null;
            }
            int i = b.versionCode;
            String str = b.packageName;
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
    public static String m26461a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a = m26460a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a == null || (activityInfo = a.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo b = Wrappers.m17026b(context).m17028b(activityInfo.packageName, 0);
            if (b == null) {
                return null;
            }
            int i = b.versionCode;
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

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdha> mo13576a() {
        return this.f14842a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.pu

            /* renamed from: a */
            public final C3966qu f14564a;

            {
                this.f14564a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f14564a.m26459b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdha m26459b() throws Exception {
        boolean z;
        PackageManager packageManager = this.f14843b.getPackageManager();
        Locale locale = Locale.getDefault();
        boolean z2 = m26460a(packageManager, "geo:0,0?q=donuts") != null;
        boolean z3 = m26460a(packageManager, "http://www.google.com") != null;
        String country = locale.getCountry();
        boolean startsWith = Build.DEVICE.startsWith("generic");
        boolean b = DeviceProperties.m17085b(this.f14843b);
        boolean c = DeviceProperties.m17083c(this.f14843b);
        String language = locale.getLanguage();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList localeList = LocaleList.getDefault();
            for (int i = 0; i < localeList.size(); i++) {
                arrayList.add(localeList.get(i).getLanguage());
            }
        }
        String a = m26461a(this.f14843b, packageManager);
        String a2 = m26462a(this.f14843b);
        String str = Build.FINGERPRINT;
        Context context = this.f14843b;
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, MapMakerInternalMap.MAX_SEGMENTS);
            if (!(queryIntentActivities == null || resolveActivity == null)) {
                for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                        z = resolveActivity.activityInfo.packageName.equals(zzepj.m12182a(context));
                        break;
                    }
                }
            }
        }
        z = false;
        return new zzdha(z2, z3, country, startsWith, b, c, language, arrayList, a, a2, str, z, Build.MODEL, zzp.m17967e().mo16034d());
    }
}
