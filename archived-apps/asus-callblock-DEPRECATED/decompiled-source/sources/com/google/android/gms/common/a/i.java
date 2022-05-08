package com.google.android.gms.common.a;

import com.android.vcard.VCardConfig;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3934a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3935b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
    private static final Pattern c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    private static String a(String str, String str2) {
        if (str2 == null) {
            str2 = VCardConfig.DEFAULT_INTERMEDIATE_CHARSET;
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static Map<String, String> a(URI uri, String str) {
        Map<String, String> emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        HashMap hashMap = emptyMap;
        if (rawQuery != null) {
            hashMap = emptyMap;
            if (rawQuery.length() > 0) {
                HashMap hashMap2 = new HashMap();
                Scanner scanner = new Scanner(rawQuery);
                scanner.useDelimiter("&");
                while (scanner.hasNext()) {
                    String[] split = scanner.next().split("=");
                    if (split.length == 0 || split.length > 2) {
                        throw new IllegalArgumentException("bad parameter");
                    }
                    String a2 = a(split[0], str);
                    String str2 = null;
                    if (split.length == 2) {
                        str2 = a(split[1], str);
                    }
                    hashMap2.put(a2, str2);
                }
                hashMap = hashMap2;
            }
        }
        return hashMap;
    }
}
