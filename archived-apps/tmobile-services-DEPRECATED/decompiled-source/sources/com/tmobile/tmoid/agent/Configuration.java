package com.tmobile.tmoid.agent;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import com.facebook.stetho.common.Utf8Charset;
import com.tmobile.tmoid.helperlib.C2031R;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/Configuration.class */
public class Configuration {
    public static final String LOG_TAG = "TMO-Agent";
    public static final String PREFERENCES_FILE = Configuration.class.getPackage().getName() + "_preferences";
    private String ACCESS_TOKEN_URL;
    private boolean ADD_AUTHORIZATION_HEADER;
    private String AUTHORIZE_URL;
    private boolean CLEAR_CACHE;
    private String DEVICE_AGENT;
    private boolean ENFORCE_COMPUTED_CLIENT_SECRET;
    private String LOGIN_URL;
    private String LOGOUT_URL;
    private String OAUTH_SERVER_HOST;
    private String PROFILE_URL;
    private String REDIRECT_URI;
    private String REDIRECT_URI_ENCODED;
    private String SIT_SES_URL;
    private RamStorage ramStorage = new RamStorage();

    public static String getLogTag() {
        return "TMO-Agent";
    }

    private void setValue(String str, String str2) {
        Log.m4648v("TMO-Agent", "configuration:" + str + "=" + str2);
        if ("dashboard.url".equals(str)) {
            set_LOGIN_URL(str2);
        } else if ("logout.url".equals(str)) {
            this.LOGOUT_URL = urlOrNull(str2);
        } else if ("profile.url".equals(str)) {
            this.PROFILE_URL = urlOrNull(str2);
        } else if ("redirect.uri".equals(str)) {
            set_REDIRECT_URI(urlOrNull(str2));
        } else if ("ses.url".equals(str)) {
            set_SIT_SES_URL(urlOrNull(str2));
        } else if ("device.agent".equals(str)) {
            this.DEVICE_AGENT = str2;
        } else if ("authorize.url".equals(str)) {
            set_AUTHORIZE_URL(str2);
        } else if ("accesstoken.url".equals(str)) {
            this.ACCESS_TOKEN_URL = urlOrNull(str2);
        } else if ("clearcache".equals(str)) {
            this.CLEAR_CACHE = str2.equalsIgnoreCase("true");
        } else if ("enforce_computed_client_secret".equals(str)) {
            this.ENFORCE_COMPUTED_CLIENT_SECRET = str2.equalsIgnoreCase("true");
        } else if ("add_authorization_header".equals(str)) {
            this.ADD_AUTHORIZATION_HEADER = str2.equalsIgnoreCase("true");
        }
    }

    public static String urlOrNull(String str) {
        String str2 = str;
        if (str != null) {
            try {
                new URL(str);
                str2 = str;
            } catch (MalformedURLException e) {
                Log.m4648v("TMO-Agent", "urlOrNull MalformedURLException:" + str);
                str2 = null;
            }
        }
        return str2;
    }

    public String getACCESS_TOKEN_URL() {
        return this.ACCESS_TOKEN_URL;
    }

    public String getAUTHORIZE_URL() {
        return this.AUTHORIZE_URL;
    }

    public String getDEVICE_AGENT() {
        return this.DEVICE_AGENT;
    }

    public String getLOGIN_URL() {
        return this.LOGIN_URL;
    }

    public String getLOGOUT_URL() {
        return this.LOGOUT_URL;
    }

    public String getOAUTH_SERVER_HOST() {
        return this.OAUTH_SERVER_HOST;
    }

    public String getPROFILE_URL() {
        return this.PROFILE_URL;
    }

    public String getREDIRECT_URI() {
        return this.REDIRECT_URI;
    }

    public String getREDIRECT_URI_ENCODED() {
        return this.REDIRECT_URI_ENCODED;
    }

    public RamStorage getRamStorage() {
        return this.ramStorage;
    }

    public String getSIT_SES_URL() {
        return this.SIT_SES_URL;
    }

    public boolean isADD_AUTHORIZATION_HEADER() {
        return this.ADD_AUTHORIZATION_HEADER;
    }

    public boolean isCLEAR_CACHE() {
        return this.CLEAR_CACHE;
    }

    public boolean isENFORCE_COMPUTED_CLIENT_SECRET() {
        return this.ENFORCE_COMPUTED_CLIENT_SECRET;
    }

