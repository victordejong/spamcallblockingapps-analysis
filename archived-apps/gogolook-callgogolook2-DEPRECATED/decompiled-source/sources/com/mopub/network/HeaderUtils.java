package com.mopub.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ResponseHeader;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/HeaderUtils.class */
public class HeaderUtils {
    @Nullable
    /* renamed from: a */
    public static Integer m30003a(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Exception e) {
            NumberFormat instance = NumberFormat.getInstance(Locale.US);
            instance.setParseIntegerOnly(true);
            try {
                return Integer.valueOf(instance.parse(str.trim()).intValue());
            } catch (Exception e2) {
                return null;
            }
        }
    }

    @NonNull
    /* renamed from: a */
    public static Integer m30002a(String str, int i) {
        Integer a = m30003a(str);
        Integer num = a;
        if (a == null) {
            num = Integer.valueOf(i);
        }
        return num;
    }

    @Nullable
    /* renamed from: a */
    public static String m30000a(JSONObject jSONObject, ResponseHeader responseHeader) {
        Integer extractPercentHeader = extractPercentHeader(jSONObject, responseHeader);
        return extractPercentHeader != null ? extractPercentHeader.toString() : null;
    }

    /* renamed from: a */
    public static boolean m30001a(@Nullable String str, boolean z) {
        return str == null ? z : str.equals("1");
    }

    @Nullable
    /* renamed from: b */
    public static Integer m29999b(@Nullable String str) {
        Integer a;
        if (str != null && (a = m30003a(str.replace("%", ""))) != null && a.intValue() >= 0 && a.intValue() <= 100) {
            return a;
        }
        return null;
    }

    @NonNull
    /* renamed from: b */
    public static List<String> m29998b(@NonNull JSONObject jSONObject, @NonNull ResponseHeader responseHeader) {
        Preconditions.checkNotNull(jSONObject);
        Preconditions.checkNotNull(responseHeader);
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray(responseHeader.getKey());
        if (optJSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            try {
                arrayList.add(optJSONArray.getString(i));
            } catch (JSONException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Unable to parse item " + i + " from " + responseHeader.getKey());
            }
        }
        return arrayList;
    }

    public static boolean extractBooleanHeader(JSONObject jSONObject, ResponseHeader responseHeader, boolean z) {
        return m30001a(extractHeader(jSONObject, responseHeader), z);
    }

    @NonNull
    public static String extractHeader(@Nullable JSONObject jSONObject, @NonNull ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        return jSONObject == null ? "" : jSONObject.optString(responseHeader.getKey());
    }

    @Nullable
    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m30003a(extractHeader(jSONObject, responseHeader));
    }

    @NonNull
    public static Integer extractIntegerHeader(JSONObject jSONObject, ResponseHeader responseHeader, int i) {
        return m30002a(extractHeader(jSONObject, responseHeader), i);
    }

    @Nullable
    public static JSONObject extractJsonObjectHeader(@Nullable JSONObject jSONObject, @NonNull ResponseHeader responseHeader) {
        Preconditions.checkNotNull(responseHeader);
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONObject(responseHeader.getKey());
    }

    @Nullable
    public static Integer extractPercentHeader(JSONObject jSONObject, ResponseHeader responseHeader) {
        return m29999b(extractHeader(jSONObject, responseHeader));
    }
}
