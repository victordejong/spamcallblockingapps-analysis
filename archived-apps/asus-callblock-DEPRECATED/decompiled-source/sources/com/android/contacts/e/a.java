package com.android.contacts.e;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/e/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f1081a = false;

    /* renamed from: b  reason: collision with root package name */
    private Context f1082b;
    private SharedPreferences c;

    public a(Context context) {
        this.f1082b = context;
    }

    public static boolean a() {
        boolean z = com.asus.contacts.a.a("persist.sys.cta.security", BuildConfig.FLAVOR).equalsIgnoreCase("1");
        Log.d("CTAChecker", "checkPermission needCTAChecker: " + z);
        return z;
    }

    public final boolean b() {
        boolean z = false;
        this.c = PreferenceManager.getDefaultSharedPreferences(this.f1082b);
        if (this.c.getBoolean("cta_checker_AsusContacts", false) || f1081a) {
            f1081a = true;
            z = true;
        } else {
            f1081a = false;
        }
        Log.d("CTAChecker", "checkPermission type: 1, allow: " + z);
        return z;
    }
}
