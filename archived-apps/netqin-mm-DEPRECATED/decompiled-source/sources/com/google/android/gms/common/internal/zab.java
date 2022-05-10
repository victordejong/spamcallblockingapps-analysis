package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.base.C7223R;
import com.google.android.gms.common.C7228R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;
import p012b.p035f.C0793g;
import p012b.p042i.p050l.C0916a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zab.class */
public final class zab {

    /* renamed from: a */
    public static final C0793g<String, String> f23460a = new C0793g<>();

    /* renamed from: b */
    public static Locale f23461b;

    /* renamed from: a */
    public static String m17205a(Context context) {
        return context.getResources().getString(C7223R.string.common_google_play_services_notification_channel_name);
    }

    /* renamed from: a */
    public static String m17204a(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(C7223R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(C7223R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(C7223R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m17203a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m17203a(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return m17203a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m17203a(context, "common_google_play_services_restricted_profile_title");
        }
    }

    /* renamed from: a */
    public static String m17203a(Context context, String str) {
        synchronized (f23460a) {
            Locale a = C0916a.m35503a(context.getResources().getConfiguration()).m35502a(0);
            if (!a.equals(f23461b)) {
                f23460a.clear();
                f23461b = a;
            }
            String str2 = f23460a.get(str);
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
            f23460a.put(str, string);
            return string;
        }
    }

    /* renamed from: a */
    public static String m17202a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a = m17203a(context, str);
        String str3 = a;
        if (a == null) {
            str3 = resources.getString(C7228R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: b */
    public static String m17201b(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.m17026b(context).m17029b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    /* renamed from: b */
    public static String m17200b(Context context, int i) {
        String a = i == 6 ? m17203a(context, "common_google_play_services_resolution_required_title") : m17204a(context, i);
        String str = a;
        if (a == null) {
            str = context.getResources().getString(C7223R.string.common_google_play_services_notification_ticker);
        }
        return str;
    }

    /* renamed from: c */
    public static String m17199c(Context context, int i) {
        Resources resources = context.getResources();
        String b = m17201b(context);
        if (i == 1) {
            return resources.getString(C7223R.string.common_google_play_services_install_text, b);
        }
        if (i == 2) {
            return DeviceProperties.m17081e(context) ? resources.getString(C7223R.string.common_google_play_services_wear_update_text) : resources.getString(C7223R.string.common_google_play_services_update_text, b);
        }
        if (i == 3) {
            return resources.getString(C7223R.string.common_google_play_services_enable_text, b);
        }
        if (i == 5) {
            return m17202a(context, "common_google_play_services_invalid_account_text", b);
        }
        if (i == 7) {
            return m17202a(context, "common_google_play_services_network_error_text", b);
        }
        if (i == 9) {
            return resources.getString(C7223R.string.common_google_play_services_unsupported_text, b);
        }
        if (i == 20) {
            return m17202a(context, "common_google_play_services_restricted_profile_text", b);
        }
        switch (i) {
            case 16:
                return m17202a(context, "common_google_play_services_api_unavailable_text", b);
            case 17:
                return m17202a(context, "common_google_play_services_sign_in_failed_text", b);
            case 18:
                return resources.getString(C7223R.string.common_google_play_services_updating_text, b);
            default:
                return resources.getString(C7228R.string.common_google_play_services_unknown_issue, b);
        }
    }

    /* renamed from: d */
    public static String m17198d(Context context, int i) {
        return (i == 6 || i == 19) ? m17202a(context, "common_google_play_services_resolution_required_text", m17201b(context)) : m17199c(context, i);
    }

    /* renamed from: e */
    public static String m17197e(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(C7223R.string.common_google_play_services_enable_button) : resources.getString(C7223R.string.common_google_play_services_update_button) : resources.getString(C7223R.string.common_google_play_services_install_button);
    }
}
