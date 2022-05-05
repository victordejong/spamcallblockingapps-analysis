package com.google.android.gms.common.util;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/HttpUtils.class */
public class HttpUtils {

    /* renamed from: a */
    private static final Pattern f6983a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b */
    private static final Pattern f6984b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

    /* renamed from: c */
    private static final Pattern f6985c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    private HttpUtils() {
    }

    /* renamed from: a */
    private static String m5566a(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static Map<String, String> parse(URI uri, String str) {
        Map<String, String> emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        HashMap hashMap = emptyMap;
        if (rawQuery != null) {
            hashMap = emptyMap;
            if (rawQuery.length() > 0) {
                HashMap hashMap2 = new HashMap();
                Scanner scanner = new Scanner(rawQuery);
                scanner.useDelimiter("&");
                while (true) {
                    hashMap = hashMap2;
                    if (!scanner.hasNext()) {
                        break;
                    }
                    String[] split = scanner.next().split("=");
                    if (split.length == 0 || split.length > 2) {
                        break;
                    }
                    String a = m5566a(split[0], str);
                    String str2 = null;
                    if (split.length == 2) {
                        str2 = m5566a(split[1], str);
                    }
                    hashMap2.put(a, str2);
                }
                throw new IllegalArgumentException("bad parameter");
            }
        }
        return hashMap;
    }
}
