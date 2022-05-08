package com.appsflyer.share;

import android.content.Context;
import com.appsflyer.AFExecutor;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.ServerConfigHandler;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/LinkGenerator.class */
public class LinkGenerator {

    /* renamed from: ı */
    public String f1936;

    /* renamed from: Ɩ */
    public String f1937;

    /* renamed from: ǃ */
    public String f1938;

    /* renamed from: ȷ */
    public String f1939;

    /* renamed from: ɩ */
    public String f1941;

    /* renamed from: ɹ */
    public String f1943;

    /* renamed from: ɾ */
    public String f1944;

    /* renamed from: Ι */
    public String f1945;

    /* renamed from: ι */
    public String f1946;

    /* renamed from: І */
    public String f1947;

    /* renamed from: і */
    public String f1948;

    /* renamed from: Ӏ */
    public String f1949;

    /* renamed from: ɨ */
    public Map<String, String> f1940 = new HashMap();

    /* renamed from: ɪ */
    public Map<String, String> f1942 = new HashMap();

    public LinkGenerator(String str) {
        this.f1945 = str;
    }

    /* renamed from: ǃ */
    private StringBuilder m36094() {
        StringBuilder sb = new StringBuilder();
        String str = this.f1941;
        if (str == null || !str.startsWith("http")) {
            sb.append(ServerConfigHandler.getUrl(Constants.f1930));
        } else {
            sb.append(this.f1941);
        }
        if (this.f1946 != null) {
            sb.append('/');
            sb.append(this.f1946);
        }
        this.f1942.put(Constants.URL_MEDIA_SOURCE, this.f1945);
        sb.append('?');
        sb.append("pid=");
        sb.append(m36093(this.f1945, "media source"));
        String str2 = this.f1943;
        if (str2 != null) {
            this.f1942.put("af_referrer_uid", str2);
            sb.append('&');
            sb.append("af_referrer_uid=");
            sb.append(m36093(this.f1943, "referrerUID"));
        }
        String str3 = this.f1938;
        if (str3 != null) {
            this.f1942.put("af_channel", str3);
            sb.append('&');
            sb.append("af_channel=");
            sb.append(m36093(this.f1938, AppsFlyerProperties.CHANNEL));
        }
        String str4 = this.f1947;
        if (str4 != null) {
            this.f1942.put("af_referrer_customer_id", str4);
            sb.append('&');
            sb.append("af_referrer_customer_id=");
            sb.append(m36093(this.f1947, "referrerCustomerId"));
        }
        String str5 = this.f1936;
        if (str5 != null) {
            this.f1942.put("c", str5);
            sb.append('&');
            sb.append("c=");
            sb.append(m36093(this.f1936, "campaign"));
        }
        String str6 = this.f1948;
        if (str6 != null) {
            this.f1942.put("af_referrer_name", str6);
            sb.append('&');
            sb.append("af_referrer_name=");
            sb.append(m36093(this.f1948, "referrerName"));
        }
        String str7 = this.f1937;
        if (str7 != null) {
            this.f1942.put("af_referrer_image_url", str7);
            sb.append('&');
            sb.append("af_referrer_image_url=");
            sb.append(m36093(this.f1937, "referrerImageURL"));
        }
        if (this.f1939 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f1939);
            String str8 = "";
            sb2.append(this.f1939.endsWith("/") ? "" : "/");
            String str9 = this.f1949;
            if (str9 != null) {
                sb2.append(str9);
            }
            this.f1942.put("af_dp", sb2.toString());
            sb.append('&');
            sb.append("af_dp=");
            sb.append(m36093(this.f1939, "baseDeeplink"));
            if (this.f1949 != null) {
                if (!this.f1939.endsWith("/")) {
                    str8 = "%2F";
                }
                sb.append(str8);
                sb.append(m36093(this.f1949, "deeplinkPath"));
            }
        }
        for (String str10 : this.f1940.keySet()) {
            String obj = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str10);
            sb3.append("=");
            sb3.append(m36093(this.f1940.get(str10), str10));
            if (!obj.contains(sb3.toString())) {
                sb.append('&');
                sb.append(str10);
                sb.append('=');
                sb.append(m36093(this.f1940.get(str10), str10));
            }
        }
        return sb;
    }

    /* renamed from: ɩ */
    public static String m36093(String str, String str2) {
        try {
            return URLEncoder.encode(str, "utf8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder sb = new StringBuilder("Illegal ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            AFLogger.afInfoLog(sb.toString());
            return "";
        } catch (Throwable th) {
            return "";
        }
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.f1940.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.f1940.putAll(map);
        }
        return this;
    }

    public String generateLink() {
        return m36094().toString();
    }

    public void generateLink(Context context, CreateOneLinkHttpTask.ResponseListener responseListener) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        if (!this.f1940.isEmpty()) {
            for (Map.Entry<String, String> entry : this.f1940.entrySet()) {
                this.f1942.put(entry.getKey(), entry.getValue());
            }
        }
        m36094();
        String str = this.f1944;
        Map<String, String> map = this.f1942;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(string, map, AppsFlyerLibCore.getInstance(), context, AppsFlyerLib.getInstance().isTrackingStopped());
        createOneLinkHttpTask.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        createOneLinkHttpTask.setListener(responseListener);
        createOneLinkHttpTask.setBrandDomain(str);
        AFExecutor.getInstance().getThreadPoolExecutor().execute(createOneLinkHttpTask);
    }

    public String getBrandDomain() {
        return this.f1944;
    }

    public String getCampaign() {
        return this.f1936;
    }

    public String getChannel() {
        return this.f1938;
    }

    public String getMediaSource() {
        return this.f1945;
    }

    public Map<String, String> getParameters() {
        return this.f1940;
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.f1939 = str;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if (r9.length() < 5) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.appsflyer.share.LinkGenerator setBaseURL(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0039
            r0 = r8
            int r0 = r0.length()
            if (r0 > 0) goto L_0x000e
            goto L_0x0039
        L_0x000e:
            r0 = r9
            if (r0 == 0) goto L_0x001c
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length()
            r1 = 5
            if (r0 >= r1) goto L_0x0020
        L_0x001c:
            java.lang.String r0 = "go.onelink.me"
            r10 = r0
        L_0x0020:
            r0 = r7
            java.lang.String r1 = "https://%s/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r10
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r8
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.f1941 = r1
            goto L_0x0054
        L_0x0039:
            r0 = r7
            java.lang.String r1 = "https://%s/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "%sapp.%s"
            java.lang.String r5 = com.appsflyer.ServerConfigHandler.getUrl(r5)
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r10
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.f1941 = r1
        L_0x0054:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.share.LinkGenerator.setBaseURL(java.lang.String, java.lang.String, java.lang.String):com.appsflyer.share.LinkGenerator");
    }

    public LinkGenerator setBrandDomain(String str) {
        this.f1944 = str;
        return this;
    }

    public LinkGenerator setCampaign(String str) {
        this.f1936 = str;
        return this;
    }

    public LinkGenerator setChannel(String str) {
        this.f1938 = str;
        return this;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.f1949 = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.f1947 = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.f1937 = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.f1948 = str;
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.f1943 = str;
        return this;
    }
}
