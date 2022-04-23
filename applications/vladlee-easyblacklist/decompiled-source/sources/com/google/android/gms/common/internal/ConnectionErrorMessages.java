package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.p026b.C0542i;
import com.google.android.gms.base.C1563R;
import com.google.android.gms.common.C1567R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ConnectionErrorMessages.class */
public final class ConnectionErrorMessages {

    /* renamed from: a */
    private static final C0542i<String, String> f6750a = new C0542i<>();

    private ConnectionErrorMessages() {
    }

    /* renamed from: a */
    private static String m5700a(Context context, String str) {
        synchronized (f6750a) {
            String str2 = f6750a.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                String valueOf2 = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
                return null;
            }
            f6750a.put(str, string);
            return string;
        }
    }

    /* renamed from: a */
    private static String m5699a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a = m5700a(context, str);
        String str3 = a;
        if (a == null) {
            str3 = resources.getString(C1567R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    public static String getAppName(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String getDefaultNotificationChannelName(Context context) {
        return context.getResources().getString(C1563R.string.common_google_play_services_notification_channel_name);
    }

    public static String getErrorDialogButtonMessage(Context context, int i) {
        return context.getResources().getString(i != 1 ? i != 2 ? i != 3 ? 17039370 : C1563R.string.common_google_play_services_enable_button : C1563R.string.common_google_play_services_update_button : C1563R.string.common_google_play_services_install_button);
    }

    public static String getErrorMessage(Context context, int i) {
        Resources resources = context.getResources();
        String appName = getAppName(context);
        if (i == 1) {
            return resources.getString(C1563R.string.common_google_play_services_install_text, appName);
        }
        if (i == 2) {
            return DeviceProperties.isWearableWithoutPlayStore(context) ? resources.getString(C1563R.string.common_google_play_services_wear_update_text) : resources.getString(C1563R.string.common_google_play_services_update_text, appName);
        }
        if (i == 3) {
            return resources.getString(C1563R.string.common_google_play_services_enable_text, appName);
        }
        if (i == 5) {
            return m5699a(context, "common_google_play_services_invalid_account_text", appName);
        }
        if (i == 7) {
            return m5699a(context, "common_google_play_services_network_error_text", appName);
        }
        if (i == 9) {
            return resources.getString(C1563R.string.common_google_play_services_unsupported_text, appName);
        }
        if (i == 20) {
            return m5699a(context, "common_google_play_services_restricted_profile_text", appName);
        }
        switch (i) {
            case 16:
                return m5699a(context, "common_google_play_services_api_unavailable_text", appName);
            case 17:
                return m5699a(context, "common_google_play_services_sign_in_failed_text", appName);
            case 18:
                return resources.getString(C1563R.string.common_google_play_services_updating_text, appName);
            default:
                return resources.getString(C1567R.string.common_google_play_services_unknown_issue, appName);
        }
    }

    public static String getErrorNotificationMessage(Context context, int i) {
        return (i == 6 || i == 19) ? m5699a(context, "common_google_play_services_resolution_required_text", getAppName(context)) : getErrorMessage(context, i);
    }

    public static String getErrorNotificationTitle(Context context, int i) {
        String a = i == 6 ? m5700a(context, "common_google_play_services_resolution_required_title") : getErrorTitle(context, i);
        String str = a;
        if (a == null) {
            str = context.getResources().getString(C1563R.string.common_google_play_services_notification_ticker);
        }
        return str;
    }

    public static String getErrorTitle(Context context, int i) {
        String str;
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C1563R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(C1563R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(C1563R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m5700a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m5700a(context, "common_google_play_services_network_error_title");
            case 8:
                str = "Internal error occurred. Please see logs for detailed information";
                break;
            case 9:
                str = "Google Play services is invalid. Cannot recover.";
                break;
            case 10:
                str = "Developer error occurred. Please see logs for detailed information";
                break;
            case 11:
                str = "The application is not licensed to the user.";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                str = sb.toString();
                break;
            case 16:
                str = "One of the API components you attempted to connect to is not available.";
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return m5700a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m5700a(context, "common_google_play_services_restricted_profile_title");
        }
        Log.e("GoogleApiAvailability", str);
        return null;
    }
}
