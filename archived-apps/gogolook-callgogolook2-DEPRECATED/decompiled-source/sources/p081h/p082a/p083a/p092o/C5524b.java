package p081h.p082a.p083a.p092o;

import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: h.a.a.o.b */
/* loaded from: classes-dex2jar.jar:h/a/a/o/b.class */
public class C5524b {
    /* renamed from: a */
    public static float m25280a(Object obj) {
        if (obj instanceof Float) {
            return ((Float) obj).floatValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Double) {
            return (float) ((Double) obj).doubleValue();
        }
        if (obj instanceof JSONArray) {
            return (float) ((JSONArray) obj).optDouble(0);
        }
        return 0.0f;
    }

    /* renamed from: a */
    public static PointF m25279a(JSONArray jSONArray, float f) {
        if (jSONArray.length() >= 2) {
            return new PointF(((float) jSONArray.optDouble(0, 1.0d)) * f, ((float) jSONArray.optDouble(1, 1.0d)) * f);
        }
        throw new IllegalArgumentException("Unable to parse point for " + jSONArray);
    }

    /* renamed from: a */
    public static PointF m25278a(JSONObject jSONObject, float f) {
        return new PointF(m25280a(jSONObject.opt("x")) * f, m25280a(jSONObject.opt("y")) * f);
    }
}
