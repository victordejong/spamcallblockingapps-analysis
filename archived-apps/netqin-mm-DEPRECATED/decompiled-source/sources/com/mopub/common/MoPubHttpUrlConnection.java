package com.mopub.common;

import com.android.volley.Request;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubHttpUrlConnection.class */
public abstract class MoPubHttpUrlConnection extends HttpURLConnection {
    /* renamed from: a */
    public static URI m4619a(String str) throws Exception {
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to encode url: " + str);
            throw e;
        }
    }

    /* renamed from: b */
    public static boolean m4618b(String str) {
        try {
            URLDecoder.decode(str, Request.DEFAULT_PARAMS_ENCODING);
            return false;
        } catch (UnsupportedEncodingException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Url is improperly encoded: " + str);
            return true;
        }
    }

    /* renamed from: c */
    public static boolean m4617c(String str) {
        try {
            new URI(str);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(String str) throws IOException {
        Preconditions.checkNotNull(str);
        if (!m4618b(str)) {
            try {
                str = urlEncode(str);
            } catch (Exception e) {
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty("user-agent", Networking.getCachedUserAgent());
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            return httpURLConnection;
        }
        throw new IllegalArgumentException("URL is improperly encoded: " + str);
    }

    public static String urlEncode(String str) throws Exception {
        Preconditions.checkNotNull(str);
        if (!m4618b(str)) {
            return (m4617c(str) ? m4619a(str) : new URI(str)).toURL().toString();
        }
        throw new UnsupportedEncodingException("URL is improperly encoded: " + str);
    }
}
