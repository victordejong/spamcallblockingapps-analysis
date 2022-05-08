package com.facebook.appevents.p041v;

import android.content.SharedPreferences;
import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.appevents.p036r.p037g.C2326f;
import com.facebook.internal.C2408g0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.v.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/b.class */
public final class C2363b {

    /* renamed from: b */
    public static SharedPreferences f2913b;

    /* renamed from: a */
    public static final Map<String, String> f2912a = new HashMap();

    /* renamed from: c */
    public static final AtomicBoolean f2914c = new AtomicBoolean(false);

    @Nullable
    /* renamed from: a */
    public static String m35012a(View view) {
        JSONObject jSONObject = new JSONObject();
        while (view != null) {
            C2364c.m35007a(view, jSONObject);
            view = C2326f.m35158i(view);
        }
        return C2408g0.m34806g(jSONObject.toString());
    }

    @Nullable
    /* renamed from: a */
    public static String m35011a(String str) {
        return f2912a.containsKey(str) ? f2912a.get(str) : null;
    }

    /* renamed from: a */
    public static void m35013a() {
        if (!f2914c.get()) {
            f2913b = C6135n.m23746e().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
            f2912a.putAll(C2408g0.m34855a(f2913b.getString("SUGGESTED_EVENTS_HISTORY", "")));
            f2914c.set(true);
        }
    }

    /* renamed from: a */
    public static void m35010a(String str, String str2) {
        if (!f2914c.get()) {
            m35013a();
        }
        f2912a.put(str, str2);
        f2913b.edit().putString("SUGGESTED_EVENTS_HISTORY", C2408g0.m34843a(f2912a)).apply();
    }
}
