package p081h.p415j.p416a.p417a.p418a.p423g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.j.a.a.a.g.b */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/g/b.class */
public class C10641b {

    /* renamed from: a */
    public static WindowManager f24225a;

    /* renamed from: b */
    public static String[] f24226b = {"x", "y", "width", "height"};

    /* renamed from: c */
    public static float f24227c = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: h.j.a.a.a.g.b$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/g/b$a.class */
    public static class C10642a {

        /* renamed from: a */
        public final float f24228a;

        /* renamed from: b */
        public final float f24229b;

        public C10642a(float f, float f2) {
            this.f24228a = f;
            this.f24229b = f2;
        }
    }

    /* renamed from: a */
    public static float m11102a(int i) {
        return i / f24227c;
    }

    /* renamed from: a */
    public static JSONObject m11101a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m11102a(i));
            jSONObject.put("y", m11102a(i2));
            jSONObject.put("width", m11102a(i3));
            jSONObject.put("height", m11102a(i4));
        } catch (JSONException e) {
            C10643c.m11086a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m11100a(Context context) {
        if (context != null) {
            f24227c = context.getResources().getDisplayMetrics().density;
            f24225a = (WindowManager) context.getSystemService("window");
        }
    }

    /* renamed from: a */
    public static void m11098a(JSONObject jSONObject) {
        C10642a b = m11093b(jSONObject);
        try {
            jSONObject.put("width", b.f24228a);
            jSONObject.put("height", b.f24229b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m11097a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C10643c.m11086a("Error with setting ad session id", e);
        }
    }

    /* renamed from: a */
    public static void m11096a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e) {
            C10643c.m11086a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* renamed from: a */
    public static void m11095a(JSONObject jSONObject, List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
        } catch (JSONException e) {
            C10643c.m11086a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m11094a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m11099a(JSONArray jSONArray, JSONArray jSONArray2) {
        boolean z = true;
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        if (jSONArray == null || jSONArray2 == null) {
            return false;
        }
        if (jSONArray.length() != jSONArray2.length()) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static C10642a m11093b(JSONObject jSONObject) {
        float f;
        r9 = 0.0f;
        float f2 = 0.0f;
        if (Build.VERSION.SDK_INT >= 17) {
            if (f24225a != null) {
                Point point = new Point(0, 0);
                f24225a.getDefaultDisplay().getRealSize(point);
                f2 = m11102a(point.x);
                f = m11102a(point.y);
            }
            f = 0.0f;
        } else {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray != null) {
                int length = optJSONArray.length();
                f = 0.0f;
                for (int i = 0; i < length; i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    f2 = f2;
                    f = f;
                    if (optJSONObject != null) {
                        double optDouble = optJSONObject.optDouble("x");
                        double optDouble2 = optJSONObject.optDouble("y");
                        double optDouble3 = optJSONObject.optDouble("width");
                        double optDouble4 = optJSONObject.optDouble("height");
                        f2 = Math.max(f2, (float) (optDouble + optDouble3));
                        f = Math.max(f, (float) (optDouble2 + optDouble4));
                    }
                }
            }
            f = 0.0f;
        }
        return new C10642a(f2, f);
    }

    /* renamed from: b */
    public static boolean m11092b(@NonNull JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        boolean z = true;
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        if (!m11091c(jSONObject, jSONObject2) || !m11090d(jSONObject, jSONObject2) || !m11089e(jSONObject, jSONObject2) || !m11088f(jSONObject, jSONObject2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m11091c(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f24226b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m11090d(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    /* renamed from: e */
    public static boolean m11089e(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m11099a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!optJSONArray.optString(i, "").equals(optJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static boolean m11088f(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!m11099a(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!m11092b(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }
}
