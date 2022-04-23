package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import androidx.appcompat.app.AppCompatActivity;
import com.vladlee.p076a.C3238b;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.vladlee.easyblacklist.dk */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dk.class */
public final class C3365dk {

    /* renamed from: g */
    private C3238b f19506g;

    /* renamed from: d */
    private final String f19503d = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtLUbXa9W9gSY3vkHhYn6oi3+EFAYG3Q5D6vwQ3uGthIW4Bd/HlquSOVGnLEdN48NvRtG0l1Z0SCC";

    /* renamed from: e */
    private final String f19504e = "+OcX6m+UKxHRqhikh363gBexTZkuVlMsBF167CiL9RsfQCNvr8lvHozSQJ2bA4HRP2JXOC0L";

    /* renamed from: f */
    private final String f19505f = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtLUbXa9W9gSY3vkHhYn6oi3+EFAYG3Q5D6vwQ3uGthIW4Bd/HlquSOVGnLEdN48NvRtG0l1Z0SCC+tOESptdRgMFu0+JNTGP9HtSEaTrY7at34iDRYh8fxUXLasDISDjWqn6KQNVUrkP+QOrM3IXalBtlfpRB7bpy0ipMvba1PZpvysHKGWDcEbLbYpyrjqIWQ96sfp+OcX6m+UKxHRqhikh363gBexTZkuVlMsBF167CiL9RsfQCNvr8lvHozSQJ2bA4HRP2JXOC0L7qi3j5CWJLLF4o5tujXYRlbGUmX1Hu84FWrXLjw3ZGXlVr9CJvNUTBNt0WsWpSzUCtAFaIwIDAQAB";

    /* renamed from: h */
    private boolean f19507h = false;

    /* renamed from: i */
    private boolean f19508i = false;

    /* renamed from: a */
    public C3238b.AbstractC3242d f19500a = new C3366dl(this);

    /* renamed from: b */
    public C3238b.AbstractC3240b f19501b = new C3367dm(this);

    /* renamed from: c */
    public C3238b.AbstractC3241c f19502c = new C3368dn(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3365dk(Context context) {
        this.f19506g = null;
        this.f19506g = new C3238b(context, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtLUbXa9W9gSY3vkHhYn6oi3+EFAYG3Q5D6vwQ3uGthIW4Bd/HlquSOVGnLEdN48NvRtG0l1Z0SCC+tOESptdRgMFu0+JNTGP9HtSEaTrY7at34iDRYh8fxUXLasDISDjWqn6KQNVUrkP+QOrM3IXalBtlfpRB7bpy0ipMvba1PZpvysHKGWDcEbLbYpyrjqIWQ96sfp+OcX6m+UKxHRqhikh363gBexTZkuVlMsBF167CiL9RsfQCNvr8lvHozSQJ2bA4HRP2JXOC0L7qi3j5CWJLLF4o5tujXYRlbGUmX1Hu84FWrXLjw3ZGXlVr9CJvNUTBNt0WsWpSzUCtAFaIwIDAQAB");
    }

    /* renamed from: a */
    private static String m138a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static void m131c(Context context) {
        String e = m129e(context);
        if (e != null) {
            C3391ed.m90a(context, "pref_code_value", e);
        }
    }

    /* renamed from: d */
    private static boolean m130d(Context context) {
        String e = m129e(context);
        if (e != null) {
            return C3391ed.m87b(context, "pref_code_value", "").equals(e);
        }
        return false;
    }

    /* renamed from: e */
    private static String m129e(Context context) {
        String str;
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        try {
            if (Build.VERSION.SDK_INT >= 9) {
                StringBuilder sb = new StringBuilder();
                sb.append(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime);
                str = sb.toString();
            } else {
                str = String.valueOf(new File(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir).lastModified());
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = "";
        }
        return m138a(string + str);
    }

    /* renamed from: a */
    public final void m143a(Context context) {
        if (!m130d(context)) {
            this.f19506g.m419a(this.f19502c);
        } else {
            this.f19507h = true;
        }
    }

    /* renamed from: a */
    public final void m142a(AppCompatActivity appCompatActivity) {
        try {
            this.f19506g.m421a(appCompatActivity, "no_ads", "inapp", this.f19501b, "");
        } catch (C3238b.C3239a e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m141a(C3238b.AbstractC3242d dVar) {
        try {
            this.f19506g.m418a(dVar);
        } catch (C3238b.C3239a e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m137a(boolean z) {
        this.f19507h = z;
    }

    /* renamed from: a */
    public final boolean m145a() {
        return this.f19508i;
    }

    /* renamed from: a */
    public final boolean m144a(int i, int i2, Intent intent) {
        return this.f19506g.m422a(i, i2, intent);
    }

    /* renamed from: b */
    public final void m136b() {
        try {
            this.f19506g.m424a();
        } catch (C3238b.C3239a e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public final void m133b(boolean z) {
        this.f19508i = z;
    }

    /* renamed from: b */
    public final boolean m135b(Context context) {
        if (this.f19507h) {
            return true;
        }
        if (m130d(context)) {
            this.f19507h = true;
        }
        return this.f19507h;
    }

    /* renamed from: c */
    public final void m132c() {
        try {
            this.f19506g.m418a(this.f19500a);
        } catch (C3238b.C3239a e) {
            e.printStackTrace();
        }
    }
}
