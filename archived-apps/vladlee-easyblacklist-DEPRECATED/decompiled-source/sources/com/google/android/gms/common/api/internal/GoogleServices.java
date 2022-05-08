package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.C1567R;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzp;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleServices.class */
public final class GoogleServices {

    /* renamed from: a */
    private static final Object f6301a = new Object();

    /* renamed from: b */
    private static GoogleServices f6302b;

    /* renamed from: c */
    private final String f6303c;

    /* renamed from: d */
    private final Status f6304d;

    /* renamed from: e */
    private final boolean f6305e;

    /* renamed from: f */
    private final boolean f6306f;

    private GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(C1567R.string.common_google_play_services_unknown_issue));
        r11 = true;
        boolean z = true;
        if (identifier != 0) {
            z = resources.getInteger(identifier) == 0 ? false : z;
            this.f6306f = !z;
        } else {
            this.f6306f = false;
        }
        this.f6305e = z;
        String zzc = zzp.zzc(context);
        String string = zzc == null ? new StringResourceValueReader(context).getString("google_app_id") : zzc;
        if (TextUtils.isEmpty(string)) {
            this.f6304d = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f6303c = null;
            return;
        }
        this.f6303c = string;
        this.f6304d = Status.RESULT_SUCCESS;
    }

    private GoogleServices(String str, boolean z) {
        this.f6303c = str;
        this.f6304d = Status.RESULT_SUCCESS;
        this.f6305e = z;
        this.f6306f = !z;
    }

    /* renamed from: a */
    private static GoogleServices m5921a(String str) {
        GoogleServices googleServices;
        synchronized (f6301a) {
            if (f6302b != null) {
                googleServices = f6302b;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
        }
        return googleServices;
    }

    public static String getGoogleAppId() {
        return m5921a("getGoogleAppId").f6303c;
    }

    public static Status initialize(Context context) {
        Status status;
        Preconditions.checkNotNull(context, "Context must not be null.");
        synchronized (f6301a) {
            if (f6302b == null) {
                f6302b = new GoogleServices(context);
            }
            status = f6302b.f6304d;
        }
        return status;
    }

    public static Status initialize(Context context, String str, boolean z) {
        Status status;
        Preconditions.checkNotNull(context, "Context must not be null.");
        Preconditions.checkNotEmpty(str, "App ID must be nonempty.");
        synchronized (f6301a) {
            if (f6302b != null) {
                GoogleServices googleServices = f6302b;
                if (googleServices.f6303c == null || googleServices.f6303c.equals(str)) {
                    status = Status.RESULT_SUCCESS;
                } else {
                    String str2 = googleServices.f6303c;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 97);
                    sb.append("Initialize was called with two different Google App IDs.  Only the first app ID will be used: '");
                    sb.append(str2);
                    sb.append("'.");
                    status = new Status(10, sb.toString());
                }
                return status;
            }
            GoogleServices googleServices2 = new GoogleServices(str, z);
            f6302b = googleServices2;
            return googleServices2.f6304d;
        }
    }

    public static boolean isMeasurementEnabled() {
        GoogleServices a = m5921a("isMeasurementEnabled");
        return a.f6304d.isSuccess() && a.f6305e;
    }

    public static boolean isMeasurementExplicitlyDisabled() {
        return m5921a("isMeasurementExplicitlyDisabled").f6306f;
    }
}
