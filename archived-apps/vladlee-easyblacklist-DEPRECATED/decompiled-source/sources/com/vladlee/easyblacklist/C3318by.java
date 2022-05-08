package com.vladlee.easyblacklist;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Build;
import android.provider.BaseColumns;
import android.provider.Telephony;
import android.util.Pair;
import androidx.p043e.p045b.C0825b;
import androidx.p043e.p045b.C0826c;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.vladlee.easyblacklist.by */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/by.class */
public final class C3318by {

    /* renamed from: com.vladlee.easyblacklist.by$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/by$a.class */
    public static final class C3319a implements BaseColumns {

        /* renamed from: a */
        public static final Uri f19425a = Uri.parse("content://com.vladlee.easyblacklist.DataProvider/callsms");
    }

    /* renamed from: com.vladlee.easyblacklist.by$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/by$b.class */
    public static final class C3320b implements BaseColumns {

        /* renamed from: a */
        public static final Uri f19426a = Uri.parse("content://com.vladlee.easyblacklist.DataProvider/mutelist");
    }

    /* renamed from: com.vladlee.easyblacklist.by$c */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/by$c.class */
    public static final class C3321c implements BaseColumns {

        /* renamed from: a */
        public static final Uri f19427a = Uri.parse("content://com.vladlee.easyblacklist.DataProvider/phones");
    }

    /* renamed from: com.vladlee.easyblacklist.by$d */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/by$d.class */
    public static final class C3322d implements BaseColumns {

        /* renamed from: a */
        public static final Uri f19428a = Uri.parse("content://sms");
    }

    /* renamed from: com.vladlee.easyblacklist.by$e */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/by$e.class */
    public static final class C3323e implements BaseColumns {

        /* renamed from: a */
        public static final Uri f19429a = Uri.parse("content://com.vladlee.easyblacklist.DataProvider/whitelist");
    }

    /* renamed from: a */
    private static Pair<String, String> m198a(Context context, String str, boolean z) {
        return new Pair<>(str, C3391ed.m89a(context, str, z) ? "true" : "false");
    }

