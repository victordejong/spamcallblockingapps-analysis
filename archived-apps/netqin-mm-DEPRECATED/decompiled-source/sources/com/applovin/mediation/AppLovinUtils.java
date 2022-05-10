package com.applovin.mediation;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinUtils.class */
public class AppLovinUtils {
    /* renamed from: a */
    public static Bundle m18798a(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static AdSize m18797a(AdSize adSize, AdSize adSize2) {
        if (adSize.m18133b() * adSize.m18137a() <= adSize2.m18133b() * adSize2.m18137a()) {
            adSize = adSize2;
        }
        return adSize;
    }

    public static boolean androidManifestHasValidSdkKey(Context context) {
        Bundle a = m18798a(context);
        if (a != null) {
            return !TextUtils.isEmpty(a.getString("applovin.sdk.key"));
        }
        return false;
    }

    public static AppLovinAdSize appLovinAdSizeFromAdMobAdSize(Context context, AdSize adSize) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(0, AdSize.f22648g);
        arrayList.add(1, AdSize.f22651j);
        arrayList.add(2, AdSize.f22652k);
        AdSize findClosestSize = findClosestSize(context, adSize, arrayList);
        if (findClosestSize == null) {
            return null;
        }
        if (AdSize.f22648g.equals(findClosestSize)) {
            return AppLovinAdSize.BANNER;
        }
        if (AdSize.f22652k.equals(findClosestSize)) {
            return AppLovinAdSize.MREC;
        }
        if (AdSize.f22651j.equals(findClosestSize)) {
            return AppLovinAdSize.LEADER;
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m18796b(AdSize adSize, AdSize adSize2) {
        if (adSize2 == null) {
            return false;
        }
        int b = adSize.m18133b();
        int b2 = adSize2.m18133b();
        int a = adSize.m18137a();
        int a2 = adSize2.m18137a();
        double d = b;
        Double.isNaN(d);
        boolean z = false;
        if (d * 0.5d <= b2) {
            if (b < b2) {
                z = false;
            } else {
                double d2 = a;
                Double.isNaN(d2);
                z = false;
                if (d2 * 0.7d <= a2) {
                    z = false;
                    if (a >= a2) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static AdSize findClosestSize(Context context, AdSize adSize, ArrayList<AdSize> arrayList) {
        AdSize adSize2 = null;
        AdSize adSize3 = null;
        if (arrayList != null) {
            if (adSize != null) {
                float f = context.getResources().getDisplayMetrics().density;
                AdSize adSize4 = new AdSize(Math.round(adSize.m18132b(context) / f), Math.round(adSize.m18135a(context) / f));
                Iterator<AdSize> it = arrayList.iterator();
                while (true) {
                    adSize3 = adSize2;
                    if (!it.hasNext()) {
                        break;
                    }
                    AdSize next = it.next();
                    if (m18796b(adSize4, next)) {
                        adSize2 = adSize2 == null ? next : m18797a(adSize2, next);
                    }
                }
            } else {
                adSize3 = null;
            }
        }
        return adSize3;
    }

    public static AppLovinSdk retrieveSdk(Bundle bundle, Context context) {
        String string = bundle != null ? bundle.getString("sdkKey") : null;
        AppLovinSdk instance = !TextUtils.isEmpty(string) ? AppLovinSdk.getInstance(string, new AppLovinSdkSettings(), context) : AppLovinSdk.getInstance(context);
        instance.setPluginVersion("9.12.2.0");
        instance.setMediationProvider(AppLovinMediationProvider.ADMOB);
        return instance;
    }

    public static String retrieveZoneId(Bundle bundle) {
        return bundle.containsKey("zone_id") ? bundle.getString("zone_id") : "";
    }

    public static boolean shouldMuteAudio(Bundle bundle) {
        return bundle != null && bundle.getBoolean("mute_audio");
    }

    public static int toAdMobErrorCode(int i) {
        if (i == 204) {
            return 3;
        }
        return i == -102 ? 2 : 0;
    }
}
