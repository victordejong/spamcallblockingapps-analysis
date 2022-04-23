package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
public final class JsonUtils {

    /* renamed from: a */
    private static final Pattern f6986a = Pattern.compile("\\\\.");

    /* renamed from: b */
    private static final Pattern f6987b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    private JsonUtils() {
    }

    public static boolean areJsonValuesEquivalent(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONObject jSONObject2 = (JSONObject) obj2;
            if (jSONObject.length() != jSONObject2.length()) {
                return false;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!jSONObject2.has(next)) {
                    return false;
                }
                try {
                    if (!areJsonValuesEquivalent(jSONObject.get(next), jSONObject2.get(next))) {
                        return false;
                    }
                } catch (JSONException e) {
                    return false;
                }
            }
            return true;
        } else if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
            return obj.equals(obj2);
        } else {
            JSONArray jSONArray = (JSONArray) obj;
            JSONArray jSONArray2 = (JSONArray) obj2;
            if (jSONArray.length() != jSONArray2.length()) {
                return false;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    if (!areJsonValuesEquivalent(jSONArray.get(i), jSONArray2.get(i))) {
                        return false;
                    }
                } catch (JSONException e2) {
                    return false;
                }
            }
            return true;
        }
    }

    public static String escapeString(String str) {
        String str2;
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f6987b.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt == '\f') {
                    str2 = "\\\\f";
                } else if (charAt == '\r') {
                    str2 = "\\\\r";
                } else if (charAt == '\"') {
                    str2 = "\\\\\\\"";
                } else if (charAt == '/') {
                    str2 = "\\\\/";
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            str2 = "\\\\b";
                            break;
                        case '\t':
                            str2 = "\\\\t";
                            break;
                        case '\n':
                            str2 = "\\\\n";
                            break;
                        default:
                            stringBuffer = stringBuffer2;
                            continue;
                    }
                } else {
                    str2 = "\\\\\\\\";
                }
                matcher.appendReplacement(stringBuffer2, str2);
                stringBuffer = stringBuffer2;
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            str3 = stringBuffer.toString();
        }
        return str3;
    }

    public static String unescapeString(String str) {
        String str2;
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            String unescape = zzd.unescape(str);
            Matcher matcher = f6986a.matcher(unescape);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                char charAt = matcher.group().charAt(1);
                if (charAt == '\"') {
                    str2 = "\"";
                } else if (charAt == '/') {
                    str2 = "/";
                } else if (charAt == '\\') {
                    str2 = "\\\\";
                } else if (charAt == 'b') {
                    str2 = "\b";
                } else if (charAt == 'f') {
                    str2 = "\f";
                } else if (charAt == 'n') {
                    str2 = "\n";
                } else if (charAt == 'r') {
                    str2 = "\r";
                } else if (charAt == 't') {
                    str2 = "\t";
                } else {
                    throw new IllegalStateException("Found an escaped character that should never be.");
                }
                matcher.appendReplacement(stringBuffer2, str2);
                stringBuffer = stringBuffer2;
            }
            if (stringBuffer == null) {
                return unescape;
            }
            matcher.appendTail(stringBuffer);
            str3 = stringBuffer.toString();
        }
        return str3;
    }
}