    public boolean load(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("device.agent", null);
        String urlOrNull = urlOrNull(sharedPreferences.getString("dashboard.url", null));
        String urlOrNull2 = urlOrNull(sharedPreferences.getString("logout.url", null));
        String urlOrNull3 = urlOrNull(sharedPreferences.getString("profile.url", null));
        String urlOrNull4 = urlOrNull(sharedPreferences.getString("redirect.uri", null));
        String urlOrNull5 = urlOrNull(sharedPreferences.getString("ses.url", null));
        String urlOrNull6 = urlOrNull(sharedPreferences.getString("authorize.url", null));
        String urlOrNull7 = urlOrNull(sharedPreferences.getString("accesstoken.url", null));
        if (string == null) {
            return false;
        }
        this.DEVICE_AGENT = string;
        set_LOGIN_URL(urlOrNull);
        this.LOGOUT_URL = urlOrNull2;
        this.PROFILE_URL = urlOrNull3;
        set_REDIRECT_URI(urlOrNull4);
        this.SIT_SES_URL = urlOrNull5;
        set_AUTHORIZE_URL(urlOrNull6);
        this.ACCESS_TOKEN_URL = urlOrNull7;
        this.CLEAR_CACHE = sharedPreferences.getBoolean("clearcache", false);
        this.ENFORCE_COMPUTED_CLIENT_SECRET = sharedPreferences.getBoolean("enforce_computed_client_secret", true);
        this.ADD_AUTHORIZATION_HEADER = sharedPreferences.getBoolean("add_authorization_header", true);
        return true;
    }

    public void load_from_xml(Context context, boolean z) throws IOException, XmlPullParserException {
        XmlResourceParser xml = context.getResources().getXml(C2031R.C2036xml.default_configuration);
        int eventType = xml.getEventType();
        while (true) {
            boolean z2 = true;
            if (eventType != 1) {
                z2 = false;
                eventType = eventType;
                if (eventType == 2) {
                    String name = xml.getName();
                    eventType = xml.next();
                    if (eventType != 2) {
                        z2 = false;
                    }
                    if (eventType == 4) {
                        if (!name.startsWith("production.") && !name.startsWith("lab.")) {
                            setValue(name, xml.getText());
                        } else if (z) {
                            if (name.startsWith("production.")) {
                                setValue(name.substring(11), xml.getText());
                            }
                        } else if (name.startsWith("lab.")) {
                            setValue(name.substring(4), xml.getText());
                        }
                    }
                }
                if (!z2) {
                    eventType = xml.next();
                }
            } else {
                Log.m4648v("TMO-Agent", "loaded config xml file");
                return;
            }
        }
    }

    public void setACCESS_TOKEN_URL(String str) {
        this.ACCESS_TOKEN_URL = str;
    }

    public void setADD_AUTHORIZATION_HEADER(boolean z) {
        this.ADD_AUTHORIZATION_HEADER = z;
    }

    public void setCLEAR_CACHE(boolean z) {
        this.CLEAR_CACHE = z;
    }

    public void setENFORCE_COMPUTED_CLIENT_SECRET(boolean z) {
        this.ENFORCE_COMPUTED_CLIENT_SECRET = z;
    }

    public void setLOGOUT_URL(String str) {
        this.LOGOUT_URL = str;
    }

    public void setPROFILE_URL(String str) {
        this.PROFILE_URL = str;
    }

    public void set_AUTHORIZE_URL(String str) {
        this.AUTHORIZE_URL = str;
        if (str != null) {
            try {
                this.OAUTH_SERVER_HOST = new URL(this.AUTHORIZE_URL).getHost();
            } catch (MalformedURLException e) {
                Log.m4648v("TMO-Agent", "set_AUTHORIZE_URL MalformedURLException:" + str);
                this.OAUTH_SERVER_HOST = null;
            }
        } else {
            this.OAUTH_SERVER_HOST = null;
        }
    }

    public void set_LOGIN_URL(String str) {
        this.LOGIN_URL = str;
    }

    public void set_REDIRECT_URI(String str) {
        try {
            this.REDIRECT_URI_ENCODED = URLEncoder.encode(str, Utf8Charset.NAME);
            this.REDIRECT_URI = str;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public void set_SIT_SES_URL(String str) {
        this.SIT_SES_URL = str;
    }
}
