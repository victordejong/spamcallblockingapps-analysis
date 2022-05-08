package com.appsflyer;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.appsflyer.share.Constants;
import com.appsflyer.share.LinkGenerator;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/CreateOneLinkHttpTask.class */
public class CreateOneLinkHttpTask extends OneLinkHttpTask {
    public static final String BRAND_DOMAIN = "brand_domain";
    public static final String TRACKING_LINK_DATA_KEY = "data";
    public static final String TRACKING_LINK_LIVE_TIME_KEY = "ttl";
    public String brandDomain;
    public Context context;
    public Map<String, String> data;
    public boolean mTrackingStopped;
    public String packageName;
    public ResponseListener responseListener;
    public String ttl;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/CreateOneLinkHttpTask$ResponseListener.class */
    public interface ResponseListener {
        @WorkerThread
        void onResponse(String str);

        @WorkerThread
        void onResponseError(String str);
    }

    public CreateOneLinkHttpTask(@NonNull String str, @NonNull Map<String, String> map, AppsFlyerLibCore appsFlyerLibCore, @NonNull Context context, boolean z) {
        super(appsFlyerLibCore);
        this.packageName = "";
        this.mTrackingStopped = false;
        this.mTrackingStopped = z;
        this.context = context;
        if (this.context != null) {
            this.packageName = context.getPackageName();
        } else {
            AFLogger.afWarnLog("CreateOneLinkHttpTask: context can't be null");
        }
        this.oneLinkId = str;
        this.ttl = FavoriteGroupRealmObject.PARENDID_DELETED;
        this.data = map;
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public String getOneLinkUrl() {
        return ServerConfigHandler.getUrl(OneLinkHttpTask.BASE_URL) + "/" + this.oneLinkId;
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public void handleResponse(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                this.responseListener.onResponse(jSONObject.optString(keys.next()));
            }
        } catch (JSONException e) {
            this.responseListener.onResponseError("Can't parse one link data");
            AFLogger.afErrorLog("Error while parsing to json " + str, e);
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        if (!this.mTrackingStopped) {
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setUseCaches(false);
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject(this.data);
            jSONObject.put(TRACKING_LINK_LIVE_TIME_KEY, this.ttl);
            jSONObject.put("data", jSONObject2);
            String str = this.brandDomain;
            if (str != null) {
                jSONObject.put(BRAND_DOMAIN, str);
            }
            httpsURLConnection.connect();
            DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
            dataOutputStream.writeBytes(jSONObject.toString());
            dataOutputStream.flush();
            dataOutputStream.close();
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public void onErrorResponse() {
        LinkGenerator addParameters = new LinkGenerator(Constants.USER_INVITE_LINK_TYPE).setBaseURL(this.oneLinkId, AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN), this.packageName).addParameter(Constants.URL_SITE_ID, this.packageName).addParameters(this.data);
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string != null) {
            addParameters.setReferrerCustomerId(string);
        }
        this.responseListener.onResponse(addParameters.generateLink());
    }

    public void setBrandDomain(String str) {
        this.brandDomain = str;
    }

    public void setListener(@NonNull ResponseListener responseListener) {
        this.responseListener = responseListener;
    }
}
