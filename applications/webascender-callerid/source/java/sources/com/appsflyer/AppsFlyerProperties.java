package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.internal.referrer.Payload;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerProperties.class */
public class AppsFlyerProperties {
    public static final String ADDITIONAL_CUSTOM_DATA = "additionalCustomData";
    public static final String AF_KEY = "AppsFlyerKey";
    public static final String AF_WAITFOR_CUSTOMERID = "waitForCustomerId";
    public static final String APP_ID = "appid";
    public static final String APP_USER_ID = "AppUserId";
    public static final String CHANNEL = "channel";
    public static final String COLLECT_ANDROID_ID = "collectAndroidId";
    public static final String COLLECT_ANDROID_ID_FORCE_BY_USER = "collectAndroidIdForceByUser";
    public static final String COLLECT_FACEBOOK_ATTR_ID = "collectFacebookAttrId";
    public static final String COLLECT_FINGER_PRINT = "collectFingerPrint";
    public static final String COLLECT_IMEI = "collectIMEI";
    public static final String COLLECT_IMEI_FORCE_BY_USER = "collectIMEIForceByUser";
    public static final String COLLECT_MAC = "collectMAC";
    public static final String COLLECT_OAID = "collectOAID";
    public static final String CURRENCY_CODE = "currencyCode";
    public static final String DEVICE_TRACKING_DISABLED = "deviceTrackingDisabled";
    public static final String DISABLE_KEYSTORE = "keyPropDisableAFKeystore";
    public static final String DISABLE_LOGS_COMPLETELY = "disableLogs";
    public static final String DISABLE_OTHER_SDK = "disableOtherSdk";
    public static final String DPM = "disableProxy";
    public static final String EMAIL_CRYPT_TYPE = "userEmailsCryptType";
    public static final String ENABLE_GPS_FALLBACK = "enableGpsFallback";
    public static final String EXTENSION = "sdkExtension";
    public static final String IS_UPDATE = "IS_UPDATE";
    public static final String LAUNCH_PROTECT_ENABLED = "launchProtectEnabled";
    public static final String NEW_REFERRER_SENT = "newGPReferrerSent";
    public static final String ONELINK_DOMAIN = "onelinkDomain";
    public static final String ONELINK_ID = "oneLinkSlug";
    public static final String ONELINK_SCHEME = "onelinkScheme";
    public static final String USER_EMAIL = "userEmail";
    public static final String USER_EMAILS = "userEmails";
    public static final String USE_HTTP_FALLBACK = "useHttpFallback";

    /* renamed from: Ι */
    private static AppsFlyerProperties f2922 = new AppsFlyerProperties();

    /* renamed from: ı */
    private boolean f2923;

    /* renamed from: ǃ */
    private boolean f2924;

    /* renamed from: ɩ */
    private Map<String, Object> f2925 = new HashMap();

    /* renamed from: ɹ */
    private boolean f2926 = false;

    /* renamed from: ι */
    private String f2927;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerProperties$EmailsCryptType.class */
    public enum EmailsCryptType {
        NONE(0),
        SHA256(3);
        

        /* renamed from: Ι */
        private final int f2929;

        EmailsCryptType(int i) {
            this.f2929 = i;
        }

        public final int getValue() {
            return this.f2929;
        }
    }

    private AppsFlyerProperties() {
    }

    public static AppsFlyerProperties getInstance() {
        return f2922;
    }

    /* renamed from: Ι */
    private boolean m4109() {
        return this.f2926;
    }

    public boolean getBoolean(String str, boolean z) {
        String string = getString(str);
        return string == null ? z : Boolean.valueOf(string).booleanValue();
    }

    public int getInt(String str, int i) {
        String string = getString(str);
        return string == null ? i : Integer.valueOf(string).intValue();
    }

    public long getLong(String str, long j) {
        String string = getString(str);
        return string == null ? j : Long.valueOf(string).longValue();
    }

    public Object getObject(String str) {
        Object obj;
        synchronized (this) {
            obj = this.f2925.get(str);
        }
        return obj;
    }

    public String getReferrer(Context context) {
        String str = this.f2927;
        if (str != null) {
            return str;
        }
        if (getString("AF_REFERRER") != null) {
            return getString("AF_REFERRER");
        }
        if (context != null) {
            return AppsFlyerLibCore.getSharedPreferences(context).getString(Payload.RFR, null);
        }
        return null;
    }

    public String getString(String str) {
        String str2;
        synchronized (this) {
            str2 = (String) this.f2925.get(str);
        }
        return str2;
    }

    public boolean isEnableLog() {
        return getBoolean("shouldLog", true);
    }

    protected boolean isFirstLaunchCalled() {
        return this.f2923;
    }

    public boolean isLogsDisabledCompletely() {
        return getBoolean(DISABLE_LOGS_COMPLETELY, false);
    }

    protected boolean isOnReceiveCalled() {
        return this.f2924;
    }

    public boolean isOtherSdkStringDisabled() {
        return getBoolean(DISABLE_OTHER_SDK, false);
    }

    public void loadProperties(Context context) {
        synchronized (this) {
            if (m4109()) {
                return;
            }
            String string = AppsFlyerLibCore.getSharedPreferences(context).getString("savedProperties", null);
            if (string != null) {
                AFLogger.afDebugLog("Loading properties..");
                try {
                    JSONObject jSONObject = new JSONObject(string);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (this.f2925.get(next) == null) {
                            this.f2925.put(next, jSONObject.getString(next));
                        }
                    }
                    this.f2926 = true;
                } catch (JSONException e) {
                    AFLogger.afErrorLog("Failed loading properties", e);
                }
                StringBuilder sb = new StringBuilder("Done loading properties: ");
                sb.append(this.f2926);
                AFLogger.afDebugLog(sb.toString());
            }
        }
    }

    public void remove(String str) {
        synchronized (this) {
            this.f2925.remove(str);
        }
    }

    public void saveProperties(SharedPreferences sharedPreferences) {
        synchronized (this) {
            sharedPreferences.edit().putString("savedProperties", new JSONObject(this.f2925).toString()).apply();
        }
    }

    public void set(String str, int i) {
        synchronized (this) {
            this.f2925.put(str, Integer.toString(i));
        }
    }

    public void set(String str, long j) {
        synchronized (this) {
            this.f2925.put(str, Long.toString(j));
        }
    }

    public void set(String str, String str2) {
        synchronized (this) {
            this.f2925.put(str, str2);
        }
    }

    public void set(String str, boolean z) {
        synchronized (this) {
            this.f2925.put(str, Boolean.toString(z));
        }
    }

    public void set(String str, String[] strArr) {
        synchronized (this) {
            this.f2925.put(str, strArr);
        }
    }

    public void setCustomData(String str) {
        synchronized (this) {
            this.f2925.put(ADDITIONAL_CUSTOM_DATA, str);
        }
    }

    protected void setFirstLaunchCalled() {
        this.f2923 = true;
    }

    protected void setFirstLaunchCalled(boolean z) {
        this.f2923 = z;
    }

    protected void setOnReceiveCalled() {
        this.f2924 = true;
    }

    protected void setReferrer(String str) {
        set("AF_REFERRER", str);
        this.f2927 = str;
    }

    public void setUserEmails(String str) {
        synchronized (this) {
            this.f2925.put(USER_EMAILS, str);
        }
    }
}
