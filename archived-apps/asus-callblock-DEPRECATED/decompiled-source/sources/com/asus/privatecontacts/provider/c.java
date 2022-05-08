package com.asus.privatecontacts.provider;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.asus.privatecontacts.b.b;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap<String, Integer> f3071a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f3072b = c.class.getSimpleName();

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        f3071a = hashMap;
        hashMap.put("key_always_block_calls", 1);
        f3071a.put("key_hide_caller_number", 2);
        f3071a.put("key_custom_profile_switch", 3);
        f3071a.put("key_custom_profile_name", 4);
        f3071a.put("key_custom_profile_photo", 4);
        f3071a.put("key_custom_profile_phone", 4);
        f3071a.put("key_custom_profile_phone_category", 4);
    }

    public static void a(Context context, int i) {
        try {
            context.getSharedPreferences("private_contacts_settings", 0).edit().putInt("key_has_asus_message", i).commit();
        } catch (Exception e) {
            Log.d(f3072b, "Failed to setHasAsusMessage...");
            e.printStackTrace();
        }
    }

    public static boolean a() {
        return false;
    }

    public static boolean a(Context context) {
        return context.getSharedPreferences("private_contacts_settings", 0).getBoolean("key_hide_caller_number", false);
    }

    public static boolean a(Context context, Uri uri) {
        boolean z = false;
        try {
            SharedPreferences.Editor edit = context.getSharedPreferences("private_contacts_pin", 0).edit();
            if (uri != null) {
                edit.putString("key_taken_photo_uri", uri.toString()).commit();
            } else {
                edit.remove("key_taken_photo_uri").commit();
            }
            z = true;
        } catch (Exception e) {
            Log.d(f3072b, "Failed to insert the taken photo uri...");
            e.printStackTrace();
        }
        return z;
    }

    public static boolean a(Context context, String str) {
        boolean z = false;
        synchronized (c.class) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("private_call_logs", 0);
                int i = sharedPreferences.getInt("key_call_number_counts", 0);
                try {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(String.valueOf(i + 1), str);
                    edit.putInt("key_call_number_counts", i + 1).commit();
                    Log.d(f3072b, "count: " + (i + 1) + ", number: " + b.b(str));
                    z = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(Context context, String str, String str2, String str3, String str4) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("private_contacts_settings", 0);
        String string = sharedPreferences.getString("key_custom_profile_name", context.getResources().getString(2131755972));
        String string2 = sharedPreferences.getString("key_custom_profile_photo", null);
        String string3 = sharedPreferences.getString("key_custom_profile_phone", context.getResources().getString(2131755972));
        String string4 = sharedPreferences.getString("key_custom_profile_phone_category", context.getResources().getString(2131755971));
        Log.d(f3072b, "photoUri:" + str2 + " oldPhoto:" + string2);
        try {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (str != null && !string.equals(str)) {
                edit.putString("key_custom_profile_name", str);
            }
            if (str2 != null && !str2.equals(string2)) {
                edit.putString("key_custom_profile_photo", str2);
            }
            if (str3 != null && !string3.equals(str3)) {
                edit.putString("key_custom_profile_phone", str3);
            }
            if (str4 != null && !string4.equals(str4)) {
                edit.putString("key_custom_profile_phone_category", str4);
            }
            edit.commit();
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    public static boolean a(PreferenceManager preferenceManager) {
        boolean z = false;
        try {
            preferenceManager.setSharedPreferencesName("private_contacts_settings");
            preferenceManager.setSharedPreferencesMode(0);
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    public static boolean b(Context context) {
        return context.getSharedPreferences("private_contacts_settings", 0).getBoolean("key_custom_profile_switch", false);
    }

    public static boolean b(Context context, String str) {
        boolean z = false;
        try {
            context.getSharedPreferences("private_contacts_pin", 0).edit().putString("key_private_pin", str).commit();
            z = true;
        } catch (Exception e) {
            Log.d(f3072b, "Failed to set private pin...");
            e.printStackTrace();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static HashMap<String, String> c(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("private_contacts_settings", 0);
        String string = sharedPreferences.getString("key_custom_profile_name", context.getResources().getString(2131755972));
        String string2 = sharedPreferences.getString("key_custom_profile_photo", null);
        String string3 = sharedPreferences.getString("key_custom_profile_phone", context.getResources().getString(2131755972));
        String string4 = sharedPreferences.getString("key_custom_profile_phone_category", context.getResources().getString(2131755971));
        HashMap<String, String> hashMap = new HashMap<>();
        Log.d(f3072b, "Custom photo uri:" + string2);
        hashMap.put("key_custom_profile_name", string);
        hashMap.put("key_custom_profile_photo", string2);
        hashMap.put("key_custom_profile_phone", string3);
        hashMap.put("key_custom_profile_phone_category", string4);
        return hashMap;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009b -> B:18:0x0077). Please submit an issue!!! */
    public static ArrayList<String> d(Context context) {
        ArrayList<String> arrayList;
        synchronized (c.class) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("private_call_logs", 0);
                arrayList = new ArrayList<>();
                try {
                    int i = sharedPreferences.getInt("key_call_number_counts", 0);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    for (int i2 = 0; i2 < i; i2++) {
                        String string = sharedPreferences.getString(String.valueOf(i2 + 1), BuildConfig.FLAVOR);
                        if (!TextUtils.isEmpty(string) && !arrayList.contains(string)) {
                            arrayList.add(string);
                        }
                        edit = edit.remove(String.valueOf(i2 + 1));
                    }
                    edit.putInt("key_call_number_counts", 0).commit();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Log.d(f3072b, "list size: " + arrayList.size());
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public static boolean e(Context context) {
        boolean z = false;
        if (context.getSharedPreferences("private_contacts_pin", 0).getString("key_private_pin", null) != null) {
            z = true;
        }
        return z;
    }

    public static String f(Context context) {
        return context.getSharedPreferences("private_contacts_pin", 0).getString("key_private_pin", null);
    }

    public static boolean g(Context context) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("private_contacts_pin", 0);
        try {
            sharedPreferences.edit().putInt("key_try_count", sharedPreferences.getInt("key_try_count", 0) + 1).commit();
            z = true;
        } catch (Exception e) {
            Log.d(f3072b, "Failed to increase try count...");
            e.printStackTrace();
        }
        return z;
    }

    public static boolean h(Context context) {
        boolean z = false;
        try {
            context.getSharedPreferences("private_contacts_pin", 0).edit().putInt("key_try_count", 0).commit();
            z = true;
        } catch (Exception e) {
            Log.d(f3072b, "Failed to increase try count...");
            e.printStackTrace();
        }
        return z;
    }

    public static int i(Context context) {
        return context.getSharedPreferences("private_contacts_pin", 0).getInt("key_try_count", 0);
    }

    public static Uri j(Context context) {
        Uri uri = null;
        String string = context.getSharedPreferences("private_contacts_pin", 0).getString("key_taken_photo_uri", null);
        if (string != null) {
            uri = Uri.parse(string);
        }
        return uri;
    }

    public static int k(Context context) {
        return context.getSharedPreferences("private_contacts_settings", 0).getInt("key_has_asus_message", 0);
    }
}
