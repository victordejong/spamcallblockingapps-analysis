package com.amazonaws.util;

import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/HttpUtils.class */
public class HttpUtils {
    public static final Pattern ENCODED_CHARACTERS_PATTERN = Pattern.compile(Pattern.quote("+") + "|" + Pattern.quote("*") + "|" + Pattern.quote("%7E") + "|" + Pattern.quote("%2F"));

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(Pattern.quote("%2A"));
        sb.append("|");
        sb.append(Pattern.quote("%2B"));
        sb.append("|");
        Pattern.compile(sb.toString());
    }

    public static String appendUri(String str, String str2) {
        return appendUri(str, str2, false);
    }

    public static String appendUri(String str, String str2, boolean z) {
        String str3;
        String str4;
        if (str2 == null || str2.length() <= 0) {
            str3 = str;
            if (!str.endsWith("/")) {
                str3 = str + "/";
            }
        } else {
            if (str2.startsWith("/")) {
                str4 = str;
                if (str.endsWith("/")) {
                    str4 = str.substring(0, str.length() - 1);
                }
            } else {
                str4 = str;
                if (!str.endsWith("/")) {
                    str4 = str + "/";
                }
            }
            String urlEncode = urlEncode(str2, true);
            String str5 = urlEncode;
            if (z) {
                str5 = urlEncode.replace("//", "/%2F");
            }
            str3 = str4 + str5;
        }
        return str3;
    }

    public static String encodeParameters(Request<?> request) {
        if (request.getParameters().isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        try {
            for (Map.Entry<String, String> entry : request.getParameters().entrySet()) {
                String encode = URLEncoder.encode(entry.getKey(), "UTF-8");
                String value = entry.getValue();
                String encode2 = value == null ? "" : URLEncoder.encode(value, "UTF-8");
                if (!z) {
                    sb.append(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
                } else {
                    z = false;
                }
                sb.append(encode);
                sb.append("=");
                sb.append(encode2);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static boolean isUsingNonDefaultPort(URI uri) {
        String lowerCase = StringUtils.lowerCase(uri.getScheme());
        int port = uri.getPort();
        if (port <= 0) {
            return false;
        }
        if (!lowerCase.equals("http") || port != 80) {
            return !lowerCase.equals("https") || port != 443;
        }
        return false;
    }

    public static String urlEncode(String str, boolean z) {
        String str2;
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = ENCODED_CHARACTERS_PATTERN.matcher(encode);
            StringBuffer stringBuffer = new StringBuffer(encode.length());
            while (matcher.find()) {
                String group = matcher.group(0);
                if ("+".equals(group)) {
                    str2 = "%20";
                } else if ("*".equals(group)) {
                    str2 = "%2A";
                } else if ("%7E".equals(group)) {
                    str2 = "~";
                } else {
                    str2 = group;
                    if (z) {
                        str2 = group;
                        if ("%2F".equals(group)) {
                            str2 = "/";
                        }
                    }
                }
                matcher.appendReplacement(stringBuffer, str2);
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean usePayloadForQueryParameters(Request<?> request) {
        boolean equals = HttpMethodName.POST.equals(request.getHttpMethod());
        boolean z = true;
        boolean z2 = request.getContent() == null;
        if (!equals || !z2) {
            z = false;
        }
        return z;
    }
}
