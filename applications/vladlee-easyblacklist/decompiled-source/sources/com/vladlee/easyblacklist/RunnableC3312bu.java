package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.bu */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bu.class */
public final class RunnableC3312bu implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f19403a;

    /* renamed from: b */
    final /* synthetic */ C3311bt f19404b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3312bu(C3311bt btVar, Context context) {
        this.f19404b = btVar;
        this.f19403a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        this.f19404b.f19402j = ((TelephonyManager) this.f19403a.getSystemService("phone")).getSimCountryIso();
        Cursor query = this.f19403a.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"contact_id", "data1", "display_name", "photo_thumb_uri"}, null, null, null);
        if (query != null) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            HashMap hashMap4 = new HashMap();
            HashMap hashMap5 = new HashMap();
            while (query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("data1"));
                if (string != null) {
                    String replace = PhoneNumberUtils.stripSeparators(string).replace("+", "");
                    if (!hashMap.containsKey(replace)) {
                        Context context = this.f19403a;
                        str = this.f19404b.f19402j;
                        String a = C3307bs.m244a(context, replace, str);
                        hashMap.put(replace, a);
                        hashMap.put(a, a);
                        String string2 = query.getString(query.getColumnIndex("display_name"));
                        String string3 = query.getString(query.getColumnIndex("photo_thumb_uri"));
                        long j = query.getLong(query.getColumnIndex("contact_id"));
                        hashMap2.put(replace, string2);
                        hashMap2.put(a, string2);
                        hashMap4.put(a, Long.valueOf(j));
                        hashMap4.put(replace, Long.valueOf(j));
                        hashMap5.put(C3307bs.m234c(replace), Long.valueOf(j));
                        hashMap3.put(replace, string3);
                        hashMap3.put(a, string3);
                    }
                }
            }
            query.close();
            this.f19404b.f19395c = hashMap;
            this.f19404b.f19397e = hashMap2;
            this.f19404b.f19398f = hashMap4;
            this.f19404b.f19399g = hashMap5;
            this.f19404b.f19396d = hashMap3;
        }
    }
}
