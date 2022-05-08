package com.flurry.sdk;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.lb */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lb.class */
public final class C3446lb {
    /* renamed from: a */
    public static URL m32448a(String str) {
        if (str.length() == 0) {
            return null;
        }
        try {
            return new URL(str);
        } catch (RuntimeException | MalformedURLException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static List<JSONObject> m32447a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONObject) {
                arrayList.add((JSONObject) obj);
            } else {
                throw new JSONException("Array contains unsupported objects. JSONArray param must contain JSON object.");
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<String, String> m32446a(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (next instanceof String) {
                String str = next;
                Object obj = jSONObject.get(str);
                if (obj instanceof String) {
                    hashMap.put(str, (String) obj);
                } else {
                    throw new JSONException("JSONObject contains unsupported type for value in the map.");
                }
            } else {
                throw new JSONException("JSONObject contains unsupported type for key in the map.");
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m32445a(JSONObject jSONObject, String str, float f) throws IOException, JSONException {
        jSONObject.putOpt(str, Float.valueOf(f));
    }

    /* renamed from: a */
    public static void m32444a(JSONObject jSONObject, String str, Object obj) throws NullPointerException, JSONException {
        if (obj == null) {
            jSONObject.put(str, JSONObject.NULL);
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: a */
    public static void m32443a(JSONObject jSONObject, String str, String str2) throws IOException, JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    /* renamed from: b */
    public static List<String> m32442b(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof String) {
                arrayList.add((String) obj);
            } else {
                throw new JSONException("Array contains unsupported objects. JSONArray param must contain String object.");
            }
        }
        return arrayList;
    }
}
