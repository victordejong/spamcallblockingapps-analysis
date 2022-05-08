package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.C2283m;
import com.facebook.login.LoginClient;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.login.f */
/* loaded from: classes-dex2jar.jar:com/facebook/login/f.class */
public class C2538f {

    /* renamed from: a */
    public final C2283m f3348a;

    /* renamed from: b */
    public String f3349b;

    /* renamed from: c */
    public String f3350c;

    public C2538f(Context context, String str) {
        PackageInfo packageInfo;
        this.f3349b = str;
        this.f3348a = new C2283m(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo("com.facebook.katana", 0)) != null) {
                this.f3350c = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: a */
    public static Bundle m34377a(String str) {
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", str);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    /* renamed from: a */
    public String m34379a() {
        return this.f3349b;
    }

    /* renamed from: a */
    public void m34378a(LoginClient.Request request) {
        Bundle a = m34377a(request.m34446b());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("login_behavior", request.m34440t().toString());
            jSONObject.put("request_code", LoginClient.m34479B());
            jSONObject.put("permissions", TextUtils.join(",", request.m34439u()));
            jSONObject.put("default_audience", request.m34443q().toString());
            jSONObject.put("isReauthorize", request.m34437w());
            if (this.f3350c != null) {
                jSONObject.put("facebookVersion", this.f3350c);
            }
            a.putString("6_extras", jSONObject.toString());
        } catch (JSONException e) {
        }
        this.f3348a.m35299a("fb_mobile_login_start", (Double) null, a);
    }

    /* renamed from: a */
    public void m34376a(String str, String str2) {
        Bundle a = m34377a(str);
        a.putString("3_method", str2);
        this.f3348a.m35293b("fb_mobile_login_method_not_tried", a);
    }

    /* renamed from: a */
    public void m34375a(String str, String str2, String str3) {
        Bundle a = m34377a("");
        a.putString("2_result", LoginClient.Result.EnumC2524b.ERROR.m34432a());
        a.putString("5_error_message", str2);
        a.putString("3_method", str3);
        this.f3348a.m35293b(str, a);
    }

    /* renamed from: a */
    public void m34374a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        Bundle a = m34377a(str);
        if (str3 != null) {
            a.putString("2_result", str3);
        }
        if (str4 != null) {
            a.putString("5_error_message", str4);
        }
        if (str5 != null) {
            a.putString("4_error_code", str5);
        }
        if (map != null && !map.isEmpty()) {
            a.putString("6_extras", new JSONObject(map).toString());
        }
        a.putString("3_method", str2);
        this.f3348a.m35293b("fb_mobile_login_method_complete", a);
    }

    /* renamed from: a */
    public void m34373a(String str, Map<String, String> map, LoginClient.Result.EnumC2524b bVar, Map<String, String> map2, Exception exc) {
        Bundle a = m34377a(str);
        if (bVar != null) {
            a.putString("2_result", bVar.m34432a());
        }
        if (!(exc == null || exc.getMessage() == null)) {
            a.putString("5_error_message", exc.getMessage());
        }
        JSONObject jSONObject = null;
        if (!map.isEmpty()) {
            jSONObject = new JSONObject(map);
        }
        JSONObject jSONObject2 = jSONObject;
        if (map2 != null) {
            JSONObject jSONObject3 = jSONObject;
            if (jSONObject == null) {
                jSONObject3 = new JSONObject();
            }
            try {
                Iterator<Map.Entry<String, String>> it = map2.entrySet().iterator();
                while (true) {
                    jSONObject2 = jSONObject3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    jSONObject3.put(next.getKey(), next.getValue());
                }
            } catch (JSONException e) {
                jSONObject2 = jSONObject3;
            }
        }
        if (jSONObject2 != null) {
            a.putString("6_extras", jSONObject2.toString());
        }
        this.f3348a.m35293b("fb_mobile_login_complete", a);
    }

    /* renamed from: b */
    public void m34372b(String str, String str2) {
        Bundle a = m34377a(str);
        a.putString("3_method", str2);
        this.f3348a.m35293b("fb_mobile_login_method_start", a);
    }

    /* renamed from: c */
    public void m34371c(String str, String str2) {
        m34375a(str, str2, "");
    }
}
