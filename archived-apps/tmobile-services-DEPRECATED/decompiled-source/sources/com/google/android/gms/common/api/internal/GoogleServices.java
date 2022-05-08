package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.C1017R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleServices.class */
public final class GoogleServices {

    /* renamed from: d */
    private static final Object f7102d = new Object();
    @GuardedBy

    /* renamed from: e */
    private static GoogleServices f7103e;

    /* renamed from: a */
    private final String f7104a;

    /* renamed from: b */
    private final Status f7105b;

    /* renamed from: c */
    private final boolean f7106c;

    @VisibleForTesting
    @KeepForSdk
    GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(C1017R.string.common_google_play_services_unknown_issue));
        boolean z = false;
        if (identifier != 0) {
            this.f7106c = !(resources.getInteger(identifier) != 0 ? true : z);
        } else {
            this.f7106c = false;
        }
        String a = zzp.m14401a(context);
        String a2 = a == null ? new StringResourceValueReader(context).m14502a("google_app_id") : a;
        if (TextUtils.isEmpty(a2)) {
            this.f7105b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f7104a = null;
            return;
        }
        this.f7104a = a2;
        this.f7105b = Status.f7023j;
    }

    @KeepForSdk
    /* renamed from: a */
    private static GoogleServices m14889a(String str) {
        GoogleServices googleServices;
        synchronized (f7102d) {
            if (f7103e != null) {
                googleServices = f7103e;
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

    @KeepForSdk
    /* renamed from: b */
    public static String m14888b() {
        return m14889a("getGoogleAppId").f7104a;
    }

    @KeepForSdk
    /* renamed from: c */
    public static Status m14887c(Context context) {
        Status status;
        Preconditions.m14522l(context, "Context must not be null.");
        synchronized (f7102d) {
            if (f7103e == null) {
                f7103e = new GoogleServices(context);
            }
            status = f7103e.f7105b;
        }
        return status;
    }

    @KeepForSdk
    /* renamed from: d */
    public static boolean m14886d() {
        return m14889a("isMeasurementExplicitlyDisabled").f7106c;
    }
}
