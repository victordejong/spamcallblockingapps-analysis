package com.asus.contacts.yellowpage.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.asus.contacts.yellowpage.s;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2874a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f2875b = Build.TYPE.equals("user");
    private static final String[] c = {"0-0", "1-5", "6-10", "11-15", "16-20", "21-25", "26-50", "51-75", "76-100", "101-"};
    private static final String[] d = {"0-0", "1-5", "6-10", "11-15", "16-20", "21-25", "26-50", "51-"};
    private static final String[] e = {"0-0", "1-5", "6-10", "11-15", "16-20", "21-25", "26-30", "31-35", "36-40", "41-45", "46-50", "51-55", "56-60", "61-"};
    private static final String[] f = {"0-0", "1-500", "501-1000", "1001-1500", "1501-2000", "2001-2500", "2501-3000", "3001-3500", "3501-4000", "4001-4500", "4501-5000", "5001-5500", "5501-6000", "6001-6500", "6501-7000", "7001-7500", "7501-8000", "8001-8500", "8501-9000", "9001-9500", "9501-10000", "10001-10500", "10501-11000", "11001-11500", "11501-12000", "12001-12500", "12501-13000", "13001-13500", "13501-14000", "14001-14500", "14501-15000", "15001-"};

    /* renamed from: com.asus.contacts.yellowpage.utils.b$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/b$3.class */
    static final /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2880a = new int[EnumC0081b.a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0056 -> B:34:0x0046). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005a -> B:30:0x003b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x005e -> B:26:0x0031). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0062 -> B:24:0x0027). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0066 -> B:36:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006a -> B:32:0x0013). Please submit an issue!!! */
        static {
            try {
                f2880a[EnumC0081b.f2882a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2880a[EnumC0081b.f2883b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2880a[EnumC0081b.c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2880a[EnumC0081b.d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2880a[EnumC0081b.e - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2880a[EnumC0081b.f - 1] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2880a[EnumC0081b.g - 1] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/b$a.class */
    public static final class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private Context f2881a;

        a(Context context) {
            this.f2881a = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f2881a);
            s.a();
            b.a(this.f2881a, "Service", "status", s.a(this.f2881a));
            b.a(this.f2881a, "Service", "Query Online", b.c[b.a(b.c, defaultSharedPreferences.getInt("key_yellow_page_ga_numof_query_online", 0))]);
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_query_online", 0).commit();
            b.a(this.f2881a, "User Behavior", "Browse Yellow Page", b.d[b.a(b.d, defaultSharedPreferences.getInt("key_yellow_page_ga_numof_browse_yp", 0))]);
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_browse_yp", 0).commit();
            b.a(this.f2881a, "User Behavior", "Browse Detail Page", b.d[b.a(b.d, defaultSharedPreferences.getInt("key_yellow_page_ga_numof_browse_detail", 0))]);
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_browse_detail", 0).commit();
            int i = defaultSharedPreferences.getInt("key_yellow_page_ga_numof_search", 0);
            b.a(this.f2881a, "User Behavior", "Search Times", b.d[b.a(b.d, i)]);
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_search", 0).commit();
            b.a(this.f2881a, "User Setting", "Selected City", b.b(this.f2881a));
            b.a(this.f2881a, "User Behavior", "Search Failed Time", b.e[b.a(b.e, defaultSharedPreferences.getInt("key_yellow_page_ga_numof_fail_search", 0))]);
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_fail_search", 0).commit();
            if (i <= 0) {
                return null;
            }
            b.a(this.f2881a, "User Behavior", "Search Average Time", b.f[b.a(b.f, (int) defaultSharedPreferences.getLong("key_yellow_page_ga_ave_search_time", 0L))]);
            defaultSharedPreferences.edit().putLong("key_yellow_page_ga_ave_search_time", 0L).commit();
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.asus.contacts.yellowpage.utils.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/b$b.class */
    public static final class EnumC0081b extends Enum<EnumC0081b> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f2882a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f2883b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;
        private static final /* synthetic */ int[] h = {f2882a, f2883b, c, d, e, f, g};

        public static int[] a() {
            return (int[]) h.clone();
        }
    }

    static /* synthetic */ int a(String[] strArr, int i) {
        int i2 = 0;
        while (i2 < strArr.length) {
            String[] split = strArr[i2].split("-");
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split.length == 1 ? "-1" : split[1]);
            if ((parseInt <= i && i <= parseInt2) || (parseInt <= i && parseInt2 == -1)) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public static void a(Activity activity, String str) {
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(12, activity, str, true);
    }

    public static void a(Context context) {
        if (f2875b) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Long valueOf = Long.valueOf(defaultSharedPreferences.getLong("key_yellow_page_ga_track_time", 0L));
            if (valueOf.longValue() == 0 || System.currentTimeMillis() - valueOf.longValue() >= 86400000) {
                new a(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                edit.putLong("key_yellow_page_ga_track_time", System.currentTimeMillis());
                edit.commit();
            }
        }
    }

    public static void a(final Context context, final int i, final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.asus.contacts.yellowpage.utils.b.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    switch (AnonymousClass3.f2880a[i - 1]) {
                        case 1:
                            b.a(context, "User Behavior", "Search", str2);
                            b.a(context, "Search Times");
                            return;
                        case 2:
                            String[] b2 = b.b(context, str);
                            b.a(context, TextUtils.isEmpty(b2[2]) ? b2[0] + "_" + b2[1] : b2[0] + "_" + b2[1] + "_" + b2[2], str2, "Browse");
                            b.a(context, "User Event", "Browse Detail Page", (String) null);
                            return;
                        case 3:
                            String[] b3 = b.b(context, str);
                            b.a(context, TextUtils.isEmpty(b3[2]) ? b3[0] + "_" + b3[1] : b3[0] + "_" + b3[1] + "_" + b3[2], str2, "Dial");
                            b.a(context, "User Event", "Dial", (String) null);
                            return;
                        case 4:
                            String[] b4 = b.b(context, str);
                            String str3 = TextUtils.isEmpty(b4[2]) ? b4[0] + "_" + b4[1] : b4[0] + "_" + b4[1] + "_" + b4[2];
                            b.a(context, str3, str2, "Dial");
                            b.a(context, str3, str2, "Dial in BusinessList");
                            b.a(context, "User Event", "Dial", (String) null);
                            b.a(context, "User Event", "Dial in Business List", (String) null);
                            return;
                        case 5:
                            String[] b5 = b.b(context, str);
                            String str4 = TextUtils.isEmpty(b5[2]) ? b5[0] + "_" + b5[1] : b5[0] + "_" + b5[1] + "_" + b5[2];
                            b.a(context, str4, str2, "Dial");
                            b.a(context, str4, str2, "Dial in BusinessDetail");
                            b.a(context, "User Event", "Dial", (String) null);
                            b.a(context, "User Event", "Dial in Business Detail", (String) null);
                            return;
                        case 6:
                            String[] b6 = b.b(context, str);
                            b.a(context, TextUtils.isEmpty(b6[2]) ? b6[0] + "_" + b6[1] : b6[0] + "_" + b6[1] + "_" + b6[2], str2, "Navigation");
                            b.a(context, "User Event", "Navigation", (String) null);
                            return;
                        case 7:
                            String[] b7 = b.b(context, str);
                            b.a(context, TextUtils.isEmpty(b7[2]) ? b7[0] + "_" + b7[1] : b7[0] + "_" + b7[1] + "_" + b7[2], str2, "Browse Web Page");
                            b.a(context, "User Event", "Browse Web Page", (String) null);
                            return;
                        default:
                            Log.d(b.f2874a, "Send user action: type undefined.");
                            return;
                    }
                } catch (Exception e2) {
                    Log.e(b.f2874a, "sendUserAction exception:" + e2.toString());
                }
            }
        }).start();
    }

    public static void a(Context context, String str) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (str.equalsIgnoreCase("Query Online")) {
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_query_online", defaultSharedPreferences.getInt("key_yellow_page_ga_numof_query_online", 0) + 1).commit();
        } else if (str.equalsIgnoreCase("Browse Yellow Page")) {
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_browse_yp", defaultSharedPreferences.getInt("key_yellow_page_ga_numof_browse_yp", 0) + 1).commit();
        } else if (str.equalsIgnoreCase("Browse Detail Page")) {
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_browse_detail", defaultSharedPreferences.getInt("key_yellow_page_ga_numof_browse_detail", 0) + 1).commit();
        } else if (str.equalsIgnoreCase("Search Times")) {
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_search", defaultSharedPreferences.getInt("key_yellow_page_ga_numof_search", 0) + 1).commit();
        } else if (str.equalsIgnoreCase("Search Failed Time")) {
            defaultSharedPreferences.edit().putInt("key_yellow_page_ga_numof_fail_search", defaultSharedPreferences.getInt("key_yellow_page_ga_numof_fail_search", 0) + 1).commit();
        } else {
            Log.d(f2874a, "Cache user behavior: type undefined.");
        }
    }

    public static void a(Context context, String str, long j) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (str.equalsIgnoreCase("Search Average Time")) {
            defaultSharedPreferences.edit().putLong("key_yellow_page_ga_ave_search_time", (defaultSharedPreferences.getLong("key_yellow_page_ga_ave_search_time", 0L) + j) / 2).commit();
        }
    }

    public static void a(final Context context, final String str, final String str2, final String str3) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.asus.contacts.yellowpage.utils.b.2
            final /* synthetic */ Long e = null;

            @Override // java.lang.Runnable
            public final void run() {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(12, context, str, str2, str3, this.e);
            }
        });
    }

    public static String b(Context context) {
        String str = "NOT SELECTED";
        int a2 = c.a(context, "key_yellow_page_location_index");
        if (a2 != 0 && a2 > 0) {
            str = c.b(context, "key_yellow_page_location", "NOT SELECTED");
        }
        return str;
    }

    public static void b(Activity activity, String str) {
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(15, activity, str, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015b  */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] b(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.utils.b.b(android.content.Context, java.lang.String):java.lang.String[]");
    }
}
