package com.appsflyer.share;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.appsflyer.AFExecutor;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.OneLinkHttpTask;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/ShareInviteHelper.class */
public class ShareInviteHelper {
    public static LinkGenerator generateInviteUrl(Context context) {
        String appsFlyerUID = AppsFlyerLib.getInstance().getAppsFlyerUID(context);
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        String string2 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN);
        LinkGenerator addParameter = new LinkGenerator(Constants.USER_INVITE_LINK_TYPE).setBaseURL(string, string2, context.getPackageName()).setReferrerUID(appsFlyerUID).setReferrerCustomerId(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID)).addParameter(Constants.URL_SITE_ID, context.getPackageName());
        String string3 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_SCHEME);
        if (string3 != null && string3.length() > 3) {
            addParameter.setBaseDeeplink(string3);
        }
        return addParameter;
    }

    @Deprecated
    public static void generateUserInviteLink(@NonNull Context context, @NonNull String str, @NonNull Map<String, String> map, @NonNull CreateOneLinkHttpTask.ResponseListener responseListener) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(str, map, AppsFlyerLibCore.getInstance(), context, AppsFlyerLib.getInstance().isTrackingStopped());
        createOneLinkHttpTask.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        createOneLinkHttpTask.setListener(responseListener);
        AFExecutor.getInstance().getThreadPoolExecutor().execute(createOneLinkHttpTask);
    }

    public static void trackInvite(Context context, String str, Map<String, String> map) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            AFLogger.afWarnLog("[Invite] Cannot track App-Invite with null/empty channel");
        } else if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track Invite is disabled", true);
        } else {
            LinkGenerator generateInviteUrl = generateInviteUrl(context);
            generateInviteUrl.addParameters(map);
            AFLogger.afDebugLog("[Invite] Tracking App-Invite via channel: ".concat(String.valueOf(str)));
            StringBuilder sb = new StringBuilder("[Invite] Generated URL: ");
            sb.append(generateInviteUrl.generateLink());
            AFLogger.afDebugLog(sb.toString());
            String mediaSource = generateInviteUrl.getMediaSource();
            if (Constants.USER_INVITE_LINK_TYPE.equals(mediaSource)) {
                str2 = AFInAppEventType.INVITE;
            } else {
                str2 = mediaSource;
                if ("af_user_share".equals(mediaSource)) {
                    str2 = AFInAppEventType.SHARE;
                }
            }
            HashMap hashMap = new HashMap();
            if (generateInviteUrl.getParameters() != null) {
                hashMap.putAll(generateInviteUrl.getParameters());
            }
            hashMap.put("af_channel", str);
            AppsFlyerLib.getInstance().trackEvent(context, str2, hashMap);
        }
    }
}