    /* renamed from: a */
    public static ArrayList<String> m196a(Uri uri, Context context) {
        Cursor query = context.getContentResolver().query(uri, new String[]{"_id", "phone"}, null, null, null);
        ArrayList<String> arrayList = new ArrayList<>();
        if (query != null) {
            while (query.moveToNext()) {
                arrayList.add(query.getString(query.getColumnIndex("phone")));
            }
            query.close();
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m203a(Context context) {
        ArrayList<String> b = m192b(context);
        for (int i = 0; i < b.size(); i++) {
            String str = b.get(i);
            if (!str.contains("?")) {
                String a = C3307bs.m246a(context, str);
                if (!str.equals(a)) {
                    m183c(context, str);
                    m201a(context, a);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m202a(Context context, long j) {
        context.getContentResolver().delete(C3321c.f19427a, "contact_id = ?", new String[]{String.valueOf(j)});
    }

    /* renamed from: a */
    public static void m201a(Context context, String str) {
        ContentValues contentValues = new ContentValues();
        String a = C3307bs.m246a(context, str);
        if (a != null && !m165j(context, a)) {
            contentValues.put("phone", a);
            contentValues.put("phone_token", a.toLowerCase());
            contentValues.put("display_name", C3311bt.m229a(context).m213d(context, a));
            Long a2 = C3311bt.m229a(context).m228a(context, a);
            if (a2 != null) {
                contentValues.put("contact_id", a2);
            } else {
                contentValues.putNull("contact_id");
            }
            context.getContentResolver().insert(C3321c.f19427a, contentValues);
        }
    }

    /* renamed from: a */
    public static void m200a(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.vladlee.easyblacklist.Settings", 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    /* renamed from: a */
    public static void m199a(Context context, String str, String str2, long j, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("phone", str);
        contentValues.put("message", str2);
        contentValues.put("time", Long.valueOf(j));
        contentValues.put("type", Integer.valueOf(i));
        context.getContentResolver().insert(C3319a.f19425a, contentValues);
    }

    /* renamed from: a */
    public static void m197a(Context context, ArrayList<String> arrayList) {
        ArrayList<String> a = C3307bs.m243a(context, arrayList);
        a.removeAll(m192b(context));
        if (a.size() > 0) {
            ContentValues[] contentValuesArr = new ContentValues[a.size()];
            for (int i = 0; i < a.size(); i++) {
                String str = a.get(i);
                contentValuesArr[i] = new ContentValues();
                contentValuesArr[i].put("phone", str);
                contentValuesArr[i].put("phone_token", a.get(i).toLowerCase());
                contentValuesArr[i].put("display_name", C3311bt.m229a(context).m213d(context, str));
                Long a2 = C3311bt.m229a(context).m228a(context, str);
                if (a2 != null) {
                    contentValuesArr[i].put("contact_id", a2);
                } else {
                    contentValuesArr[i].putNull("contact_id");
                }
            }
            context.getContentResolver().bulkInsert(C3321c.f19427a, contentValuesArr);
        }
    }

    /* renamed from: a */
    public static void m195a(Uri uri, Context context, long j) {
        context.getContentResolver().delete(uri, "contact_id = ?", new String[]{String.valueOf(j)});
    }

    /* renamed from: a */
    public static void m194a(Uri uri, Context context, String str) {
        ContentValues contentValues = new ContentValues();
        String a = C3307bs.m246a(context, str);
        if (!m182c(uri, context, a)) {
            contentValues.put("phone", a);
            contentValues.put("display_name", C3311bt.m229a(context).m213d(context, a));
            Long a2 = C3311bt.m229a(context).m228a(context, a);
            if (a2 != null) {
                contentValues.put("contact_id", a2);
            } else {
                contentValues.putNull("contact_id");
            }
            context.getContentResolver().insert(uri, contentValues);
        }
    }

    /* renamed from: a */
    public static void m193a(Uri uri, Context context, ArrayList<String> arrayList) {
        ArrayList<String> a = C3307bs.m243a(context, arrayList);
        a.removeAll(m196a(uri, context));
        if (a.size() > 0) {
            ContentValues[] contentValuesArr = new ContentValues[a.size()];
            for (int i = 0; i < a.size(); i++) {
                String str = a.get(i);
                contentValuesArr[i] = new ContentValues();
                contentValuesArr[i].put("phone", str);
                contentValuesArr[i].put("display_name", C3311bt.m229a(context).m213d(context, str));
                Long a2 = C3311bt.m229a(context).m228a(context, str);
                if (a2 != null) {
                    contentValuesArr[i].put("contact_id", a2);
                } else {
                    contentValuesArr[i].putNull("contact_id");
                }
            }
            context.getContentResolver().bulkInsert(uri, contentValuesArr);
        }
    }

    /* renamed from: b */
    public static C0826c<Cursor> m188b(Uri uri, Context context) {
        return new C0825b(context, uri, new String[]{"_id", "phone", "contact_id"}, null, null, "display_name ASC GROUP BY display_name");
    }

    /* renamed from: b */
    public static String m189b(Context context, String str, String str2) {
        return context.getSharedPreferences("com.vladlee.easyblacklist.Settings", 0).getString(str, str2);
    }

    /* renamed from: b */
    public static ArrayList<String> m192b(Context context) {
        Cursor query = context.getContentResolver().query(C3321c.f19427a, new String[]{"_id", "phone"}, "phone IS NOT NULL", null, null);
        ArrayList<String> arrayList = new ArrayList<>();
        if (query != null) {
            while (query.moveToNext()) {
                arrayList.add(query.getString(query.getColumnIndex("phone")));
            }
            query.close();
        }
        return arrayList;
    }

    /* renamed from: b */
    public static void m190b(Context context, String str) {
        ContentValues contentValues = new ContentValues();
        if (!m165j(context, str)) {
            contentValues.put("phone", str);
            contentValues.put("phone_token", str);
            contentValues.put("display_name", str.replace("?", ""));
            context.getContentResolver().insert(C3321c.f19427a, contentValues);
        }
    }

    /* renamed from: b */
    public static void m187b(Uri uri, Context context, String str) {
        context.getContentResolver().delete(uri, "phone = ?", new String[]{C3307bs.m246a(context, str)});
    }

    /* renamed from: b */
    public static void m186b(Uri uri, Context context, ArrayList<String> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            m187b(uri, context, arrayList.get(i));
        }
    }

    /* renamed from: b */
    public static boolean m191b(Context context, long j) {
        boolean z = false;
        z = false;
        Cursor query = context.getContentResolver().query(C3321c.f19427a, new String[]{"_id", "contact_id"}, "contact_id = ?", new String[]{String.valueOf(j)}, null);
        if (query != null) {
            if (query.getCount() > 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }

    /* renamed from: c */
    public static int m185c(Context context) {
        int i;
        Cursor query = context.getContentResolver().query(C3321c.f19427a, new String[]{"_id"}, "phone IS NOT NULL OR filter IS NOT NULL", null, null);
        if (query != null) {
            i = query.getCount();
            query.close();
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: c */
    public static int m184c(Context context, long j) {
        int i = 0;
        Cursor query = context.getContentResolver().query(C3322d.f19428a, new String[]{"_id"}, "thread_id = ?", new String[]{String.valueOf(j)}, null);
        if (query != null) {
            i = query.getCount();
            query.close();
        }
        return i;
    }

    /* renamed from: c */
    public static void m183c(Context context, String str) {
        context.getContentResolver().delete(C3321c.f19427a, "phone = ?", new String[]{C3307bs.m246a(context, str)});
    }

    /* renamed from: c */
    public static boolean m182c(Uri uri, Context context, String str) {
        boolean z = false;
        z = false;
        Cursor query = context.getContentResolver().query(uri, new String[]{"_id", "phone"}, "phone = ?", new String[]{str}, null);
        if (query != null) {
            if (query.getCount() > 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }

    /* renamed from: d */
    public static C3313bv m180d(Context context, long j) {
        Uri uri = C3322d.f19428a;
        boolean z = false;
        C3313bv bvVar = new C3313bv();
        Cursor query = context.getContentResolver().query(uri, new String[]{"thread_id", "address", "body", "date", "read"}, "thread_id = ?", new String[]{String.valueOf(j)}, "date DESC LIMIT 1");
        if (query != null) {
            if (query.moveToNext()) {
                bvVar.f19405a = Long.valueOf(query.getLong(query.getColumnIndex("thread_id")));
                bvVar.f19406b = query.getString(query.getColumnIndex("address"));
                bvVar.f19408d = query.getString(query.getColumnIndex("body"));
                bvVar.f19409e = query.getLong(query.getColumnIndex("date"));
                if (query.getInt(query.getColumnIndex("read")) != 0) {
                    z = true;
                }
                bvVar.f19410f = z;
            }
            query.close();
        }
        return bvVar;
    }

    /* renamed from: d */
    public static void m181d(Context context) {
        if (!m170h(context)) {
            ContentValues contentValues = new ContentValues();
            contentValues.putNull("phone");
            contentValues.putNull("phone_token");
            contentValues.putNull("filter");
            contentValues.put("display_name", "");
            context.getContentResolver().insert(C3321c.f19427a, contentValues);
        }
    }

    /* renamed from: d */
    public static boolean m179d(Context context, String str) {
        boolean z = false;
        z = false;
        Cursor query = context.getContentResolver().query(C3321c.f19427a, new String[]{"_id", "phone"}, "phone LIKE ?", new String[]{"%" + str.toLowerCase()}, null);
        if (query != null) {
            if (query.getCount() != 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }

    /* renamed from: e */
    public static long m176e(Context context, String str) {
        long k = m163k(context, str);
        return k != 0 ? k : m163k(context, C3307bs.m246a(context, str));
    }

    /* renamed from: e */
    public static void m178e(Context context) {
        if (!m168i(context)) {
            ContentValues contentValues = new ContentValues();
            contentValues.putNull("phone");
            contentValues.put("time", Long.valueOf(System.currentTimeMillis() + 864000000));
            contentValues.put("type", (Integer) (-1));
            context.getContentResolver().insert(C3319a.f19425a, contentValues);
        }
    }

    /* renamed from: e */
    public static void m177e(Context context, long j) {
        C3313bv d = m180d(context, j);
        Uri uri = C3322d.f19428a;
        String[] strArr = {String.valueOf(j)};
        context.getContentResolver().delete(uri, "thread_id = ?", strArr);
        if (d.f19405a == null && Build.VERSION.SDK_INT >= 19) {
            context.getContentResolver().delete(Telephony.Mms.CONTENT_URI, "thread_id = ?", strArr);
        }
    }

    /* renamed from: f */
    public static void m175f(Context context) {
        context.getContentResolver().delete(C3321c.f19427a, "phone IS NULL AND filter IS NULL", null);
    }

    /* renamed from: f */
    public static void m174f(Context context, long j) {
        context.getContentResolver().delete(C3319a.f19425a, "_id = ?", new String[]{String.valueOf(j)});
    }

    /* renamed from: f */
    public static void m173f(Context context, String str) {
        Uri uri = C3322d.f19428a;
        ContentValues contentValues = new ContentValues();
        contentValues.put("read", (Integer) 1);
        context.getContentResolver().update(uri, contentValues, "address = ? AND read <> ?", new String[]{str, "1"});
        if (str.startsWith("+")) {
            String replace = str.replace("+", "");
            contentValues.put("read", (Integer) 1);
            context.getContentResolver().update(uri, contentValues, "address = ? AND read <> ?", new String[]{replace, "1"});
        }
    }

    /* renamed from: g */
    public static String m171g(Context context, String str) {
        String str2 = str.split(" ")[0];
        r9 = null;
        String str3 = null;
        if (str2 != null) {
            str3 = null;
            if (str2.length() > 0) {
                Cursor query = context.getContentResolver().query(Uri.parse("content://mms-sms/canonical-addresses"), new String[]{"address"}, "_id = ?", new String[]{str2}, null);
                str3 = null;
                if (query != null) {
                    if (query.moveToFirst()) {
                        str3 = query.getString(query.getColumnIndex("address"));
                    }
                    query.close();
                }
            }
        }
        return str3;
    }

    /* renamed from: g */
    public static void m172g(Context context) {
        context.getContentResolver().delete(C3319a.f19425a, "phone IS NULL AND type = ?", new String[]{"-1"});
    }

    /* renamed from: h */
    public static void m169h(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.vladlee.easyblacklist.Settings", 0).edit();
        edit.putInt(str, 0);
        edit.commit();
    }

    /* renamed from: h */
    public static boolean m170h(Context context) {
        Cursor query = context.getContentResolver().query(C3321c.f19427a, new String[]{"_id"}, "phone IS NULL AND filter IS NULL", null, null);
        boolean z = false;
        z = false;
        if (query != null) {
            if (query.getCount() > 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }

    /* renamed from: i */
    public static int m167i(Context context, String str) {
        return context.getSharedPreferences("com.vladlee.easyblacklist.Settings", 0).getInt(str, 0);
    }

    /* renamed from: i */
    public static boolean m168i(Context context) {
        Cursor query = context.getContentResolver().query(C3319a.f19425a, new String[]{"_id"}, "phone IS NULL AND type = ?", new String[]{"-1"}, null);
        boolean z = false;
        z = false;
        if (query != null) {
            if (query.getCount() > 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }

    /* renamed from: j */
    public static int m166j(Context context) {
        int i;
        Cursor query = context.getContentResolver().query(C3319a.f19425a, new String[]{"_id"}, null, null, null);
        if (query != null) {
            i = query.getCount();
            query.close();
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: j */
    private static boolean m165j(Context context, String str) {
        boolean z = false;
        z = false;
        Cursor query = context.getContentResolver().query(C3321c.f19427a, new String[]{"_id", "phone"}, "phone = ? OR phone_token = ?", new String[]{str.toLowerCase(), str.toLowerCase()}, null);
        if (query != null) {
            if (query.getCount() > 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* renamed from: k */
    private static long m163k(Context context, String str) {
        String str2;
        String[] strArr;
        Uri uri = C3322d.f19428a;
        if (str != null) {
            str2 = "address = ?";
            strArr = new String[]{str};
        } else {
            str2 = null;
            strArr = null;
        }
        Cursor query = context.getContentResolver().query(uri, new String[]{"thread_id"}, str2, strArr, "date DESC");
        boolean z = false;
        if (query != null) {
            boolean z2 = false;
            if (query.moveToNext()) {
                z2 = query.getLong(query.getColumnIndex("thread_id"));
            }
            query.close();
            z = z2;
        }
        long j = z ? 1L : 0L;
        long j2 = z ? 1L : 0L;
        return j;
    }

    /* renamed from: k */
    public static void m164k(Context context) {
        Cursor query = context.getContentResolver().query(C3319a.f19425a, new String[]{"time"}, null, null, "time DESC");
        if (query != null) {
            if (query.getCount() > 1000 && query.moveToPosition(999)) {
                context.getContentResolver().delete(C3319a.f19425a, "time < ".concat(String.valueOf(query.getLong(query.getColumnIndex("time")))), null);
            }
            query.close();
        }
    }

    /* renamed from: l */
    public static ArrayList<String> m162l(Context context) {
        Cursor query = context.getContentResolver().query(C3322d.f19428a, new String[]{"_id", "address"}, "type = 1", null, "date DESC LIMIT 100");
        ArrayList<String> arrayList = new ArrayList<>();
        if (query != null) {
            while (query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("address"));
                if (!arrayList.contains(string)) {
                    arrayList.add(string);
                }
            }
            query.close();
        }
        return arrayList;
    }

    /* renamed from: m */
    public static void m161m(Context context) {
        Cursor query = context.getContentResolver().query(C3321c.f19427a, null, "display_name IS NULL", null, null);
        C3311bt btVar = null;
        C3311bt btVar2 = null;
        if (query != null) {
            if (query.getCount() > 0) {
                C3311bt a = C3311bt.m229a(context);
                btVar2 = a;
                if (a == null) {
                    btVar2 = new C3311bt();
                    btVar2.m221b(context);
                }
            }
            while (query.moveToNext()) {
                long j = query.getLong(query.getColumnIndex("_id"));
                String string = query.getString(query.getColumnIndex("phone"));
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Long.valueOf(j));
                contentValues.put("phone", string);
                contentValues.put("phone_token", query.getString(query.getColumnIndex("phone_token")));
                contentValues.put("display_name", btVar2.m213d(context, string));
                contentValues.put("contact_id", btVar2.m228a(context, string));
                context.getContentResolver().update(C3321c.f19427a, contentValues, "_id = ?", new String[]{String.valueOf(j)});
            }
            query.close();
            btVar = btVar2;
        }
        Cursor query2 = context.getContentResolver().query(C3323e.f19429a, null, "display_name IS NULL", null, null);
        if (query2 != null) {
            C3311bt btVar3 = btVar;
            if (btVar == null) {
                btVar3 = btVar;
                if (query2.getCount() > 0) {
                    C3311bt a2 = C3311bt.m229a(context);
                    btVar3 = a2;
                    if (a2 == null) {
                        btVar3 = new C3311bt();
                        btVar3.m221b(context);
                    }
                }
            }
            while (query2.moveToNext()) {
                long j2 = query2.getLong(query2.getColumnIndex("_id"));
                String string2 = query2.getString(query2.getColumnIndex("phone"));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("_id", Long.valueOf(j2));
                contentValues2.put("phone", string2);
                contentValues2.put("display_name", btVar3.m213d(context, string2));
                contentValues2.put("contact_id", btVar3.m228a(context, string2));
                context.getContentResolver().update(C3323e.f19429a, contentValues2, "_id = ?", new String[]{String.valueOf(j2)});
            }
            query2.close();
        }
    }

    /* renamed from: n */
    public static void m160n(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m198a(context, "pref_block_hidden_calls", false));
        arrayList.add(m198a(context, "pref_block_unknown_calls", false));
        arrayList.add(m198a(context, "pref_block_unknown_sms", false));
        arrayList.add(m198a(context, "pref_block_all_calls", false));
        arrayList.add(m198a(context, "pref_block_all_sms", false));
        arrayList.add(m198a(context, "pref_block_all_calls_if_voip", false));
        arrayList.add(m198a(context, "pref_show_notifications", true));
        arrayList.add(m198a(context, "pref_show_notifications_blocking", true));
        arrayList.add(m198a(context, "pref_show_notifications_incoming", true));
        arrayList.add(m198a(context, "pref_password_on_start", false));
        arrayList.add(m198a(context, "pref_hide_blocked_messages", true));
        arrayList.add(m198a(context, "pref_schedule_enable", false));
        arrayList.add(m198a(context, "pref_show_status_bar_icon", true));
        arrayList.add(m198a(context, "pref_block_calls_option", true));
        arrayList.add(m198a(context, "pref_block_sms_option", true));
        arrayList.add(m198a(context, "pref_enable_blocking", true));
        arrayList.add(m198a(context, "pref_whitelist", true));
        arrayList.add(m198a(context, "pref_schedule_by_day_of_week", false));
        arrayList.add(m198a(context, "pref_schedule_monday", true));
        arrayList.add(m198a(context, "pref_schedule_tuesday", true));
        arrayList.add(m198a(context, "pref_schedule_wednesday", true));
        arrayList.add(m198a(context, "pref_schedule_thursday", true));
        arrayList.add(m198a(context, "pref_schedule_friday", true));
        arrayList.add(m198a(context, "pref_schedule_saturday", true));
        arrayList.add(m198a(context, "pref_schedule_sunday", true));
        arrayList.add(new Pair("pref_pin_code_value", C3391ed.m87b(context, "pref_pin_code_value", "")));
        arrayList.add(new Pair("pref_default_tab", Integer.toString(C3391ed.m92a(context, "pref_default_tab"))));
        arrayList.add(new Pair("pref_schedule_enable_from", Integer.toString(C3391ed.m92a(context, "pref_schedule_enable_from"))));
        arrayList.add(new Pair("pref_schedule_enable_to", Integer.toString(C3391ed.m92a(context, "pref_schedule_enable_to"))));
        C3317bx a = C3317bx.m204a(context);
        SQLiteDatabase readableDatabase = a.getReadableDatabase();
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            Pair pair = (Pair) arrayList.get(i);
            boolean a2 = C3392ee.m79a(readableDatabase, (String) pair.first);
            hashMap.put(pair.first, Boolean.valueOf(a2));
            z = z;
            if (!a2) {
                z = z;
                if (!z) {
                    z = true;
                }
            }
        }
        if (z) {
            SQLiteDatabase writableDatabase = a.getWritableDatabase();
            writableDatabase.beginTransaction();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Pair pair2 = (Pair) arrayList.get(i2);
                Boolean bool = (Boolean) hashMap.get(pair2.first);
                if (bool != null && !bool.booleanValue()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, (String) pair2.first);
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (String) pair2.second);
                    writableDatabase.insert("preferences", null, contentValues);
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        }
    }
}
