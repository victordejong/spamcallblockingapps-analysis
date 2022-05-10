package com.moat.analytics.mobile.mpub;

import android.os.Build;
import com.inmobi.ads.C8112ap;
import com.moat.analytics.mobile.mpub.C8667w;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.mpub.l */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/l.class */
public class C8642l {

    /* renamed from: a */
    public boolean f33526a = false;

    /* renamed from: b */
    public boolean f33527b = false;

    /* renamed from: c */
    public boolean f33528c = false;

    /* renamed from: d */
    public int f33529d = 200;

    /* renamed from: e */
    public int f33530e = 10;

    public C8642l(String str) {
        m4888a(str);
    }

    /* renamed from: a */
    private void m4888a(String str) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("sa");
                boolean equals = string.equals("9d24c90729bf464dce5d8fd1ace14a60656dbb2d");
                boolean equals2 = string.equals("8f1d08a2d6496191a5ebae8f0590f513e2619489");
                if ((string.equals("on") || equals || equals2) && !m4887a(jSONObject) && !m4885b(jSONObject)) {
                    this.f33526a = true;
                    this.f33527b = equals;
                    this.f33528c = equals2;
                    if (equals2) {
                        this.f33527b = true;
                    }
                }
                if (jSONObject.has("in")) {
                    int i = jSONObject.getInt("in");
                    if (i >= 100 && i <= 1000) {
                        this.f33529d = i;
                    }
                }
                if (jSONObject.has("es")) {
                    this.f33530e = jSONObject.getInt("es");
                }
                if (m4883c(jSONObject)) {
                    ((C8641k) MoatAnalytics.getInstance()).f33520c = true;
                }
            } catch (Exception e) {
                this.f33526a = false;
                this.f33527b = false;
                this.f33529d = 200;
                C8643m.m4879a(e);
            }
        }
    }

    /* renamed from: a */
    private boolean m4887a(JSONObject jSONObject) {
        try {
            if (16 > Build.VERSION.SDK_INT) {
                return true;
            }
            if (!jSONObject.has("ob")) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("ob");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getInt(i) == Build.VERSION.SDK_INT) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    /* renamed from: b */
    private boolean m4885b(JSONObject jSONObject) {
        try {
            if (!jSONObject.has(C8112ap.f31750a)) {
                return false;
            }
            String b = C8655s.m4832d().m4824b();
            JSONArray jSONArray = jSONObject.getJSONArray(C8112ap.f31750a);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getString(i).contentEquals(b)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            C8643m.m4879a(e);
            return false;
        }
    }

    /* renamed from: c */
    private boolean m4883c(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("al")) {
                return false;
            }
            String b = C8655s.m4832d().m4824b();
            JSONArray jSONArray = jSONObject.getJSONArray("al");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getString(i).contentEquals(b)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            C8643m.m4879a(e);
            return false;
        }
    }

    /* renamed from: a */
    public boolean m4889a() {
        return this.f33527b;
    }

    /* renamed from: b */
    public boolean m4886b() {
        return this.f33528c;
    }

    /* renamed from: c */
    public int m4884c() {
        return this.f33529d;
    }

    /* renamed from: d */
    public int m4882d() {
        return this.f33530e;
    }

    /* renamed from: e */
    public C8667w.EnumC8675d m4881e() {
        return this.f33526a ? C8667w.EnumC8675d.ON : C8667w.EnumC8675d.OFF;
    }
}
