package com.android.contacts.socialwidget;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/socialwidget/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final a f2169a = new a();

    public static a a() {
        return f2169a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i) {
        return "SocialWidgetSettings_CONTACT_URI_" + Integer.toString(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, SharedPreferences sharedPreferences) {
        if (!sharedPreferences.getBoolean("SocialWidgetSettings_settings_migrated", false)) {
            Log.i("SocialWidgetSettings", "Migrating widget settings...");
            SharedPreferences.Editor edit = sharedPreferences.edit();
            SharedPreferences sharedPreferences2 = context.getSharedPreferences("WidgetSettings", 0);
            for (String str : sharedPreferences2.getAll().keySet()) {
                String string = sharedPreferences2.getString(str, null);
                if (string != null) {
                    Log.i("SocialWidgetSettings", "Found: " + str + ": " + PhoneCapabilityTester.privacyLogCheck(string));
                    edit.putString("SocialWidgetSettings_" + str, string);
                }
            }
            edit.apply();
            sharedPreferences.edit().putBoolean("SocialWidgetSettings_settings_migrated", true).apply();
        }
    }

    public static void a(Context context, int[] iArr) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        for (int i : iArr) {
            if (Log.isLoggable("SocialWidgetSettings", 3)) {
                Log.d("SocialWidgetSettings", "remove(" + i + ")");
            }
            edit.remove(a(i));
        }
        edit.apply();
    }
}
