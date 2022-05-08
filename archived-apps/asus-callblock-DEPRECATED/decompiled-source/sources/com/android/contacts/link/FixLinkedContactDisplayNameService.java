package com.android.contacts.link;

import android.app.IntentService;
import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/FixLinkedContactDisplayNameService.class */
public class FixLinkedContactDisplayNameService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1603a = FixLinkedContactDisplayNameService.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private int f1604b = 0;
    private int c = 0;
    private SharedPreferences d;

    public FixLinkedContactDisplayNameService() {
        super(f1603a);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        boolean z;
        Cursor cursor;
        Throwable th;
        boolean z2;
        Cursor cursor2 = null;
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            this.d = PreferenceManager.getDefaultSharedPreferences(this);
            Log.d(f1603a, "isNeedUpdate: " + this.d.getBoolean(f1603a, true));
            if (this.d != null ? this.d.getBoolean(f1603a, true) : false) {
                try {
                    cursor2 = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "contact_id IN (SELECT contact_id FROM (SELECT contact_id, COUNT(contact_id) AS count FROM raw_contacts GROUP BY contact_id HAVING count > 1) contacts_count)", null, null);
                    if (cursor2 != null) {
                        try {
                            Log.d(f1603a, "Linked contact count: " + cursor2.getCount());
                            if (cursor2.moveToFirst()) {
                                do {
                                    try {
                                        cursor = getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"name_raw_contact_id"}, "_id=" + cursor2.getLong(0), null, null);
                                        if (cursor != null) {
                                            try {
                                                if (cursor.moveToFirst()) {
                                                    long j = cursor.getLong(0);
                                                    ContentValues contentValues = new ContentValues();
                                                    contentValues.put("name_verified", (Integer) 1);
                                                    int update = getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI, contentValues, "_id = " + j, null);
                                                    int i = update;
                                                    if (update <= 0) {
                                                        Log.i(f1603a, "checkContact(readOnly):" + j + "(" + update + ")");
                                                        i = getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build(), contentValues, "_id = " + j, null);
                                                    }
                                                    Log.i(f1603a, "checkContact:" + j + "(" + i + ")");
                                                    if (i > 0) {
                                                        this.f1604b++;
                                                    }
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
                                    } catch (Throwable th3) {
                                        th = th3;
                                        cursor = null;
                                    }
                                } while (cursor2.moveToNext());
                                z = true;
                            } else {
                                z = true;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            throw th;
                        }
                    } else {
                        z = false;
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    Cursor cursor3 = cursor2;
                    try {
                        Cursor query = getContentResolver().query(ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI, null, null, null, null);
                        if (query != null) {
                            Log.d(f1603a, "Me profile count: " + query.getCount());
                            if (query.getCount() > 1 && query.moveToFirst()) {
                                Cursor query2 = getContentResolver().query(ContactsContract.Profile.CONTENT_URI, new String[]{"name_raw_contact_id"}, null, null, null);
                                if (query2 != null && query2.moveToFirst()) {
                                    long j2 = query2.getLong(0);
                                    ContentValues contentValues2 = new ContentValues();
                                    contentValues2.put("name_verified", (Integer) 1);
                                    int update2 = getContentResolver().update(ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI, contentValues2, "_id = " + j2, null);
                                    int i2 = update2;
                                    if (update2 <= 0) {
                                        Log.i(f1603a, "checkMe(readOnly):" + j2 + "(" + update2 + ")");
                                        i2 = getContentResolver().update(ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build(), contentValues2, "_id = " + j2, null);
                                    }
                                    Log.i(f1603a, "checkMe:" + j2 + "(" + i2 + ")");
                                    if (i2 > 0) {
                                        this.c++;
                                    }
                                }
                                if (query2 != null) {
                                    cursor3 = query;
                                    query2.close();
                                    z2 = true;
                                }
                            }
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (query != null) {
                            query.close();
                        }
                        if (z && z2 && this.d != null) {
                            this.d.edit().putBoolean(f1603a, false).apply();
                        }
                        Log.d(f1603a, "mModifyCount: " + this.f1604b + " mModifyMeCount:" + this.c);
                    } finally {
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }
        }
    }
}
