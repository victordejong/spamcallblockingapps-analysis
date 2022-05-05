package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import com.vladlee.easyblacklist.C3318by;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: com.vladlee.easyblacklist.bt */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bt.class */
public final class C3311bt {

    /* renamed from: a */
    private HashMap<String, C3304bp> f19393a = new HashMap<>();

    /* renamed from: b */
    private HashMap<String, String> f19394b = new HashMap<>();

    /* renamed from: c */
    private HashMap<String, String> f19395c = null;

    /* renamed from: d */
    private HashMap<String, String> f19396d = null;

    /* renamed from: e */
    private HashMap<String, String> f19397e = null;

    /* renamed from: f */
    private HashMap<String, Long> f19398f = null;

    /* renamed from: g */
    private HashMap<String, Long> f19399g = null;

    /* renamed from: h */
    private ArrayList<String> f19400h = null;

    /* renamed from: i */
    private HashMap<String, C3305bq> f19401i = null;

    /* renamed from: j */
    private String f19402j = null;

    /* renamed from: a */
    public static C3311bt m229a(Context context) {
        return ((CallsBlacklistApp) context.getApplicationContext()).m355b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r4.f19395c == null) goto L_0x0034;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m227a(android.content.Context r5, java.lang.String r6, boolean r7) {
        /*
            r4 = this;
            r0 = r4
            java.util.HashMap<java.lang.String, java.lang.String> r0 = r0.f19395c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0019
            r0 = r8
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            goto L_0x001c
        L_0x0019:
            r0 = 0
            r8 = r0
        L_0x001c:
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0057
            r0 = r7
            if (r0 == 0) goto L_0x0034
            r0 = r8
            r9 = r0
            r0 = r4
            java.util.HashMap<java.lang.String, java.lang.String> r0 = r0.f19395c
            if (r0 != 0) goto L_0x0057
        L_0x0034:
            r0 = r5
            r1 = r6
            r2 = r4
            java.lang.String r2 = r2.f19402j
            java.lang.String r0 = com.vladlee.easyblacklist.C3307bs.m244a(r0, r1, r2)
            r5 = r0
            r0 = r4
            java.util.HashMap<java.lang.String, java.lang.String> r0 = r0.f19395c
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0057
            r0 = r8
            r1 = r6
            r2 = r5
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r5
            r9 = r0
        L_0x0057:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3311bt.m227a(android.content.Context, java.lang.String, boolean):java.lang.String");
    }

    /* renamed from: a */
    private boolean m222a(String str) {
        HashMap<String, Long> hashMap = this.f19399g;
        return hashMap == null || hashMap.get(C3307bs.m234c(str)) != null;
    }

    /* renamed from: d */
    private void m214d(Context context) {
        Uri uri = ContactsContract.Contacts.CONTENT_URI;
        HashMap hashMap = new HashMap();
        Cursor query = context.getContentResolver().query(uri, new String[]{"_id", "display_name"}, "has_phone_number = 1", null, null);
        if (query != null) {
            while (query.moveToNext()) {
                hashMap.put(Long.valueOf(query.getLong(query.getColumnIndex("_id"))), query.getString(query.getColumnIndex("display_name")));
            }
            query.close();
        }
        Uri uri2 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
        this.f19400h = new ArrayList<>();
        ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        Cursor query2 = context.getContentResolver().query(uri2, new String[]{"contact_id", "data1"}, null, null, "display_name ASC");
        if (query2 != null) {
            HashMap hashMap3 = new HashMap();
            while (query2.moveToNext()) {
                long j = query2.getLong(query2.getColumnIndex("contact_id"));
                String string = query2.getString(query2.getColumnIndex("data1"));
                if (!(string == null || hashMap.get(Long.valueOf(j)) == null)) {
                    C3305bq bqVar = (C3305bq) hashMap2.get(Long.valueOf(j));
                    C3305bq bqVar2 = bqVar;
                    if (bqVar == null) {
                        bqVar2 = new C3305bq();
                        bqVar2.f19376a = j;
                        arrayList.add(bqVar2);
                    }
                    String str = null;
                    HashMap<String, String> hashMap4 = this.f19395c;
                    if (hashMap4 != null) {
                        str = hashMap4.get(PhoneNumberUtils.stripSeparators(string).replace("+", ""));
                    }
                    if (str == null) {
                        str = C3307bs.m244a(context, string, this.f19402j);
                    }
                    bqVar2.m249a(str);
                    if (hashMap3.get(str) == null) {
                        this.f19400h.add(str);
                        hashMap3.put(str, Long.valueOf(bqVar2.f19376a));
                    }
                    hashMap2.put(Long.valueOf(j), bqVar2);
                }
            }
            query2.close();
        }
        this.f19401i = new HashMap<>();
        for (int i = 0; i < arrayList.size(); i++) {
            C3305bq bqVar3 = (C3305bq) arrayList.get(i);
            bqVar3.m248a(((C3305bq) hashMap2.get(Long.valueOf(bqVar3.f19376a))).f19377b);
            arrayList.set(i, bqVar3);
            for (int i2 = 0; i2 < bqVar3.f19377b.size(); i2++) {
                this.f19401i.put(bqVar3.f19377b.get(i2), bqVar3);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (r12 != false) goto L_0x008e;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.vladlee.easyblacklist.C3304bp m208g(android.content.Context r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3311bt.m208g(android.content.Context, java.lang.String):com.vladlee.easyblacklist.bp");
    }

    /* renamed from: a */
    public final Long m228a(Context context, String str) {
        HashMap<String, Long> hashMap = this.f19398f;
        if (hashMap != null) {
            return hashMap.get(str);
        }
        r8 = null;
        Long l = null;
        if (m222a(str)) {
            l = null;
            if (str != null) {
                l = null;
                if (str.length() > 0) {
                    Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"_id"}, null, null, null);
                    l = null;
                    if (query != null) {
                        if (query.moveToNext()) {
                            l = Long.valueOf(query.getLong(query.getColumnIndex("_id")));
                        }
                        query.close();
                    }
                }
            }
        }
        return l;
    }

    /* renamed from: a */
    public final String m230a() {
        return this.f19402j;
    }

    /* renamed from: a */
    public final ArrayList<C3305bq> m226a(Context context, ArrayList<String> arrayList) {
        if (this.f19401i == null) {
            m214d(context);
        }
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        ArrayList<C3305bq> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = arrayList.get(i);
            C3305bq bqVar = this.f19401i.get(str);
            C3305bq bqVar2 = bqVar;
            if (bqVar == null) {
                bqVar2 = new C3305bq();
                bqVar2.m249a(str);
            }
            if (bqVar2.f19376a == 0 && !hashSet.contains(str)) {
                arrayList2.add(bqVar2);
                hashSet.add(str);
            } else if (bqVar2.f19376a != 0 && hashMap.get(Long.valueOf(bqVar2.f19376a)) == null) {
                arrayList2.add(bqVar2);
                hashMap.put(Long.valueOf(bqVar2.f19376a), bqVar2);
            }
        }
        return arrayList2;
    }

    /* renamed from: b */
    public final C3304bp m220b(Context context, String str) {
        C3304bp bpVar;
        C3304bp bpVar2 = this.f19393a.get(str);
        C3304bp bpVar3 = bpVar2;
        if (bpVar2 == null) {
            try {
                bpVar = m208g(context, str);
            } catch (Exception e) {
                bpVar = null;
            }
            bpVar3 = bpVar;
            if (bpVar == null) {
                bpVar3 = new C3304bp();
                bpVar3.f19373a = m209f(context, str);
            }
            this.f19393a.put(str, bpVar3);
        }
        return bpVar3;
    }

    /* renamed from: b */
    public final ArrayList<String> m219b(Context context, ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add(m227a(context, arrayList.get(i), false));
        }
        return arrayList2;
    }

