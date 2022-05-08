package com.privacystar.core.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/Text.class */
public class Text {
    private Text() {
    }

    public static boolean containsIgnoreCase(String str, String str2) {
        return com.privacystar.core.util.text.Text.containsIgnoreCase(str, str2);
    }

    public static String convertFromHexString(String str) {
        List<String> stringParts = getStringParts(str, 2);
        ByteBuffer allocate = ByteBuffer.allocate(stringParts.size());
        Timber.m37d("%s", Arrays.toString(stringParts.toArray()));
        for (String str2 : stringParts) {
            allocate.put(Byte.parseByte(str2, 16));
        }
        String str3 = new String(allocate.array(), StandardCharsets.UTF_8);
        Timber.m37d("Converted hex string:%n%s%n  --->%n%s", str, str3);
        return str3;
    }

    public static String convertObjectArrayToString(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(obj.toString());
        }
        return sb.toString();
    }

    public static String convertToHexString(String str) {
        return String.format("%x", new BigInteger(1, str.getBytes(StandardCharsets.UTF_8)));
    }

    public static boolean endsWithIgnoreCase(String str, String str2) {
        return com.privacystar.core.util.text.Text.endsWithIgnoreCase(str, str2);
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, true);
    }

    public static boolean equals(String str, String str2, boolean z) {
        if (str == null && str2 == null) {
            return z;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean equalsIgnoreCase(String str, String str2) {
        String str3 = str;
        if (!isBlank(str)) {
            str3 = str.toLowerCase();
        }
        String str4 = str2;
        if (!isBlank(str2)) {
            str4 = str2.toLowerCase();
        }
        return equals(str3, str4, true);
    }

    public static String formatVersionNumber(String str) {
        return str.replaceAll("[^\\d.]", "");
    }

    public static List<String> getStringParts(String str, int i) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + i;
            arrayList.add(str.substring(i2, Math.min(length, i3)));
            i2 = i3;
        }
        return arrayList;
    }

    public static boolean isBlank(CharSequence charSequence) {
        return charSequence == null || charSequence.toString().trim().length() == 0;
    }

    public static boolean isNull(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNumeric(String str) {
        return com.privacystar.core.util.text.Text.isNumeric(str);
    }

    public static boolean isWhitespace(String str) {
        return com.privacystar.core.util.text.Text.isWhitespace(str);
    }

    public static Map<String, String> jsonToMap(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                hashMap.put(next, jSONObject.getString(next));
            } catch (JSONException e) {
                Timber.m23w(e, "Parsing JSONObject.", new Object[0]);
            }
        }
        return hashMap;
    }

    public static String removeAllOccurrences(String str, String str2) {
        return com.privacystar.core.util.text.Text.removeAllOccurrences(str, str2);
    }

    public static String replaceAll(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(str2, i);
            if (indexOf >= 0) {
                if (indexOf > i) {
                    sb.append(str.substring(i, indexOf));
                }
                sb.append(str3);
                i = str2.length() + indexOf;
            } else {
                sb.append(str.substring(i));
                return sb.toString();
            }
        }
    }

    @NonNull
    public static String safeString(@Nullable String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public static boolean startsWith(String str, String str2) {
        return com.privacystar.core.util.text.Text.startsWith(str, str2);
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        return com.privacystar.core.util.text.Text.startsWithIgnoreCase(str, str2);
    }

    public static String stripNonNumericCharacters(String str) {
        return com.privacystar.core.util.text.Text.stripNonNumericCharacters(str);
    }

    public static String substituteNonBreakingSpaces(String str) {
        return replaceAll(str, " ", " ");
    }

    public static String toCamelCaseFromUnderscore(String str) {
        return toCamelCaseFromUnderscore(str, false);
    }

    public static String toCamelCaseFromUnderscore(String str, boolean z) {
        String[] split = str.split(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (String str2 : split) {
            if (!z2 || z) {
                sb.append(toProperCase(str2));
            } else {
                sb.append(str2);
                z2 = false;
            }
        }
        return sb.toString();
    }

    public static String toProperCase(String str) {
        return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
    }

    public static String trim(String str) {
        return trim(str, false);
    }

    public static String trim(String str, boolean z) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        String str2 = trim;
        if (z) {
            str2 = trim;
            if (isNull(trim)) {
                str2 = null;
            }
        }
        return str2;
    }
}
