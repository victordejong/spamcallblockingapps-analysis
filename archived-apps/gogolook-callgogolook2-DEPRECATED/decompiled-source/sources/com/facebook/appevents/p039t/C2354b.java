package com.facebook.appevents.p039t;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.p041v.C2365d;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2455m;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: com.facebook.appevents.t.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/b.class */
public final class C2354b {

    /* renamed from: b */
    public static SharedPreferences f2900b;

    /* renamed from: a */
    public static final ConcurrentMap<String, C2350a> f2899a = new ConcurrentHashMap();

    /* renamed from: c */
    public static final String[] f2901c = {"version_id", "asset_uri", "use_case", "thresholds", "rules_uri"};

    /* renamed from: com.facebook.appevents.t.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/b$a.class */
    public static final class RunnableC2355a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                JSONObject g = C2354b.m35049g();
                if (g != null) {
                    C2354b.f2900b.edit().putString("models", g.toString()).apply();
                } else {
                    g = new JSONObject(C2354b.f2900b.getString("models", ""));
                }
                C2354b.m35056b(g);
                C2354b.m35050f();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.facebook.appevents.t.b$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/b$b.class */
    public static final class C2356b implements C2455m.AbstractC2458c {

        /* renamed from: com.facebook.appevents.t.b$b$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/b$b$a.class */
        public class RunnableC2357a implements Runnable {
            public RunnableC2357a(C2356b bVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2365d.m35006a();
            }
        }

        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                ((C2350a) C2354b.f2899a.get("SUGGEST_EVENT")).m35065c(new RunnableC2357a(this));
            }
        }
    }

    @Nullable
    /* renamed from: a */
    public static File m35061a(String str) {
        if (!f2899a.containsKey(str)) {
            return null;
        }
        return f2899a.get(str).m35072a();
    }

    @Nullable
    /* renamed from: a */
    public static String m35060a(String str, float[] fArr, String str2) {
        if (!f2899a.containsKey(str)) {
            return null;
        }
        return f2899a.get(str).m35068a(fArr, str2);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0024 -> B:6:0x001c). Please submit an issue!!! */
    /* renamed from: a */
    public static float[] m35059a(JSONArray jSONArray) {
        float[] fArr = new float[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                fArr[i] = Float.parseFloat(jSONArray.getString(i));
            } catch (JSONException e) {
            }
        }
        return fArr;
    }

    /* renamed from: b */
    public static void m35056b(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                C2350a c = m35054c(jSONObject.getJSONObject(next));
                if (c != null) {
                    f2899a.put(next, c);
                }
            } catch (JSONException e) {
                return;
            }
        }
    }

    @Nullable
    /* renamed from: c */
    public static C2350a m35054c(JSONObject jSONObject) {
        try {
            return new C2350a(jSONObject.getString("use_case"), Integer.parseInt(jSONObject.getString("version_id")), jSONObject.getString("asset_uri"), jSONObject.optString("rules_uri"), m35059a(jSONObject.getJSONArray("thresholds")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: d */
    public static JSONObject m35052d(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("version_id", jSONObject3.getString("version_id"));
                jSONObject4.put("use_case", jSONObject3.getString("use_case"));
                jSONObject4.put("thresholds", jSONObject3.getJSONArray("thresholds"));
                jSONObject4.put("asset_uri", jSONObject3.getString("asset_uri"));
                if (jSONObject3.has("rules_uri")) {
                    jSONObject4.put("rules_uri", jSONObject3.getString("rules_uri"));
                }
                jSONObject2.put(jSONObject3.getString("use_case"), jSONObject4);
            }
            return jSONObject2;
        } catch (JSONException e) {
            return new JSONObject();
        }
    }

    /* renamed from: e */
    public static void m35051e() {
        m35048h();
    }

    /* renamed from: f */
    public static void m35050f() {
        if (f2899a.containsKey("SUGGEST_EVENT")) {
            Locale d = C2408g0.m34819d();
            if (d == null || d.getLanguage().contains("en")) {
                C2455m.m34685a(C2455m.EnumC2459d.SuggestedEvents, new C2356b());
            }
        }
    }

    @Nullable
    /* renamed from: g */
    public static JSONObject m35049g() {
        ArrayList arrayList = new ArrayList(Arrays.asList(f2901c));
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest a = GraphRequest.m35461a((AccessToken) null, String.format("%s/model_asset", C6135n.m23745f()), (GraphRequest.AbstractC2230f) null);
        a.m35439a(true);
        a.m35464a(bundle);
        JSONObject b = a.m35437b().m23698b();
        if (b == null) {
            return null;
        }
        return m35052d(b);
    }

    /* renamed from: h */
    public static void m35048h() {
        f2900b = C6135n.m23746e().getSharedPreferences("com.facebook.internal.MODEL_STORE", 0);
        m35047i();
    }

    /* renamed from: i */
    public static void m35047i() {
        C2408g0.m34856a(new RunnableC2355a());
    }
}
