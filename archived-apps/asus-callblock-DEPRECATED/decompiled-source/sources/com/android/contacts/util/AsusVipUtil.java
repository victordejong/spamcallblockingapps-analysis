package com.android.contacts.util;

import android.content.ContentResolver;
import android.database.Cursor;
import android.provider.ContactsContract;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusVipUtil.class */
public class AsusVipUtil {
    public static boolean isInVipGroup(long j, ContentResolver contentResolver) {
        Throwable th;
        Cursor cursor;
        boolean z;
        try {
            cursor = contentResolver.query(ContactsContract.Data.CONTENT_URI, null, PhoneCapabilityTester.IsAsusDevice() ? "contact_id=" + j + " AND mimetype='vnd.android.cursor.item/group_membership' AND data2 = (SELECT _id FROM asus_global_groups WHERE title = 'VIP')" : "contact_id=" + j + " AND mimetype='vnd.android.cursor.item/group_membership' AND data1 = (SELECT _id FROM groups WHERE title = 'VIP')", null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        z = true;
                        return z;
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
            z = false;
            return z;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }
}
