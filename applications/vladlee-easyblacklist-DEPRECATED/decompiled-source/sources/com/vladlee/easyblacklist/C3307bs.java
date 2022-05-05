package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.p068b.p069a.C3116g;
import com.google.p068b.p069a.C3118h;
import com.google.p068b.p069a.C3128k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;
/* renamed from: com.vladlee.easyblacklist.bs */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bs.class */
public final class C3307bs {

    /* renamed from: com.vladlee.easyblacklist.bs$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bs$a.class */
    public final class C3308a {

        /* renamed from: a */
        String f19381a;

        /* renamed from: b */
        long f19382b;

        /* renamed from: c */
        long f19383c;

        public C3308a() {
        }
    }

    /* renamed from: com.vladlee.easyblacklist.bs$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bs$b.class */
    public final class C3309b {

        /* renamed from: c */
        private Vector<Long> f19387c = new Vector<>();

        /* renamed from: d */
        private ArrayList<C3310a> f19388d = new ArrayList<>();

        /* renamed from: a */
        public HashMap<String, C3310a> f19385a = new HashMap<>();

        /* renamed from: com.vladlee.easyblacklist.bs$b$a */
        /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bs$b$a.class */
        public class C3310a {

            /* renamed from: a */
            public long f19389a;

            /* renamed from: b */
            public boolean f19390b;

            /* renamed from: c */
            public Vector<String> f19391c = new Vector<>();

            public C3310a() {
            }

            /* renamed from: a */
            public final String m231a(int i) {
                return this.f19391c.get(i);
            }

            public boolean equals(Object obj) {
                if (obj == null || obj.getClass() != C3310a.class) {
                    return false;
                }
                C3310a aVar = (C3310a) obj;
                return aVar.f19389a == this.f19389a && this.f19391c.get(0).equals(aVar.f19391c.get(0));
            }
        }

        public C3309b() {
        }

        /* renamed from: a */
        public final ArrayList<C3310a> m233a() {
            return this.f19388d;
        }

        /* renamed from: a */
        public final void m232a(long j, String str) {
            if (!this.f19387c.contains(Long.valueOf(j)) || j < 0) {
                C3310a aVar = new C3310a();
                aVar.f19389a = j;
                aVar.f19390b = false;
                aVar.f19391c.add(str);
                this.f19388d.add(aVar);
                this.f19387c.add(Long.valueOf(j));
                for (int i = 0; i < aVar.f19391c.size(); i++) {
                    this.f19385a.put(aVar.m231a(i), aVar);
                }
                return;
            }
            this.f19388d.get(this.f19387c.indexOf(Long.valueOf(j))).f19391c.add(str);
            this.f19385a.put(str, this.f19388d.get(this.f19387c.indexOf(Long.valueOf(j))));
        }
    }

    /* renamed from: a */
    public static String m246a(Context context, String str) {
        return m245a(context, str, C3118h.EnumC3119a.f18807a, ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso(), true);
    }

    /* renamed from: a */
    private static String m245a(Context context, String str, int i, String str2, boolean z) {
        String str3;
        String str4;
        String str5;
        if (m241a(str)) {
            return str;
        }
        if (m237b(str)) {
            String str6 = str2;
            if (str2 == null) {
                str6 = ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso();
            }
            String stripSeparators = PhoneNumberUtils.stripSeparators(str);
            str3 = stripSeparators;
            if (stripSeparators.length() >= 8) {
                if (str6 == null || str6.length() != 2) {
                    stripSeparators = stripSeparators;
                    if (!stripSeparators.startsWith("+")) {
                        stripSeparators = "+".concat(String.valueOf(stripSeparators));
                    }
                    str4 = "";
                } else {
                    str4 = str6.toUpperCase();
                }
                try {
                    C3118h a = C3118h.m737a();
                    C3128k.C3129a a2 = a.m723a(stripSeparators, str4);
                    String a3 = a.m729a(a2, i);
                    str5 = a3;
                    if (!a.m730a(a2)) {
                        str5 = a3;
                        if (str4.length() > 0) {
                            str5 = a.m729a(a.m723a(!str.startsWith("+") ? "+".concat(String.valueOf(str)) : str, ""), i);
                        }
                    }
                } catch (C3116g e) {
                    str5 = PhoneNumberUtils.stripSeparators(str);
                }
                str3 = str5;
                if (str5.length() < 2) {
                    str3 = str;
                }
            }
            return str3;
        }
        str3 = str;
        if (z) {
            str3 = str.trim();
        }
        return str3;
    }

    /* renamed from: a */
    public static String m244a(Context context, String str, String str2) {
        return m245a(context, str, C3118h.EnumC3119a.f18807a, str2, true);
    }

