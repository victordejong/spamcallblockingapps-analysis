package com.appsflyer.share;

import android.content.Context;
import com.appsflyer.AFExecutor;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.CreateOneLinkHttpTask$ResponseListener;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.ServerConfigHandler;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/LinkGenerator.class */
public class LinkGenerator {

    /* renamed from: ı */
    String f3106;

    /* renamed from: Ɩ */
    private String f3107;

    /* renamed from: ǃ */
    private String f3108;

    /* renamed from: ɨ */
    private String f3110;

    /* renamed from: ɩ */
    private String f3111;

    /* renamed from: ɹ */
    private String f3112;

    /* renamed from: ɾ */
    private String f3113;

    /* renamed from: Ι */
    String f3114;

    /* renamed from: ι */
    private String f3115;

    /* renamed from: І */
    private String f3116;

    /* renamed from: і */
    private String f3117;

    /* renamed from: Ӏ */
    private String f3118;

    /* renamed from: ӏ */
    private Map<String, String> f3119 = new HashMap();

    /* renamed from: ȷ */
    private Map<String, String> f3109 = new HashMap();

    public LinkGenerator(String str) {
        this.f3111 = str;
    }

    /* renamed from: ǃ */
    private static String m4004(String str, String str2) {
        try {
            return URLEncoder.encode(str, "utf8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder sb = new StringBuilder("Illegal ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            AFLogger.afErrorLog(sb.toString(), e);
            return "";
        } catch (Throwable th) {
            AFLogger.afErrorLog(th);
            return "";
        }
    }

    /* renamed from: Ι */
    private StringBuilder m4003() {
        StringBuilder sb = new StringBuilder();
        String str = this.f3106;
        if (str == null || !str.startsWith("http")) {
            sb.append(ServerConfigHandler.getUrl(Constants.f3100));
        } else {
            sb.append(this.f3106);
        }
        if (this.f3114 != null) {
            sb.append('/');
            sb.append(this.f3114);
        }
        this.f3109.put(Constants.URL_MEDIA_SOURCE, this.f3111);
        sb.append('?');
        sb.append("pid=");
        sb.append(m4004(this.f3111, "media source"));
        String str2 = this.f3117;
        if (str2 != null) {
            this.f3109.put("af_referrer_uid", str2);
            sb.append('&');
            sb.append("af_referrer_uid=");
            sb.append(m4004(this.f3117, "referrerUID"));
        }
        String str3 = this.f3108;
        if (str3 != null) {
            this.f3109.put("af_channel", str3);
            sb.append('&');
            sb.append("af_channel=");
            sb.append(m4004(this.f3108, AppsFlyerProperties.CHANNEL));
        }
        String str4 = this.f3116;
        if (str4 != null) {
            this.f3109.put("af_referrer_customer_id", str4);
            sb.append('&');
            sb.append("af_referrer_customer_id=");
            sb.append(m4004(this.f3116, "referrerCustomerId"));
        }
        String str5 = this.f3115;
        if (str5 != null) {
            this.f3109.put(Constants.URL_CAMPAIGN, str5);
            sb.append('&');
            sb.append("c=");
            sb.append(m4004(this.f3115, "campaign"));
        }
        String str6 = this.f3112;
        if (str6 != null) {
            this.f3109.put("af_referrer_name", str6);
            sb.append('&');
            sb.append("af_referrer_name=");
            sb.append(m4004(this.f3112, "referrerName"));
        }
        String str7 = this.f3107;
        if (str7 != null) {
            this.f3109.put("af_referrer_image_url", str7);
            sb.append('&');
            sb.append("af_referrer_image_url=");
            sb.append(m4004(this.f3107, "referrerImageURL"));
        }
        if (this.f3113 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f3113);
            sb2.append(this.f3113.endsWith("/") ? "" : "/");
            String str8 = this.f3118;
            if (str8 != null) {
                sb2.append(str8);
            }
            this.f3109.put("af_dp", sb2.toString());
            sb.append('&');
            sb.append("af_dp=");
            sb.append(m4004(this.f3113, "baseDeeplink"));
            if (this.f3118 != null) {
                sb.append(this.f3113.endsWith("/") ? "" : "%2F");
                sb.append(m4004(this.f3118, "deeplinkPath"));
            }
        }
        for (String str9 : this.f3119.keySet()) {
            String obj = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str9);
            sb3.append("=");
            sb3.append(m4004(this.f3119.get(str9), str9));
            if (!obj.contains(sb3.toString())) {
                sb.append('&');
                sb.append(str9);
                sb.append('=');
                sb.append(m4004(this.f3119.get(str9), str9));
            }
        }
        return sb;
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.f3119.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.f3119.putAll(map);
        }
        return this;
    }

    public String generateLink() {
        return m4003().toString();
    }

    public void generateLink(Context context, CreateOneLinkHttpTask$ResponseListener createOneLinkHttpTask$ResponseListener) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        if (!this.f3119.isEmpty()) {
            for (Map.Entry<String, String> entry : this.f3119.entrySet()) {
                this.f3109.put(entry.getKey(), entry.getValue());
            }
        }
        m4003();
        String str = this.f3110;
        Map<String, String> map = this.f3109;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(string, map, AppsFlyerLibCore.getInstance(), context, AppsFlyerLib.getInstance().isStopped());
        createOneLinkHttpTask.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        createOneLinkHttpTask.setListener(createOneLinkHttpTask$ResponseListener);
        createOneLinkHttpTask.setBrandDomain(str);
        AFExecutor.getInstance().getThreadPoolExecutor().execute(createOneLinkHttpTask);
    }

    public String getBrandDomain() {
        return this.f3110;
    }

    public String getCampaign() {
        return this.f3115;
    }

    public String getChannel() {
        return this.f3108;
    }

    public String getMediaSource() {
        return this.f3111;
    }

    public Map<String, String> getParameters() {
        return this.f3119;
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.f3113 = str;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if (r9.length() < 5) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.appsflyer.share.LinkGenerator setBaseURL(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L39
            r0 = r8
            int r0 = r0.length()
            if (r0 > 0) goto Le
            goto L39
        Le:
            r0 = r9
            if (r0 == 0) goto L1c
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length()
            r1 = 5
            if (r0 >= r1) goto L20
        L1c:
            java.lang.String r0 = "go.onelink.me"
            r10 = r0
        L20:
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
            r0.f3106 = r1
            goto L54
        L39:
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
            r0.f3106 = r1
        L54:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.share.LinkGenerator.setBaseURL(java.lang.String, java.lang.String, java.lang.String):com.appsflyer.share.LinkGenerator");
    }

    public LinkGenerator setBrandDomain(String str) {
        this.f3110 = str;
        return this;
    }

    public LinkGenerator setCampaign(String str) {
        this.f3115 = str;
        return this;
    }

    public LinkGenerator setChannel(String str) {
        this.f3108 = str;
        return this;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.f3118 = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.f3116 = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.f3107 = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.f3112 = str;
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.f3117 = str;
        return this;
    }
}
