package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.p005os.C0228b;
import com.google.android.gms.common.C0944j;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.common.util.C0968j;
import f.e.g;
import g.f.a.d.b.b;
import java.util.Locale;
/* renamed from: com.google.android.gms.common.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u.class */
public final class C0939u {

    /* renamed from: a */
    private static final g<String, String> f3563a = new g<>();

    /* renamed from: b */
    private static Locale f3564b;

    /* renamed from: a */
    public static String m3240a(Context context) {
        return context.getResources().getString(b.g);
    }

    /* renamed from: b */
    public static String m3239b(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(b.f);
            case 2:
                return resources.getString(b.l);
            case 3:
                return resources.getString(b.c);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return m3238c(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return m3238c(context, "common_google_play_services_network_error_title");
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
                return m3238c(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return m3238c(context, "common_google_play_services_restricted_profile_title");
        }
    }

    /* renamed from: c */
    private static String m3238c(Context context, String str) {
        g<String, String> gVar = f3563a;
        synchronized (gVar) {
            Locale m5941c = C0228b.m5945a(context.getResources().getConfiguration()).m5941c(0);
            if (!m5941c.equals(f3564b)) {
                gVar.clear();
                f3564b = m5941c;
            }
            String str2 = (String) gVar.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources f = com.google.android.gms.common.g.f(context);
            if (f == null) {
                return null;
            }
            int identifier = f.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = f.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                gVar.put(str, string);
                return string;
            }
            String valueOf2 = String.valueOf(str);
            Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
            return null;
        }
    }

    /* renamed from: d */
    private static String m3237d(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m3238c = m3238c(context, str);
        String str3 = m3238c;
        if (m3238c == null) {
            str3 = resources.getString(C0944j.f3569a);
        }
        return String.format(resources.getConfiguration().locale, str3, str2);
    }

    /* renamed from: e */
    private static String m3236e(Context context) {
        String packageName = context.getPackageName();
        try {
            return C0950c.m3200a(context).m3206d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    /* renamed from: f */
    public static String m3235f(Context context, int i) {
        String m3238c = i == 6 ? m3238c(context, "common_google_play_services_resolution_required_title") : m3239b(context, i);
        String str = m3238c;
        if (m3238c == null) {
            str = context.getResources().getString(b.h);
        }
        return str;
    }

    /* renamed from: g */
    public static String m3234g(Context context, int i) {
        Resources resources = context.getResources();
        String m3236e = m3236e(context);
        if (i != 1) {
            if (i == 2) {
                return C0968j.m3154f(context) ? resources.getString(b.n) : resources.getString(b.k, m3236e);
            } else if (i == 3) {
                return resources.getString(b.b, m3236e);
            } else {
                if (i == 5) {
                    return m3237d(context, "common_google_play_services_invalid_account_text", m3236e);
                }
                if (i == 7) {
                    return m3237d(context, "common_google_play_services_network_error_text", m3236e);
                }
                if (i == 9) {
                    return resources.getString(b.i, m3236e);
                }
                if (i == 20) {
                    return m3237d(context, "common_google_play_services_restricted_profile_text", m3236e);
                }
                switch (i) {
                    case 16:
                        return m3237d(context, "common_google_play_services_api_unavailable_text", m3236e);
                    case 17:
                        return m3237d(context, "common_google_play_services_sign_in_failed_text", m3236e);
                    case 18:
                        return resources.getString(b.m, m3236e);
                    default:
                        return resources.getString(C0944j.f3569a, m3236e);
                }
            }
        }
        return resources.getString(b.e, m3236e);
    }

    /* renamed from: h */
    public static String m3233h(Context context, int i) {
        return (i == 6 || i == 19) ? m3237d(context, "common_google_play_services_resolution_required_text", m3236e(context)) : m3234g(context, i);
    }

    /* renamed from: i */
    public static String m3232i(Context context, int i) {
        Resources resources = context.getResources();
        return i != 1 ? i != 2 ? i != 3 ? resources.getString(17039370) : resources.getString(b.a) : resources.getString(b.j) : resources.getString(b.d);
    }
}