    /* renamed from: a */
    public static ArrayList<String> m247a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"number"}, null, null, "date DESC LIMIT 100");
        if (query != null) {
            while (query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("number"));
                if (string != null && !arrayList.contains(string) && !m241a(string)) {
                    arrayList.add(string);
                }
            }
            query.close();
        }
        return arrayList;
    }

    /* renamed from: a */
    public static ArrayList<String> m243a(Context context, ArrayList<String> arrayList) {
        return m242a(context, arrayList, C3118h.EnumC3119a.f18807a);
    }

    /* renamed from: a */
    private static ArrayList<String> m242a(Context context, ArrayList<String> arrayList, int i) {
        String str;
        String str2;
        ArrayList<String> arrayList2 = new ArrayList<>();
        String simCountryIso = ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso();
        String upperCase = (simCountryIso == null || simCountryIso.length() != 2) ? "" : simCountryIso.toUpperCase();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str3 = arrayList.get(i2);
            if (!m241a(str3) && !str3.contains("?")) {
                if (m237b(str3)) {
                    String stripSeparators = PhoneNumberUtils.stripSeparators(str3);
                    str = stripSeparators;
                    if (stripSeparators.length() >= 8) {
                        String str4 = stripSeparators;
                        if (upperCase.equals("")) {
                            str4 = stripSeparators;
                            if (!stripSeparators.startsWith("+")) {
                                str4 = "+".concat(String.valueOf(stripSeparators));
                            }
                        }
                        try {
                            C3118h a = C3118h.m737a();
                            C3128k.C3129a a2 = a.m723a(str4, upperCase);
                            String a3 = a.m729a(a2, i);
                            str2 = a3;
                            if (!a.m730a(a2)) {
                                str2 = a3;
                                if (upperCase.length() > 0) {
                                    str2 = a.m729a(a.m723a(!str3.startsWith("+") ? "+".concat(String.valueOf(str3)) : str3, ""), i);
                                }
                            }
                        } catch (C3116g e) {
                            str2 = PhoneNumberUtils.stripSeparators(str3);
                        }
                        str = str2;
                        if (str2.length() < 2) {
                            str = str3;
                        }
                    }
                } else {
                    str = str3.trim();
                }
                arrayList2.add(str);
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static boolean m241a(String str) {
        boolean z = str == null || str.length() <= 2;
        if (!z) {
            try {
                z = false;
                if (Long.parseLong(str) < 0) {
                    z = true;
                }
            } catch (NumberFormatException e) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static String m239b(Context context, String str) {
        return m245a(context, str, C3118h.EnumC3119a.f18807a, ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso(), false);
    }

    /* renamed from: b */
    public static String m238b(Context context, String str, String str2) {
        return m245a(context, str, C3118h.EnumC3119a.f18808b, str2, true);
    }

    /* renamed from: b */
    public static void m240b(Context context) {
        try {
            Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"_id", "date", "number"}, "(type = 1 OR 3 = 3) AND duration = 0 AND date > ".concat(String.valueOf(System.currentTimeMillis() - 30000)), null, null);
            if (query != null) {
                Vector vector = new Vector();
                while (query.moveToNext()) {
                    long j = query.getLong(query.getColumnIndex("_id"));
                    String string = query.getString(query.getColumnIndex("number"));
                    long j2 = query.getLong(query.getColumnIndex("date"));
                    if (string != null && C3275aq.m267a(context, string)) {
                        C3307bs bsVar = new C3307bs();
                        bsVar.getClass();
                        C3308a aVar = new C3308a();
                        aVar.f19381a = string;
                        aVar.f19382b = j2;
                        aVar.f19383c = j;
                        vector.add(aVar);
                    }
                }
                query.close();
            }
        } catch (SQLiteException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        } catch (SecurityException e3) {
            FirebaseAnalytics.getInstance(context).m646a("error_saveAndClearBlockedCallLog", new Bundle());
        }
    }

    /* renamed from: b */
    public static boolean m237b(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        String replaceAll = str.replaceAll("\\p{C}", "");
        if (replaceAll.length() <= 0) {
            return false;
        }
        for (int i = 0; i < replaceAll.length(); i++) {
            char charAt = replaceAll.charAt(i);
            if (!(PhoneNumberUtils.isReallyDialable(charAt) || charAt == ' ' || charAt == '-' || charAt == '.' || charAt == '(' || charAt == ')')) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static String m235c(Context context, String str) {
        String str2 = null;
        str2 = null;
        str2 = null;
        try {
            Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"display_name"}, null, null, null);
            if (query != null) {
                if (query.moveToNext()) {
                    str2 = query.getString(query.getColumnIndex("display_name"));
                }
                str2 = str2;
                query.close();
            }
        } catch (IllegalArgumentException e) {
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = m245a(context, str, C3118h.EnumC3119a.f18808b, ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso(), true);
        }
        return str3;
    }

    /* renamed from: c */
    public static String m234c(String str) {
        String str2 = str;
        if (str.length() >= 7) {
            str2 = str.substring(str.length() - 7);
        }
        return str2;
    }

    /* renamed from: c */
    public static void m236c(Context context) {
        Cursor query = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"contact_id", "data1"}, "has_phone_number = 1 AND send_to_voicemail = 1 AND mimetype = ?", new String[]{"vnd.android.cursor.item/phone_v2"}, "display_name COLLATE LOCALIZED ASC");
        C3307bs bsVar = new C3307bs();
        bsVar.getClass();
        C3309b bVar = new C3309b();
        if (query != null) {
            while (query.moveToNext()) {
                bVar.m232a(query.getLong(query.getColumnIndex("contact_id")), m246a(context, query.getString(query.getColumnIndex("data1"))));
            }
            query.close();
        }
        ArrayList<C3309b.C3310a> a = bVar.m233a();
        for (int i = 0; i < a.size(); i++) {
            C3309b.C3310a aVar = a.get(i);
            for (int i2 = 0; i2 < aVar.f19391c.size(); i2++) {
                C3318by.m201a(context, aVar.m231a(i2));
            }
        }
    }
}
