package com.flurry.sdk;

import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.gs */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gs.class */
public class C3184gs {

    /* renamed from: a */
    public static final String f5259a = "gs";

    /* renamed from: a */
    public static Map<String, List<String>> m32916a(String str) {
        String[] split;
        C3356jq.m32615a(3, f5259a, "Parsing referrer map");
        if (str == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str2 : str.split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
            String[] split2 = str2.split("=");
            if (split2.length != 2) {
                C3356jq.m32615a(5, f5259a, "Invalid referrer Element: " + str2 + " in referrer tag " + str);
            } else {
                String decode = URLDecoder.decode(split2[0]);
                String decode2 = URLDecoder.decode(split2[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList());
                }
                ((List) hashMap.get(decode)).add(decode2);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            C3356jq.m32615a(3, f5259a, "entry: " + ((String) entry.getKey()) + "=" + entry.getValue());
        }
        StringBuilder sb = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            sb.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            sb.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            sb.append("Campaign Name is missing.\n");
        }
        if (sb.length() > 0) {
            C3356jq.m32615a(5, f5259a, "Detected missing referrer keys : " + sb.toString());
        }
        return hashMap;
    }
}