    /* renamed from: b */
    public final void m221b(Context context) {
        this.f19393a.clear();
        this.f19395c = null;
        this.f19397e = null;
        this.f19398f = null;
        this.f19399g = null;
        this.f19396d = null;
        this.f19400h = null;
        this.f19401i = null;
        this.f19402j = null;
        new Thread(new RunnableC3312bu(this, context)).start();
    }

    /* renamed from: c */
    public final C3305bq m216c(Context context, String str) {
        C3305bq bqVar;
        C3305bq bqVar2;
        if (this.f19401i == null) {
            m214d(context);
        }
        C3305bq bqVar3 = null;
        try {
            C3305bq bqVar4 = this.f19401i.get(str);
            if (bqVar4 != null || this.f19401i.containsKey(str)) {
                bqVar3 = bqVar4;
            } else {
                if (!m222a(str) || str == null || str.length() <= 0) {
                    bqVar = null;
                } else {
                    Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"_id"}, null, null, null);
                    if (query != null) {
                        if (query.moveToNext()) {
                            bqVar2 = new C3305bq();
                            bqVar2.f19376a = query.getLong(query.getColumnIndex("_id"));
                        } else {
                            bqVar2 = null;
                        }
                        query.close();
                    } else {
                        bqVar2 = null;
                    }
                    bqVar = bqVar2;
                    if (bqVar2 != null) {
                        Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
                        StringBuilder sb = new StringBuilder();
                        sb.append(bqVar2.f19376a);
                        Cursor query2 = context.getContentResolver().query(uri, new String[]{"data1"}, "contact_id = ?", new String[]{sb.toString()}, null);
                        bqVar = bqVar2;
                        if (query2 != null) {
                            while (query2.moveToNext()) {
                                bqVar2.f19377b.add(query2.getString(query2.getColumnIndex("data1")));
                            }
                            query2.close();
                            bqVar = bqVar2;
                        }
                    }
                }
                this.f19401i.put(str, bqVar);
                bqVar3 = bqVar;
            }
        } catch (Exception e) {
        }
        return bqVar3;
    }

    /* renamed from: c */
    public final ArrayList<C3305bq> m217c(Context context) {
        if (this.f19400h == null) {
            m214d(context);
        }
        ArrayList<String> b = C3318by.m192b(context);
        ArrayList<String> a = C3318by.m196a(C3318by.C3323e.f19429a, context);
        ArrayList<String> arrayList = new ArrayList<>(this.f19400h);
        arrayList.removeAll(b);
        arrayList.removeAll(a);
        return m226a(context, arrayList);
    }

    /* renamed from: d */
    public final String m213d(Context context, String str) {
        C3304bp b = m220b(context, str);
        return b != null ? b.f19373a : m209f(context, str);
    }

    /* renamed from: e */
    public final String m211e(Context context, String str) {
        C3304bp bpVar = this.f19393a.get(str);
        C3304bp bpVar2 = bpVar;
        if (bpVar == null) {
            try {
                bpVar2 = m208g(context, str);
            } catch (Exception e) {
                bpVar2 = null;
            }
        }
        if (bpVar2 != null) {
            return bpVar2.f19373a;
        }
        return null;
    }

    /* renamed from: f */
    public final String m209f(Context context, String str) {
        if (str == null || str.contains("?")) {
            return str;
        }
        String str2 = this.f19394b.get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = C3307bs.m238b(context, str, this.f19402j);
            this.f19394b.put(str, str3);
        }
        return str3;
    }
}
