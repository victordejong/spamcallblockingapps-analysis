package com.android.contacts.simcardmanage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.telecom.PhoneAccountHandle;
import android.telephony.PhoneNumberUtils;
import android.telephony.PhoneStateListener;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.asus.updatesdk.BuildConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static String f2152a = "AsusContactsTelephonyManager";

    /* renamed from: b  reason: collision with root package name */
    private static TelephonyManager f2153b;

    public static int a(String str) {
        int i = 0;
        if (str != null) {
            i = 0;
            if (str.length() > 0) {
                try {
                    i = Integer.parseInt(b(b(str).substring(0, 9)));
                } catch (Exception e) {
                    Log.d(f2152a, e.toString());
                    i = 0;
                }
            }
        }
        return i;
    }

    public static Uri a(int i, Context context) {
        Uri uri;
        try {
            if (a(context)) {
                Log.d(f2152a, "getIccProviderForSingleUri: simIndex = " + i);
                uri = Uri.parse("content://icc/adn/slotId/" + i);
            } else {
                uri = Uri.parse("content://icc/adn");
            }
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            uri = null;
        }
        return uri;
    }

    public static Uri a(long j, Context context) {
        Uri uri;
        try {
            if (a(context)) {
                Log.d(f2152a, "getIccProviderUri: subId = " + j);
                uri = Uri.parse("content://icc/adn/subId/" + j);
            } else {
                uri = Uri.parse("content://icc/adn");
            }
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            uri = null;
        }
        return uri;
    }

    public static Object a(int i) {
        int i2;
        Object[] a2;
        try {
            a2 = a(new Object[]{Integer.valueOf(i - 1)});
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            i2 = -1;
        }
        if (a2 != null) {
            if (a2.length > 0) {
                i2 = a2[0];
                return i2;
            }
        }
        i2 = -1;
        return i2;
    }

    public static String a(Context context, Object obj) {
        String str;
        Object obj2;
        boolean z = true;
        try {
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            str = null;
        }
        if (a(context)) {
            String str2 = BuildConfig.FLAVOR;
            Class<?>[] clsArr = new Class[1];
            TelephonyManager g = g(context);
            try {
                Class<?> cls = Class.forName(g.getClass().getName());
                if (obj instanceof Integer) {
                    clsArr[0] = Integer.TYPE;
                    str2 = "int";
                } else if (obj instanceof Long) {
                    clsArr[0] = Long.TYPE;
                    str2 = "long";
                }
                try {
                    obj2 = cls.getMethod("getVoiceMailNumber", clsArr).invoke(g, obj);
                } catch (NoSuchMethodException e2) {
                    Log.d(f2152a, "Method getSimSerialNumber(" + str2 + " subId) not exist.");
                    obj2 = null;
                    z = false;
                }
                if (z) {
                    str = (String) obj2;
                    return str;
                }
            } catch (ClassNotFoundException e3) {
                e3.printStackTrace();
                throw new Exception("Class Not Found : " + g.getClass().getName());
            }
        }
        str = g(context).getVoiceMailNumber();
        return str;
    }

    public static void a(Context context, PhoneStateListener phoneStateListener) {
        TelephonyManager g = g(context);
        if (g != null) {
            g.listen(phoneStateListener, 32);
        }
    }

    public static boolean a(int i, String str) {
        boolean z;
        String str2 = BuildConfig.FLAVOR;
        Object a2 = a(i);
        Class[] clsArr = new Class[2];
        try {
            try {
                if (a2 instanceof Integer) {
                    clsArr[0] = Integer.TYPE;
                    str2 = "int";
                } else if (a2 instanceof Long) {
                    clsArr[0] = Long.TYPE;
                    str2 = "long";
                } else {
                    str2 = BuildConfig.FLAVOR;
                }
                clsArr[1] = String.class;
            } catch (Exception e) {
                Log.e("PhoneCallDetailsHelper", e.toString());
                z = false;
            }
            try {
                z = ((Boolean) PhoneNumberUtils.class.getMethod("isEmergencyNumber", clsArr).invoke(null, a2, str)).booleanValue();
            } catch (NoSuchMethodException e2) {
                Log.e("PhoneCallDetailsHelper", "Method isEmergencyNumber(" + str2 + " subId, String numberToUse) not exist.");
                z = false;
                return z;
            }
        } catch (NoSuchMethodException e3) {
        }
        return z;
    }

    public static boolean a(Context context) {
        boolean z = false;
        try {
            z = g(context).isMultiSimEnabled();
        } catch (Exception e) {
            Log.d(f2152a, "isMultiSimEnabled(), Exception : " + e.toString());
        }
        return z;
    }

    public static boolean a(Context context, int i) {
        boolean z;
        boolean z2 = true;
        try {
            if (a(context)) {
                TelephonyManager g = g(context);
                try {
                    Class<?> cls = Class.forName(g.getClass().getName());
                    Class<?>[] clsArr = new Class[1];
                    Object[] objArr = new Object[1];
                    Object obj = null;
                    try {
                        clsArr[0] = Integer.TYPE;
                        objArr[0] = Integer.valueOf(i - 1);
                        obj = cls.getMethod("hasIccCard", clsArr).invoke(g, objArr);
                        z2 = true;
                    } catch (NoSuchMethodException e) {
                        Log.d(f2152a, "Method hasIccCard(int slotid) not exist.");
                        z2 = false;
                    }
                    if (z2) {
                        z = ((Boolean) obj).booleanValue();
                    } else {
                        try {
                            clsArr[0] = Long.TYPE;
                            objArr[0] = a(new Object[]{Integer.valueOf(i - 1)})[0];
                            obj = cls.getMethod("hasIccCard", clsArr).invoke(g, objArr);
                        } catch (NoSuchMethodException e2) {
                            Log.d(f2152a, "Method hasIccCard(long slotid) not exist.");
                        }
                        if (z2) {
                            z = ((Boolean) obj).booleanValue();
                        } else {
                            throw new Exception("No matched hasIccCard method found.");
                        }
                    }
                } catch (ClassNotFoundException e3) {
                    e3.printStackTrace();
                    throw new Exception("Class Not Found : " + g.getClass().getName());
                }
            } else {
                z = g(context).hasIccCard();
            }
        } catch (Exception e4) {
            Log.e(f2152a, "hasIccCard, Exception : " + e4.toString());
            z = false;
        }
        return z;
    }

    private static Object[] a(Object[] objArr) {
        boolean z;
        Object obj;
        Object[] objArr2;
        try {
            obj = SubscriptionManager.class.getMethod("getSubId", Integer.TYPE).invoke(null, objArr);
            z = true;
        } catch (NoSuchMethodException e) {
            Log.e(f2152a, "Method getSubId(int subId) not exist.");
            z = false;
            obj = null;
        } catch (Exception e2) {
            Log.e(f2152a, e2.toString());
            z = false;
            obj = null;
        }
        if (z) {
            Object[] objArr3 = new Object[1];
            if (obj instanceof long[]) {
                objArr3[0] = Long.valueOf(((long[]) obj)[0]);
                objArr2 = objArr3;
            } else if (obj instanceof int[]) {
                objArr3[0] = Integer.valueOf(((int[]) obj)[0]);
                objArr2 = objArr3;
            } else {
                objArr3[0] = -1;
                objArr2 = objArr3;
            }
        } else {
            objArr2 = null;
        }
        return objArr2;
    }

    public static int b(Context context) {
        int i = 1;
        try {
            if (!PhoneCapabilityTester.IsUnbundled()) {
                i = g(context).getPhoneCount();
            }
        } catch (Exception e) {
            Log.e(f2152a, "getSupportSimCount, Exception : " + e.toString());
            i = 1;
        }
        return i;
    }

    public static Uri b(long j, Context context) {
        Uri uri;
        try {
            if (a(context)) {
                Log.d(f2152a, "getIccProviderPropUri: subId = " + j);
                uri = Uri.parse("content://icc/prop/subId/" + j);
            } else {
                uri = Uri.parse("content://icc/prop");
            }
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            uri = null;
        }
        return uri;
    }

    public static String b(Context context, int i) {
        String str;
        Object[] a2;
        Object obj;
        boolean z = true;
        try {
        } catch (Exception e) {
            Log.e(f2152a, "getSimSerialNumber, Exception : " + e.toString());
            str = null;
        }
        if (a(context) && (a2 = a(new Object[]{Integer.valueOf(i - 1)})) != null && a2.length > 0) {
            String str2 = BuildConfig.FLAVOR;
            if ((a2[0] instanceof Integer) || (a2[0] instanceof Long)) {
                Class<?>[] clsArr = new Class[1];
                TelephonyManager g = g(context);
                try {
                    Class<?> cls = Class.forName(g.getClass().getName());
                    if (a2[0] instanceof Integer) {
                        clsArr[0] = Integer.TYPE;
                        str2 = "int";
                    } else if (a2[0] instanceof Long) {
                        clsArr[0] = Long.TYPE;
                        str2 = "long";
                    }
                    try {
                        obj = cls.getMethod("getSimSerialNumber", clsArr).invoke(g, a2[0]);
                    } catch (NoSuchMethodException e2) {
                        Log.d(f2152a, "Method getSimSerialNumber(" + str2 + " subId) not exist.");
                        obj = null;
                        z = false;
                    }
                    if (z) {
                        str = (String) obj;
                        return str;
                    }
                } catch (ClassNotFoundException e3) {
                    e3.printStackTrace();
                    throw new Exception("Class Not Found : " + g.getClass().getName());
                }
            }
        }
        str = g(context).getSimSerialNumber();
        return str;
    }

    private static String b(String str) {
        if (str.length() > 1) {
            str = b(str.substring(1, str.length())) + str.charAt(0);
        }
        return str;
    }

    public static int c(Context context, int i) {
        int i2;
        try {
            i2 = a(context) ? g(context).getSimState(i - 1) : g(context).getSimState();
        } catch (Exception e) {
            Log.e(f2152a, "getSimCardState, Exception : " + e.toString());
            i2 = 0;
        }
        return i2;
    }

    public static Object c(Context context) {
        Object obj;
        int i;
        Object obj2;
        int i2;
        int i3 = -1;
        try {
            if (CompatUtils.isMarshmallowCompatible()) {
                obj = Integer.valueOf(h(context));
            } else {
                int i4 = Settings.Global.getInt(context.getContentResolver(), "multi_sim_voice_call", -1);
                Object[] objArr = {0};
                Object[] a2 = a(objArr);
                if (a2 == null || a2.length <= 0) {
                    i = -1;
                    obj2 = -1;
                } else {
                    Object obj3 = a2[0];
                    if (obj3 instanceof Long) {
                        i = ((Long) obj3).intValue();
                        obj2 = obj3;
                    } else {
                        i = ((Integer) obj3).intValue();
                        obj2 = obj3;
                    }
                }
                objArr[0] = 1;
                Object[] a3 = a(objArr);
                if (a3 == null || a3.length <= 0) {
                    i2 = -1;
                } else {
                    i2 = a3[0];
                    i3 = i2 instanceof Long ? ((Long) i2).intValue() : ((Integer) i2).intValue();
                }
                if (i4 <= 0) {
                    obj = i2;
                    if (i > 0) {
                        obj = obj2;
                    }
                } else if (i4 == i) {
                    obj = obj2;
                } else {
                    obj = i2;
                    if (i4 != i3) {
                        obj = i2;
                        if (i > 0) {
                            obj = obj2;
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(f2152a, "getPreferredVoiceSubscription, Exception : " + e.toString());
            Object[] objArr2 = {0};
            Object[] a4 = a(objArr2);
            if (a4 == null || a4.length <= 0) {
                objArr2[0] = 1;
                Object[] a5 = a(objArr2);
                obj = (a5 == null || a5.length <= 0) ? -1 : a5[0];
            } else {
                obj = a4[0];
            }
        }
        return obj;
    }

    public static int d(Context context) {
        int i;
        boolean z = true;
        try {
            if (a(context)) {
                Object c = c(context);
                String str = BuildConfig.FLAVOR;
                Class<?>[] clsArr = new Class[1];
                Object obj = null;
                TelephonyManager g = g(context);
                try {
                    Class<?> cls = Class.forName(g.getClass().getName());
                    if (c instanceof Integer) {
                        clsArr[0] = Integer.TYPE;
                        str = "int";
                    } else if (c instanceof Long) {
                        clsArr[0] = Long.TYPE;
                        str = "long";
                    }
                    try {
                        obj = cls.getMethod("getCurrentPhoneType", clsArr).invoke(g, c);
                    } catch (NoSuchMethodException e) {
                        Log.d(f2152a, "Method getCurrentPhoneTypeMethod(" + str + " subId) not exist.");
                        z = false;
                    }
                    i = z ? ((Integer) obj).intValue() : g(context).getCurrentPhoneType();
                } catch (ClassNotFoundException e2) {
                    e2.printStackTrace();
                    throw new Exception("Class Not Found : " + g.getClass().getName());
                }
            } else {
                i = g(context).getCurrentPhoneType();
            }
        } catch (Exception e3) {
            Log.e(f2152a, e3.toString());
            i = 0;
        }
        return i;
    }

    public static String d(Context context, int i) {
        String str;
        try {
            str = a(context) ? g(context).getDeviceId(i) : g(context).getDeviceId();
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            str = null;
        }
        return str;
    }

    public static String e(Context context) {
        return g(context).getDeviceSoftwareVersion();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(android.content.Context r7, int r8) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.b.e(android.content.Context, int):boolean");
    }

    public static String f(Context context) {
        String simOperator;
        Class<?> cls;
        Object obj;
        boolean z = true;
        if (a(context)) {
            Object[] objArr = {c(context)};
            String str = BuildConfig.FLAVOR;
            Class<?>[] clsArr = new Class[1];
            TelephonyManager g = g(context);
            try {
                cls = Class.forName(g.getClass().getName());
            } catch (ClassNotFoundException e) {
                Log.e(f2152a, e.toString());
                cls = null;
            }
            if (objArr[0] instanceof Integer) {
                clsArr[0] = Integer.TYPE;
                str = "int";
            } else if (objArr[0] instanceof Long) {
                clsArr[0] = Long.TYPE;
                str = "long";
            }
            try {
                obj = cls.getMethod("getSimOperator", clsArr).invoke(g, objArr[0]);
            } catch (IllegalAccessException e2) {
                Log.e(f2152a, e2.toString());
                obj = null;
                z = false;
            } catch (NoSuchMethodException e3) {
                Log.e(f2152a, "Method getSimOperator(" + str + " subId) not exist.");
                obj = null;
                z = false;
            } catch (Exception e4) {
                Log.e(f2152a, e4.toString());
                obj = null;
                z = false;
            }
            if (z) {
                simOperator = (String) obj;
                return simOperator;
            }
        }
        simOperator = g(context).getSimOperator();
        return simOperator;
    }

    public static String f(Context context, int i) {
        String str;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if (i == 1) {
                String string = Settings.Global.getString(contentResolver, "multi_sim_one_slot_name");
                str = string;
                if (string == null) {
                    str = "SIM1";
                }
            } else {
                String string2 = Settings.Global.getString(contentResolver, "multi_sim_two_slot_name");
                str = string2;
                if (string2 == null) {
                    str = "SIM2";
                }
            }
        } catch (Exception e) {
            Log.w("AsusSimContactsManager", "read Settings.Global Fail");
            str = i == 1 ? "SIM1" : "SIM2";
        }
        return str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0018 -> B:5:0x0013). Please submit an issue!!! */
    private static TelephonyManager g(Context context) {
        if (f2153b == null) {
            try {
                f2153b = (TelephonyManager) context.getSystemService("phone");
            } catch (Exception e) {
                Log.d(f2152a, "Fail to get TelephonyManager, Exception : " + e.toString());
            }
        }
        return f2153b;
    }

    public static String g(Context context, int i) {
        String str;
        Object[] a2;
        Object obj;
        boolean z = true;
        try {
        } catch (Exception e) {
            Log.e(f2152a, e.toString());
            str = null;
        }
        if (a(context) && (a2 = a(new Object[]{Integer.valueOf(i)})) != null && a2.length > 0) {
            String str2 = BuildConfig.FLAVOR;
            if ((a2[0] instanceof Integer) || (a2[0] instanceof Long)) {
                Class<?>[] clsArr = new Class[1];
                TelephonyManager g = g(context);
                try {
                    Class<?> cls = Class.forName(g.getClass().getName());
                    if (a2[0] instanceof Integer) {
                        clsArr[0] = Integer.TYPE;
                        str2 = "int";
                    } else if (a2[0] instanceof Long) {
                        clsArr[0] = Long.TYPE;
                        str2 = "long";
                    }
                    try {
                        obj = cls.getMethod("getSubscriberId", clsArr).invoke(g, a2[0]);
                    } catch (NoSuchMethodException e2) {
                        Log.d(f2152a, "Method getSubscriberId(" + str2 + " subId) not exist.");
                        obj = null;
                        z = false;
                    }
                    if (z) {
                        str = (String) obj;
                        return str;
                    }
                } catch (ClassNotFoundException e3) {
                    e3.printStackTrace();
                    throw new Exception("Class Not Found : " + g.getClass().getName());
                }
            }
        }
        str = g(context).getSubscriberId();
        return str;
    }

    private static int h(Context context) {
        int i;
        String str = "-1";
        try {
            PhoneAccountHandle preferredVoiceCallAccountHandle = TelecomUtil.getPreferredVoiceCallAccountHandle(context);
            String str2 = "-1";
            if (preferredVoiceCallAccountHandle != null) {
                str2 = "-1";
                if (!CallUtil.isUriNumber(preferredVoiceCallAccountHandle.getId())) {
                    str2 = preferredVoiceCallAccountHandle.getId();
                }
            }
            String str3 = str2;
            if ("-1".equals(str2)) {
                if (PhoneCapabilityTester.isSimActive(context, 1)) {
                    str3 = h(context, 0).getId();
                } else {
                    str3 = str2;
                    if (PhoneCapabilityTester.isSimActive(context, 2)) {
                        str3 = h(context, 1).getId();
                    }
                }
            }
            str = str3;
            i = Integer.parseInt(str3);
        } catch (NumberFormatException e) {
            if (str.equals(b(context, 1))) {
                i = ((Integer) a(1)).intValue();
            } else {
                if (str.equals(b(context, 2))) {
                    i = ((Integer) a(2)).intValue();
                }
                i = -1;
            }
        } catch (Exception e2) {
            Log.e(f2152a, "getPreferredVoiceSubIdforM, Exception : " + e2.toString());
            i = -1;
        }
        return i;
    }

    public static PhoneAccountHandle h(Context context, int i) {
        PhoneAccountHandle phoneAccountHandle;
        try {
            if (i < 0) {
                Log.d(f2152a, "[getSimCardPhoneAccountHandle] subscription < 0");
                phoneAccountHandle = null;
            } else {
                List<PhoneAccountHandle> callCapablePhoneAccounts = TelecomUtil.getCallCapablePhoneAccounts(context);
                if (callCapablePhoneAccounts != null) {
                    Log.d(f2152a, "[getSimCardPhoneAccountHandle] accountHandles size = " + callCapablePhoneAccounts.size());
                    for (int i2 = 0; i2 < callCapablePhoneAccounts.size(); i2++) {
                        PhoneAccountHandle phoneAccountHandle2 = callCapablePhoneAccounts.get(i2);
                        phoneAccountHandle = phoneAccountHandle2;
                        if (i == a.a(phoneAccountHandle2)) {
                            break;
                        }
                    }
                    Log.d(f2152a, "[getSimCardPhoneAccountHandle] Can't find PhoneAccountHandle for slot:" + i);
                } else {
                    Log.d(f2152a, "[getSimCardPhoneAccountHandle] accountHandles is null");
                }
                phoneAccountHandle = null;
            }
        } catch (Exception e) {
            Log.d(f2152a, "[getSimCardPhoneAccountHandle] PhoneAccountHandle is null, Exception : " + e.toString());
            phoneAccountHandle = null;
        }
        return phoneAccountHandle;
    }

    public static String i(Context context, int i) {
        String simOperator;
        Object[] a2;
        Class<?> cls;
        Object obj;
        boolean z = true;
        if (a(context) && (a2 = a(new Object[]{Integer.valueOf(i)})) != null && a2.length > 0) {
            String str = BuildConfig.FLAVOR;
            Class<?>[] clsArr = new Class[1];
            TelephonyManager g = g(context);
            try {
                cls = Class.forName(g.getClass().getName());
            } catch (ClassNotFoundException e) {
                Log.e(f2152a, e.toString());
                cls = null;
            }
            if (a2[0] instanceof Integer) {
                clsArr[0] = Integer.TYPE;
                str = "int";
            } else if (a2[0] instanceof Long) {
                clsArr[0] = Long.TYPE;
                str = "long";
            }
            try {
                obj = cls.getMethod("getSimOperator", clsArr).invoke(g, a2[0]);
            } catch (IllegalAccessException e2) {
                Log.e(f2152a, e2.toString());
                obj = null;
                z = false;
            } catch (NoSuchMethodException e3) {
                Log.e(f2152a, "Method getSimOperator(" + str + " subId) not exist.");
                obj = null;
                z = false;
            } catch (Exception e4) {
                Log.e(f2152a, e4.toString());
                obj = null;
                z = false;
            }
            if (z) {
                simOperator = (String) obj;
                return simOperator;
            }
        }
        simOperator = g(context).getSimOperator();
        return simOperator;
    }
}
