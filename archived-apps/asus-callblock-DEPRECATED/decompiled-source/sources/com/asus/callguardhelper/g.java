package com.asus.callguardhelper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.preference.PreferenceManager;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import com.asus.updatesdk.BuildConfig;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/g.class */
public final class g {

    /* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/g$a.class */
    public static final class a extends AsyncTask<Void, Void, String> {

        /* renamed from: a  reason: collision with root package name */
        private i f2568a;

        /* renamed from: b  reason: collision with root package name */
        private Context f2569b;
        private String c;

        public a(Context context, String str, i iVar) {
            this.f2569b = context;
            this.f2568a = iVar;
            this.c = str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Void[] voidArr) {
            return g.a(this.f2569b, this.c, this.f2568a);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            Log.d("CallGuardUtils", "mCallBack onPostExecute::" + str2);
            this.f2568a.d(str2);
        }
    }

    public static String a(int i) {
        if (i <= 0) {
            throw new RuntimeException("No placeholders");
        }
        StringBuilder sb = new StringBuilder((i * 2) - 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    public static String a(Context context, i iVar) {
        String str;
        try {
            str = a(context, PreferenceManager.getDefaultSharedPreferences(context).getString("callguard_country_code", context.getResources().getConfiguration().locale.getCountry()), iVar);
        } catch (Exception e) {
            Log.d("CallGuardUtils", "queryVersion::" + e.getMessage());
            str = null;
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r7, java.lang.String r8, com.asus.callguardhelper.i r9) {
        /*
            Method dump skipped, instructions count: 963
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.g.a(android.content.Context, java.lang.String, com.asus.callguardhelper.i):java.lang.String");
    }

    public static String a(String str, int i, boolean z) {
        String str2;
        try {
            str2 = (str + "@") + String.valueOf((z ? 100 : 200) + i);
        } catch (Exception e) {
            e.printStackTrace();
            str2 = str + "@999";
        }
        return str2;
    }

    public static List<String> a(List<String> list) {
        LinkedList linkedList;
        try {
            LinkedList linkedList2 = new LinkedList();
            for (String str : list) {
                String normalizeNumber = PhoneNumberUtils.normalizeNumber(str.split("@")[0]);
                if (normalizeNumber.length() > 8) {
                    normalizeNumber = d(normalizeNumber);
                }
                linkedList2.add(normalizeNumber);
            }
            linkedList = linkedList2;
        } catch (Exception e) {
            Log.d("CallGuardUtils", "phoneNumberFilter::" + e.getMessage());
            linkedList = null;
        }
        return linkedList;
    }

    public static boolean a(Context context) {
        boolean z;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            Log.d("CallGuardUtils", "network is not available");
            z = false;
        } else {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            z = activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.isAvailable();
        }
        return z;
    }

    public static boolean a(String str) {
        boolean z;
        try {
            z = (TextUtils.isEmpty(str) || str.contains("@") || str.contains("%40")) ? false : Patterns.PHONE.matcher(str).matches();
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    private static String b(int i) {
        String str = BuildConfig.FLAVOR;
        for (int i2 = 0; i2 < 24 - i; i2++) {
            str = str + "0";
        }
        return str;
    }

    public static String b(String str) {
        String str2;
        if (str == null) {
            str2 = null;
        } else {
            try {
                str2 = PhoneNumberUtils.normalizeNumber(str);
                if (str2.length() > 8) {
                    str2 = d(str2);
                }
            } catch (Exception e) {
                Log.d("CallGuardUtils", "phoneNumberFilter::" + e.getMessage());
                str2 = null;
            }
        }
        return str2;
    }

    public static boolean b(Context context) {
        boolean z;
        try {
            z = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getNetworkInfo(1).isConnectedOrConnecting();
        } catch (Exception e) {
            Log.d("CallGuardUtils", "isWifiEnable::" + e.getMessage());
            z = false;
        }
        return z;
    }

    public static String c(String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str2 = (String) cls.getMethod("get", String.class).invoke(cls.newInstance(), str);
        } catch (Exception e) {
            Log.d("CallGuardUtils", "getSystemProperty " + e.getMessage());
            str2 = null;
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0038, code lost:
        if (r0[1].equals(r0[1]) != false) goto L_0x003b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(android.content.Context r5) {
        /*
            r0 = 1
            r6 = r0
            r0 = r5
            android.content.SharedPreferences r0 = android.preference.PreferenceManager.getDefaultSharedPreferences(r0)     // Catch: Exception -> 0x0042
            java.lang.String r1 = "newest_engine_version"
            java.lang.String r2 = "1.1.8"
            java.lang.String r0 = r0.getString(r1, r2)     // Catch: Exception -> 0x0042
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)     // Catch: Exception -> 0x0042
            r7 = r0
            java.lang.String r0 = "1.1.8"
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)     // Catch: Exception -> 0x0042
            r5 = r0
            r0 = r7
            r1 = 0
            r0 = r0[r1]     // Catch: Exception -> 0x0042
            r1 = r5
            r2 = 0
            r1 = r1[r2]     // Catch: Exception -> 0x0042
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x0042
            if (r0 == 0) goto L_0x003d
            r0 = r7
            r1 = 1
            r0 = r0[r1]     // Catch: Exception -> 0x0042
            r1 = r5
            r2 = 1
            r1 = r1[r2]     // Catch: Exception -> 0x0042
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x0042
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x003d
        L_0x003b:
            r0 = r6
            return r0
        L_0x003d:
            r0 = 0
            r6 = r0
            goto L_0x003b
        L_0x0042:
            r5 = move-exception
            java.lang.String r0 = "CallGuardUtils"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "isNewestVersion::"
            r2.<init>(r3)
            r2 = r5
            java.lang.String r2 = r2.getMessage()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = r5
            r0.printStackTrace()
            r0 = 0
            r6 = r0
            goto L_0x003b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.g.c(android.content.Context):boolean");
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String d(Context context) {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        try {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            String string = defaultSharedPreferences.getString("device_unique_id", null);
            sb = string;
            if (TextUtils.isEmpty(string)) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                sb2.append(d(Build.SERIAL));
                sb2.append(d(new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()))));
                sb2.append(d(telephonyManager.getDeviceId()));
                sb = sb2.toString() + b(sb2.length());
                defaultSharedPreferences.edit().putString("device_unique_id", sb).apply();
            }
        } catch (Exception e) {
            Log.d("CallGuardUtils", "getCallGuardTestID::" + e.getMessage());
            sb = sb2.toString();
        }
        return sb;
    }

    private static String d(String str) {
        String str2;
        try {
        } catch (Exception e) {
            Log.d("CallGuardUtils", "getSubStringInDigits " + e.getMessage());
        }
        if (!TextUtils.isEmpty(str)) {
            str2 = str.substring(str.length() - 8);
            return str2;
        }
        str2 = BuildConfig.FLAVOR;
        return str2;
    }

    private static boolean e(Context context) {
        boolean z = false;
        try {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            int i = defaultSharedPreferences.getInt("callguard_test_code", new BigDecimal(Math.random() * 100.0d).setScale(0, 4).intValue());
            Log.d("CallGuardUtils", "Lucky :" + i);
            if (!defaultSharedPreferences.contains("callguard_test_code")) {
                defaultSharedPreferences.edit().putInt("callguard_test_code", i).apply();
            }
            int i2 = defaultSharedPreferences.getInt("stage_roll_out_from", 0);
            int i3 = defaultSharedPreferences.getInt("stage_roll_out_to", 0);
            if ((i >= i2 && i < i3) || i == 777) {
                z = true;
            }
        } catch (Exception e) {
            Log.d("CallGuardUtils", "isCallGuardEnable::" + e.getMessage());
        }
        return z;
    }
}
