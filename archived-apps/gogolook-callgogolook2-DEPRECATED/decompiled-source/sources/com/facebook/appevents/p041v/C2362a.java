package com.facebook.appevents.p041v;

import android.util.Patterns;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.v.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/a.class */
public final class C2362a {

    /* renamed from: a */
    public static Map<String, String> f2907a;

    /* renamed from: b */
    public static Map<String, String> f2908b;

    /* renamed from: c */
    public static Map<String, String> f2909c;

    /* renamed from: d */
    public static JSONObject f2910d;

    /* renamed from: e */
    public static boolean f2911e = false;

    /* renamed from: a */
    public static String m35024a(String str, String str2, String str3) {
        return (str3 + " | " + str2 + UserProfile.CARD_CATE_SEPARATOR + str).toLowerCase();
    }

    @Nullable
    /* renamed from: a */
    public static JSONObject m35022a(JSONObject jSONObject) {
        try {
            if (jSONObject.optBoolean("is_interacted")) {
                return jSONObject;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            if (optJSONArray == null) {
                return null;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject a = m35022a(optJSONArray.getJSONObject(i));
                if (a != null) {
                    return a;
                }
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m35026a(File file) {
        try {
            f2910d = new JSONObject();
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            f2910d = new JSONObject(new String(bArr, "UTF-8"));
            f2907a = new HashMap();
            f2907a.put("ENGLISH", "1");
            f2907a.put("GERMAN", "2");
            f2907a.put("SPANISH", "3");
            f2907a.put("JAPANESE", "4");
            f2908b = new HashMap();
            f2908b.put("VIEW_CONTENT", "0");
            f2908b.put("SEARCH", "1");
            f2908b.put("ADD_TO_CART", "2");
            f2908b.put("ADD_TO_WISHLIST", "3");
            f2908b.put("INITIATE_CHECKOUT", "4");
            f2908b.put("ADD_PAYMENT_INFO", "5");
            f2908b.put("PURCHASE", "6");
            f2908b.put("LEAD", "7");
            f2908b.put("COMPLETE_REGISTRATION", "8");
            f2909c = new HashMap();
            f2909c.put("BUTTON_TEXT", "1");
            f2909c.put("PAGE_TITLE", "2");
            f2909c.put("RESOLVED_DOCUMENT_LINK", "3");
            f2909c.put("BUTTON_ID", "4");
            f2911e = true;
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m35020a(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        String lowerCase = jSONObject.optString("text", "").toLowerCase();
        String lowerCase2 = jSONObject.optString("hint", "").toLowerCase();
        if (!lowerCase.isEmpty()) {
            sb.append(lowerCase);
            sb.append(" ");
        }
        if (!lowerCase2.isEmpty()) {
            sb2.append(lowerCase2);
            sb2.append(" ");
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                m35020a(jSONObject, sb, sb2);
            }
        }
    }

    /* renamed from: a */
    public static void m35017a(float[] fArr, float[] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] + fArr2[i];
        }
    }

    /* renamed from: a */
    public static boolean m35027a() {
        return f2911e;
    }

    /* renamed from: a */
    public static boolean m35025a(String str, String str2) {
        return Pattern.compile(str).matcher(str2).find();
    }

    /* renamed from: a */
    public static boolean m35023a(String str, String str2, String str3, String str4) {
        return m35025a(f2910d.optJSONObject("rulesForLanguage").optJSONObject(f2907a.get(str)).optJSONObject("rulesForEvent").optJSONObject(f2908b.get(str2)).optJSONObject("positiveRules").optString(f2909c.get(str3)), str4);
    }

    /* renamed from: a */
    public static boolean m35019a(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z;
        boolean z2;
        boolean z3;
        try {
            if (jSONObject.optBoolean("is_interacted")) {
                return true;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            int i = 0;
            while (true) {
                if (i >= optJSONArray.length()) {
                    z = false;
                    z2 = false;
                    break;
                } else if (optJSONArray.getJSONObject(i).optBoolean("is_interacted")) {
                    z = true;
                    z2 = true;
                    break;
                } else {
                    i++;
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            if (z) {
                int i2 = 0;
                while (true) {
                    z3 = z2;
                    if (i2 >= optJSONArray.length()) {
                        break;
                    }
                    jSONArray.put(optJSONArray.getJSONObject(i2));
                    i2++;
                }
            } else {
                for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                    if (m35019a(jSONObject2, jSONArray)) {
                        jSONArray2.put(jSONObject2);
                        z2 = true;
                    }
                }
                jSONObject.put("childviews", jSONArray2);
                z3 = z2;
            }
            return z3;
        } catch (JSONException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m35016a(String[] strArr, String[] strArr2) {
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (str2.contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    /* renamed from: a */
    public static float[] m35021a(JSONObject jSONObject, String str) {
        String lowerCase;
        JSONObject jSONObject2;
        String optString;
        JSONArray jSONArray;
        JSONObject a;
        if (!f2911e) {
            return null;
        }
        float[] fArr = new float[30];
        Arrays.fill(fArr, 0.0f);
        try {
            lowerCase = str.toLowerCase();
            jSONObject2 = new JSONObject(jSONObject.optJSONObject("view").toString());
            optString = jSONObject.optString("screenname");
            jSONArray = new JSONArray();
            m35019a(jSONObject2, jSONArray);
            m35017a(fArr, m35014c(jSONObject2));
            a = m35022a(jSONObject2);
        } catch (JSONException e) {
        }
        if (a == null) {
            return null;
        }
        m35017a(fArr, m35018a(a, jSONArray, optString, jSONObject2.toString(), lowerCase));
        return fArr;
    }

    /* renamed from: a */
    public static float[] m35018a(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        int length;
        float[] fArr = new float[30];
        float f = 0.0f;
        Arrays.fill(fArr, 0.0f);
        fArr[3] = jSONArray.length() > 1 ? length - 1 : 0;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                if (m35015b(jSONArray.getJSONObject(i))) {
                    fArr[9] = fArr[9] + 1.0f;
                }
            } catch (JSONException e) {
            }
        }
        fArr[13] = -1.0f;
        fArr[14] = -1.0f;
        String str4 = str + '|' + str3;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        m35020a(jSONObject, sb, sb2);
        String sb3 = sb.toString();
        String sb4 = sb2.toString();
        fArr[15] = m35023a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
        fArr[16] = m35023a("ENGLISH", "COMPLETE_REGISTRATION", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
        fArr[17] = m35023a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_ID", sb3) ? 1.0f : 0.0f;
        fArr[18] = str2.contains("password") ? 1.0f : 0.0f;
        fArr[19] = m35025a("(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)", str2) ? 1.0f : 0.0f;
        fArr[20] = m35025a("(?i)(sign in)|login|signIn", str2) ? 1.0f : 0.0f;
        fArr[21] = m35025a("(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)", str2) ? 1.0f : 0.0f;
        fArr[22] = m35023a("ENGLISH", "PURCHASE", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
        fArr[24] = m35023a("ENGLISH", "PURCHASE", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
        fArr[25] = m35025a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart", sb4) ? 1.0f : 0.0f;
        fArr[27] = m35025a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy", str4) ? 1.0f : 0.0f;
        fArr[28] = m35023a("ENGLISH", "LEAD", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
        if (m35023a("ENGLISH", "LEAD", "PAGE_TITLE", str4)) {
            f = 1.0f;
        }
        fArr[29] = f;
        return fArr;
    }

    /* renamed from: b */
    public static boolean m35015b(JSONObject jSONObject) {
        return (jSONObject.optInt("classtypebitmask") & 32) > 0;
    }

    /* renamed from: c */
    public static float[] m35014c(JSONObject jSONObject) {
        float[] fArr = new float[30];
        Arrays.fill(fArr, 0.0f);
        String lowerCase = jSONObject.optString("text").toLowerCase();
        String lowerCase2 = jSONObject.optString("hint").toLowerCase();
        String lowerCase3 = jSONObject.optString("classname").toLowerCase();
        int optInt = jSONObject.optInt("inputtype", -1);
        String[] strArr = {lowerCase, lowerCase2};
        if (m35016a(new String[]{"$", "amount", "price", "total"}, strArr)) {
            fArr[0] = (float) (fArr[0] + 1.0d);
        }
        if (m35016a(new String[]{"password", "pwd"}, strArr)) {
            fArr[1] = (float) (fArr[1] + 1.0d);
        }
        if (m35016a(new String[]{"tel", "phone"}, strArr)) {
            fArr[2] = (float) (fArr[2] + 1.0d);
        }
        if (m35016a(new String[]{"search"}, strArr)) {
            fArr[4] = (float) (fArr[4] + 1.0d);
        }
        if (optInt >= 0) {
            fArr[5] = (float) (fArr[5] + 1.0d);
        }
        if (optInt == 3 || optInt == 2) {
            fArr[6] = (float) (fArr[6] + 1.0d);
        }
        if (optInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
            fArr[7] = (float) (fArr[7] + 1.0d);
        }
        if (lowerCase3.contains("checkbox")) {
            fArr[8] = (float) (fArr[8] + 1.0d);
        }
        if (m35016a(new String[]{"complete", "confirm", "done", "submit"}, new String[]{lowerCase})) {
            fArr[10] = (float) (fArr[10] + 1.0d);
        }
        if (lowerCase3.contains("radio") && lowerCase3.contains("button")) {
            fArr[12] = (float) (fArr[12] + 1.0d);
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                m35017a(fArr, m35014c(optJSONArray.getJSONObject(i)));
            }
        } catch (JSONException e) {
        }
        return fArr;
    }
}
