package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import com.inmobi.ads.C8310v;
import com.inmobi.ads.C8311w;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/BaseUrlGenerator.class */
public abstract class BaseUrlGenerator {

    /* renamed from: c */
    public static AppEngineInfo f33649c;

    /* renamed from: d */
    public static String f33650d;

    /* renamed from: a */
    public StringBuilder f33651a;

    /* renamed from: b */
    public boolean f33652b;

    public static void setAppEngineInfo(AppEngineInfo appEngineInfo) {
        f33649c = appEngineInfo;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        f33650d = str;
    }

    /* renamed from: a */
    public void m4716a() {
        m4712a("udid", PlayServicesUrlRewriter.UDID_TEMPLATE);
        m4712a("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        m4712a("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
    }

    /* renamed from: a */
    public void m4715a(Point point, Point point2, WindowInsets windowInsets) {
        int i = 0;
        int i2 = point2 != null ? point2.x : 0;
        if (point2 != null) {
            i = point2.y;
        }
        if (Build.VERSION.SDK_INT < 28 || windowInsets == null || windowInsets.getDisplayCutout() == null) {
            m4712a("cw", "" + i2);
            m4712a("ch", "" + i);
        } else {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            int i3 = point.x;
            int safeInsetLeft = displayCutout.getSafeInsetLeft();
            int safeInsetRight = displayCutout.getSafeInsetRight();
            int i4 = point.y;
            int safeInsetTop = displayCutout.getSafeInsetTop();
            int safeInsetBottom = displayCutout.getSafeInsetBottom();
            m4712a("cw", "" + Math.min((i3 - safeInsetLeft) - safeInsetRight, i2));
            m4712a("ch", "" + Math.min((i4 - safeInsetTop) - safeInsetBottom, i));
        }
        m4712a(C8311w.f32327d, "" + point.x);
        m4712a("h", "" + point.y);
    }

    /* renamed from: a */
    public void m4714a(String str) {
        m4712a(C8310v.f32322d, str);
    }

    /* renamed from: a */
    public void m4713a(String str, Boolean bool) {
        if (bool != null) {
            this.f33651a.append(m4704e());
            this.f33651a.append(str);
            this.f33651a.append("=");
            this.f33651a.append(bool.booleanValue() ? "1" : "0");
        }
    }

    /* renamed from: a */
    public void m4712a(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.f33651a.append(m4704e());
            this.f33651a.append(str);
            this.f33651a.append("=");
            this.f33651a.append(Uri.encode(str2));
        }
    }

    /* renamed from: a */
    public void m4711a(boolean z) {
        m4712a("android_perms_ext_storage", z ? "1" : "0");
    }

    /* renamed from: a */
    public void m4710a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr != null && strArr.length >= 1) {
            for (int i = 0; i < strArr.length - 1; i++) {
                sb.append(strArr[i]);
                sb.append(",");
            }
            sb.append(strArr[strArr.length - 1]);
            m4712a("dn", sb.toString());
        }
    }

    /* renamed from: b */
    public void m4709b() {
        AppEngineInfo appEngineInfo = f33649c;
        if (appEngineInfo != null) {
            m4712a("e_name", appEngineInfo.f33646a);
            m4712a("e_ver", appEngineInfo.f33647b);
        }
    }

    /* renamed from: b */
    public void m4708b(String str) {
        m4712a("av", str);
    }

    /* renamed from: b */
    public void m4707b(String str, String str2) {
        StringBuilder sb = new StringBuilder(Networking.getScheme());
        sb.append("://");
        sb.append(str);
        sb.append(str2);
        this.f33651a = sb;
        this.f33652b = true;
    }

    /* renamed from: c */
    public void m4706c() {
        m4712a("w_ver", f33650d);
    }

    /* renamed from: d */
    public String m4705d() {
        return this.f33651a.toString();
    }

    /* renamed from: e */
    public final String m4704e() {
        if (!this.f33652b) {
            return "&";
        }
        this.f33652b = false;
        return "?";
    }

    public abstract String generateUrlString(String str);
}
