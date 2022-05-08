package com.firstorion.libcyd;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/JsonHelper.class */
final class JsonHelper {
    private JsonHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getInt(JSONObject jSONObject, String str) throws JSONException {
        String optString = jSONObject.optString(str);
        if (optString == null) {
            throw new JSONException("Missing integer field: " + str);
        }
        try {
            return Integer.parseInt(optString);
        } catch (NumberFormatException e) {
            throw new JSONException("Field not an integer: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getString(JSONObject jSONObject, String str) throws JSONException {
        String optString = jSONObject.optString(str);
        if (optString != null) {
            return optString;
        }
        throw new JSONException("Missing string field: " + str);
    }
}
