package com.android.contacts.miniwidget;

import android.app.IntentService;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.util.Log;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/CheckWidgetUpdateService.class */
public class CheckWidgetUpdateService extends IntentService {

    /* renamed from: b  reason: collision with root package name */
    private static final String f1924b = CheckWidgetUpdateService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static String f1923a = "widget_ids";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/CheckWidgetUpdateService$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        long f1925a;

        /* renamed from: b  reason: collision with root package name */
        long f1926b;
        int c;

        public a(long j, long j2, int i) {
            this.f1925a = j;
            this.f1926b = j2;
            this.c = i;
        }
    }

    public CheckWidgetUpdateService() {
        super(f1924b);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Cursor cursor;
        Throwable th;
        ContentValues contentValues;
        String str;
        int[] intArrayExtra = intent.getIntArrayExtra(f1923a);
        Log.i(f1924b, "CheckWidgetUpdateService start: " + intArrayExtra.length);
        for (int i : intArrayExtra) {
            boolean z = false;
            HashMap hashMap = new HashMap();
            try {
                cursor = getContentResolver().query(ContactsWidgetProvider.f1929a, new String[]{"widget_id", "name_raw_contact_id", "raw_version"}, "widget_id=" + i, null, null);
                String str2 = "_id IN(";
                if (cursor != null) {
                    str2 = "_id IN(";
                    try {
                        if (cursor.moveToFirst()) {
                            Log.i(f1924b, i + " : cursor count = " + cursor.getCount());
                            String str3 = "_id IN(";
                            do {
                                long j = cursor.getLong(1);
                                long j2 = cursor.getLong(0);
                                int i2 = cursor.getInt(2);
                                String str4 = str3 + j;
                                str = !cursor.isLast() ? str4 + ", " : str4 + ")";
                                hashMap.put(Long.valueOf(j), new a(j, j2, i2));
                                str3 = str;
                            } while (cursor.moveToNext());
                            str2 = str;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (hashMap.size() > 0) {
                    int size = hashMap.size();
                    try {
                        Log.d(f1924b, "widgetMap.size():" + hashMap.size());
                        Cursor query = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "version"}, str2, null, null);
                        z = false;
                        if (query != null) {
                            z = false;
                            if (query.moveToFirst()) {
                                do {
                                    long j3 = query.getLong(0);
                                    int i3 = query.getInt(1);
                                    if (i3 != ((a) hashMap.get(Long.valueOf(j3))).c) {
                                        z = true;
                                        new ContentValues().put("raw_version", Integer.valueOf(i3));
                                        Log.i(f1924b, i + ":" + j3 + " update version to " + i3 + "(result=" + getContentResolver().update(ContactsWidgetProvider.f1929a, contentValues, "name_raw_contact_id=" + j3 + " AND widget_id=" + i, null) + ")");
                                    }
                                    z = z;
                                } while (query.moveToNext());
                            }
                        }
                        if (query != null) {
                            size = query.getCount();
                            Log.d(f1924b, "cur.getCount():" + query.getCount());
                            query.close();
                        }
                        if (hashMap.size() != size) {
                            z = true;
                        }
                    } catch (Throwable th3) {
                        if (cursor != null) {
                            cursor.getCount();
                            Log.d(f1924b, "cur.getCount():" + cursor.getCount());
                            cursor.close();
                        }
                        throw th3;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    Log.i(f1924b, "Sendbroadcast to update:" + i);
                    Intent intent2 = new Intent();
                    intent2.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
                    intent2.putExtra("widget_id", i);
                    sendBroadcast(intent2);
                }
            } catch (Throwable th4) {
                th = th4;
                cursor = null;
            }
        }
        Log.i(f1924b, "CheckWidgetUpdateService end");
    }
}
