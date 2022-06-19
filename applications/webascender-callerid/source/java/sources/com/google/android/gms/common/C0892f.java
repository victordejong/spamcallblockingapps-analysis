package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0938t0;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.common.util.C0968j;
/* renamed from: com.google.android.gms.common.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f.class */
public class C0892f {

    /* renamed from: a */
    public static final int f3472a = C0893h.f3474a;

    /* renamed from: b */
    private static final C0892f f3473b = new C0892f();

    C0892f() {
    }

    /* renamed from: h */
    public static C0892f m3482h() {
        return f3473b;
    }

    /* renamed from: o */
    private static String m3475o(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f3472a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(C0950c.m3200a(context).m3205e(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void m3489a(Context context) {
        C0893h.m3474a(context);
    }

    /* renamed from: b */
    public int m3488b(Context context) {
        return C0893h.m3472c(context);
    }

    @Deprecated
    /* renamed from: c */
    public Intent m3487c(int i) {
        return m3486d(null, i, null);
    }

    /* renamed from: d */
    public Intent m3486d(Context context, int i, String str) {
        if (i == 1 || i == 2) {
            return (context == null || !C0968j.m3154f(context)) ? C0938t0.m3241c("com.google.android.gms", m3475o(context, str)) : C0938t0.m3243a();
        } else if (i == 3) {
            return C0938t0.m3242b("com.google.android.gms");
        } else {
            return null;
        }
    }

    /* renamed from: e */
    public PendingIntent m3485e(Context context, int i, int i2) {
        return m3484f(context, i, i2, null);
    }

    /* renamed from: f */
    public PendingIntent m3484f(Context context, int i, int i2, String str) {
        Intent m3486d = m3486d(context, i, str);
        if (m3486d == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, m3486d, 134217728);
    }

    /* renamed from: g */
    public String m3483g(int i) {
        return C0893h.m3471d(i);
    }

    /* renamed from: i */
    public int m3481i(Context context) {
        return m3480j(context, f3472a);
    }

    /* renamed from: j */
    public int m3480j(Context context, int i) {
        int m3467h = C0893h.m3467h(context, i);
        int i2 = m3467h;
        if (C0893h.m3466i(context, m3467h)) {
            i2 = 18;
        }
        return i2;
    }

    /* renamed from: k */
    public boolean m3479k(Context context, int i) {
        return C0893h.m3466i(context, i);
    }

    /* renamed from: l */
    public boolean m3478l(Context context, String str) {
        return C0893h.m3461n(context, str);
    }

    /* renamed from: m */
    public boolean m3477m(int i) {
        return C0893h.m3464k(i);
    }

    /* renamed from: n */
    public void m3476n(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        C0893h.m3473b(context, i);
    }
}
