package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C0944j;
/* renamed from: com.google.android.gms.measurement.internal.k4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k4.class */
public final class C1535k4 {
    /* renamed from: a */
    public static String m1573a(Context context) {
        String str;
        try {
            str = context.getResources().getResourcePackageName(C0944j.f3569a);
        } catch (Resources.NotFoundException e) {
            str = context.getPackageName();
        }
        return str;
    }

    /* renamed from: b */
    public static final String m1572b(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier(str, "string", str2);
        String str3 = null;
        if (identifier != 0) {
            try {
                str3 = resources.getString(identifier);
            } catch (Resources.NotFoundException e) {
            }
        }
        return str3;
    }
}
