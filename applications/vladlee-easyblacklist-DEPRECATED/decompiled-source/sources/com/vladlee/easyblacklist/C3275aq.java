package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Pair;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.vladlee.easyblacklist.aq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/aq.class */
public final class C3275aq {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.aq$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/aq$a.class */
    public static final class C3276a {

        /* renamed from: a */
        boolean f19316a;

        /* renamed from: b */
        boolean f19317b;

        /* renamed from: c */
        boolean f19318c;

        /* renamed from: d */
        HashMap<String, String> f19319d;

        /* renamed from: e */
        ArrayList<String> f19320e;

        /* renamed from: f */
        ArrayList<String> f19321f;

        /* renamed from: g */
        ArrayList<String> f19322g;

        /* renamed from: h */
        ArrayList<Pair<String, Boolean>> f19323h;

        private C3276a() {
            this.f19316a = false;
            this.f19317b = false;
            this.f19318c = false;
            this.f19319d = new HashMap<>();
            this.f19320e = new ArrayList<>();
            this.f19321f = new ArrayList<>();
            this.f19322g = new ArrayList<>();
            this.f19323h = new ArrayList<>();
        }

        /* synthetic */ C3276a(byte b) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* renamed from: a */
    private static long m268a(Context context, long j) {
        boolean z;
        boolean z2 = true;
        try {
            Cursor query = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"contact_id"}, "_id = ?", new String[]{String.valueOf(j)}, null);
            z = true;
            if (query != null) {
                boolean z3 = true;
                if (query.moveToNext()) {
                    z3 = query.getLong(0);
                }
                boolean z4 = z3 ? 1 : 0;
                boolean z5 = z3 ? 1 : 0;
                boolean z6 = z3 ? 1 : 0;
                boolean z7 = z3 ? 1 : 0;
                z2 = z4;
                query.close();
                z = z3;
            }
        } catch (SecurityException e) {
            FirebaseAnalytics.getInstance(context).m646a("error_BlockChecker_noPermission", new Bundle());
            z = z2;
        }
        long j2 = z ? 1L : 0L;
        long j3 = z ? 1L : 0L;
        long j4 = z ? 1L : 0L;
        long j5 = z ? 1L : 0L;
        return j2;
    }

    /* renamed from: a */
    private static C3276a m265a(Context context, String str, boolean z) {
        Cursor cursor;
        Cursor query;
        Cursor query2;
        Cursor query3;
        C3276a aVar = new C3276a((byte) 0);
        SQLiteDatabase readableDatabase = C3317bx.m204a(context).getReadableDatabase();
        if (str != null) {
            if (!z) {
                cursor = readableDatabase.query("phones", new String[]{"phone"}, "phone LIKE ?", new String[]{"%".concat(String.valueOf(str))}, null, null, null);
            } else {
                cursor = readableDatabase.query("phones", new String[]{"phone_token"}, "phone_token LIKE ?", new String[]{"%" + str.toLowerCase()}, null, null, null);
            }
            if (cursor != null) {
                aVar.f19317b = cursor.getCount() > 0;
                cursor.close();
            }
            if (!aVar.f19317b) {
                Cursor query4 = readableDatabase.query("phones", new String[]{"phone"}, "phone LIKE ?", new String[]{"%?"}, null, null, null);
                if (query4 != null) {
                    while (query4.moveToNext()) {
                        String string = query4.getString(0);
                        (!string.startsWith("?") ? aVar.f19320e : aVar.f19321f).add(string);
                    }
                    query4.close();
                }
                if (z && (query3 = readableDatabase.query("phones", new String[]{"filter", "ignore_case"}, "filter IS NOT NULL", null, null, null, null)) != null) {
                    while (query3.moveToNext()) {
                        aVar.f19323h.add(Pair.create(query3.getString(0), Boolean.valueOf(query3.getInt(1) != 0)));
                    }
                    query3.close();
                }
                if (!aVar.f19317b && (query2 = readableDatabase.query("phones", new String[]{"phone"}, "contact_id IS NOT NULL", null, null, null, null, "1")) != null) {
                    if (query2.moveToNext()) {
                        aVar.f19318c = true;
                    }
                    query2.close();
                }
            }
            Cursor query5 = readableDatabase.query("whitelist", new String[]{"phone"}, "phone LIKE ?", new String[]{"%".concat(String.valueOf(str))}, null, null, null);
            if (query5 != null) {
                if (query5.getCount() > 0) {
                    aVar.f19316a = true;
                } else {
                    aVar.f19316a = false;
                }
                query5.close();
            }
            if (!aVar.f19316a && (query = readableDatabase.query("whitelist", new String[]{"phone"}, "phone LIKE ?", new String[]{"%?"}, null, null, null)) != null) {
                while (query.moveToNext()) {
                    aVar.f19322g.add(query.getString(0));
                }
                query.close();
            }
        }
        Cursor query6 = readableDatabase.query("preferences", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.VALUE}, null, null, null, null, null);
        if (query6 != null) {
            while (query6.moveToNext()) {
                aVar.f19319d.put(query6.getString(0), query6.getString(1));
            }
            query6.close();
        }
        return aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0136, code lost:
        if (r0.f19318c != false) goto L_0x0139;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m267a(android.content.Context r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3275aq.m267a(android.content.Context, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f3, code lost:
        if (r0.f19318c != false) goto L_0x00f6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m266a(android.content.Context r5, java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3275aq.m266a(android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: a */
    private static boolean m264a(ArrayList<String> arrayList, String str) {
        String replace = str.replace("+", "");
        for (int i = 0; i < arrayList.size(); i++) {
            if (replace.startsWith(arrayList.get(i).replace("+", "").replace("?", ""))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m263a(HashMap<String, String> hashMap, String str, boolean z) {
        String str2 = hashMap.get(str);
        if (str2 != null) {
            z = str2.charAt(0) == 't';
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m262b(android.content.Context r9, java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3275aq.m262b(android.content.Context, java.lang.String, java.lang.String):long");
    }

    /* renamed from: b */
    private static boolean m261b(ArrayList<String> arrayList, String str) {
        String replace = str.replace("+", "");
        for (int i = 0; i < arrayList.size(); i++) {
            if (replace.contains(arrayList.get(i).replace("+", "").replace("?", ""))) {
                return true;
            }
        }
        return false;
    }
}
