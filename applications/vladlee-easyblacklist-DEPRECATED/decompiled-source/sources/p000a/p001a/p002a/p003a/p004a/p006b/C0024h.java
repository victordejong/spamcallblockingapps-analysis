package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.b.h */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/h.class */
public final class C0024h {
    /* renamed from: a */
    public static String m10360a(Context context) {
        String b = m10359b(context);
        String str = b;
        if (TextUtils.isEmpty(b)) {
            str = m10358c(context);
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            new C0042w();
            int a = C0026j.m10353a(context, "google_app_id", "string");
            if (a != 0) {
                C0137d.m10155c().mo10135a("Fabric", "Generating Crashlytics ApiKey from google_app_id in Strings");
                str2 = C0026j.m10331b(context.getResources().getString(a)).substring(0, 40);
            } else {
                str2 = null;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            if (C0137d.m10154d() || C0026j.m10321h(context)) {
                throw new IllegalArgumentException("Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
            }
            C0137d.m10155c().mo10128e("Fabric", "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>");
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static String m10359b(Context context) {
        Exception e;
        r5 = null;
        String str = null;
        String str2 = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                str2 = bundle.getString("io.fabric.ApiKey");
                try {
                    if ("@string/twitter_consumer_secret".equals(str2)) {
                        C0137d.m10155c().mo10135a("Fabric", "Ignoring bad default value for Fabric ApiKey set by FirebaseUI-Auth");
                    } else {
                        str = str2;
                    }
                    str2 = str;
                    if (str == null) {
                        C0137d.m10155c().mo10135a("Fabric", "Falling back to Crashlytics key lookup from Manifest");
                        str2 = str;
                        str2 = bundle.getString("com.crashlytics.ApiKey");
                    }
                } catch (Exception e2) {
                    e = e2;
                    C0137d.m10155c().mo10135a("Fabric", "Caught non-fatal exception while retrieving apiKey: ".concat(String.valueOf(e)));
                    return str2;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public static String m10358c(Context context) {
        int a = C0026j.m10353a(context, "io.fabric.ApiKey", "string");
        int i = a;
        if (a == 0) {
            C0137d.m10155c().mo10135a("Fabric", "Falling back to Crashlytics key lookup from Strings");
            i = C0026j.m10353a(context, "com.crashlytics.ApiKey", "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }
}
