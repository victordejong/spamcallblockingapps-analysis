package p131c.p372f.p373a.p374a.p375a.p385n;

import android.content.Context;
import android.content.res.Resources;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.f.a.a.a.n.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/n/b.class */
public class C6454b {

    /* renamed from: a */
    public static String[] f20142a = {"x", "y", "width", "height"};

    /* renamed from: b */
    public static float f20143b = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: a */
    public static float m20838a(int i) {
        return i / f20143b;
    }

    /* renamed from: a */
    public static JSONObject m20839a() {
        return m20833a(m20837a(0, 0, 0, 0), C6456d.m20822a());
    }

    /* renamed from: a */
    public static JSONObject m20837a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m20838a(i));
            jSONObject.put("y", m20838a(i2));
            jSONObject.put("width", m20838a(i3));
            jSONObject.put("height", m20838a(i4));
        } catch (JSONException e) {
            C6455c.m20823a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m20833a(JSONObject jSONObject, double d) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(AvidJSONUtil.KEY_TIMESTAMP, d);
            jSONObject2.put(AvidJSONUtil.KEY_ROOT_VIEW, jSONObject);
        } catch (JSONException e) {
            C6455c.m20823a("Error with creating treeJSONObject", e);
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static void m20836a(Context context) {
        if (context != null) {
            f20143b = context.getResources().getDisplayMetrics().density;
        }
    }

    /* renamed from: a */
    public static void m20834a(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray(AvidJSONUtil.KEY_CHILD_VIEWS);
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i3);
                i = i;
                i2 = i2;
                if (optJSONObject != null) {
                    int optInt = optJSONObject.optInt("x");
                    int optInt2 = optJSONObject.optInt("y");
                    int optInt3 = optJSONObject.optInt("width");
                    int optInt4 = optJSONObject.optInt("height");
                    i = Math.max(i, optInt + optInt3);
                    i2 = Math.max(i2, optInt2 + optInt4);
                }
            }
            try {
                jSONObject.put("width", i);
                jSONObject.put("height", i2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static void m20832a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("id", str);
        } catch (JSONException e) {
            C6455c.m20823a("Error with setting avid id", e);
        }
    }

    /* renamed from: a */
    public static void m20831a(JSONObject jSONObject, List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put(AvidJSONUtil.KEY_IS_FRIENDLY_OBSTRUCTION_FOR, jSONArray);
        } catch (JSONException e) {
            C6455c.m20823a("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: a */
    public static void m20830a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray(AvidJSONUtil.KEY_CHILD_VIEWS);
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put(AvidJSONUtil.KEY_CHILD_VIEWS, jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m20835a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        if (jSONArray != null || jSONArray2 == null) {
            return (jSONArray == null || jSONArray2 != null) && jSONArray.length() == jSONArray2.length();
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m20829b(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray(AvidJSONUtil.KEY_CHILD_VIEWS);
        JSONArray optJSONArray2 = jSONObject2.optJSONArray(AvidJSONUtil.KEY_CHILD_VIEWS);
        if (!m20835a(optJSONArray, optJSONArray2)) {
            return false;
        }
        if (optJSONArray == null) {
            return true;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!m20825f(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m20828c(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray(AvidJSONUtil.KEY_IS_FRIENDLY_OBSTRUCTION_FOR);
        JSONArray optJSONArray2 = jSONObject2.optJSONArray(AvidJSONUtil.KEY_IS_FRIENDLY_OBSTRUCTION_FOR);
        if (!m20835a(optJSONArray, optJSONArray2)) {
            return false;
        }
        if (optJSONArray == null) {
            return true;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!optJSONArray.optString(i, "").equals(optJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m20827d(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f20142a) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m20826e(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("id", "").equals(jSONObject2.optString("id", ""));
    }

    /* renamed from: f */
    public static boolean m20825f(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject2 != null && m20827d(jSONObject, jSONObject2) && m20826e(jSONObject, jSONObject2) && m20828c(jSONObject, jSONObject2) && m20829b(jSONObject, jSONObject2);
    }
}
