package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.group.f;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/d.class */
public final class d extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    private final long f793a;

    /* renamed from: b  reason: collision with root package name */
    private AccountWithDataSet f794b;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f796a;

        static {
            f796a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number", SpeedDialList.Columns.ISSIM, "data14"} : new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number", "data14"};
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/d$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f797a = {"_id", "display_name", PhotoSelectionActivity.PHOTO_URI, "lookup", "starred", "has_phone_number", "photo_id", SpeedDialList.Columns.ISSIM};
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f799a;

        static {
            f799a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, "display_name", PhotoSelectionActivity.PHOTO_URI, "lookup", "starred", "has_phone_number", "photo_id", SpeedDialList.Columns.ISSIM} : new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, "display_name", PhotoSelectionActivity.PHOTO_URI, "lookup", "starred", "has_phone_number", "photo_id"};
        }
    }

    /* renamed from: com.android.contacts.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/d$d.class */
    public static final class C0030d {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f800a;

        static {
            f800a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number", SpeedDialList.Columns.ISSIM} : new String[]{"_id", PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number"};
        }
    }

    private d(Context context, long j, String[] strArr, int i, String str) {
        super(context);
        Uri withAppendedPath;
        this.f793a = j;
        switch (i) {
            case 0:
                withAppendedPath = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups_emergency_data");
                break;
            case 1:
                withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, "frequent");
                break;
            default:
                withAppendedPath = ContactsContract.Data.CONTENT_URI;
                break;
        }
        setUri(withAppendedPath.buildUpon().appendQueryParameter("directory", "0").build());
        setProjection(strArr);
        if (i == 1) {
            setSelection(null);
            setSelectionArgs(null);
        } else {
            setSelection(a());
            ArrayList arrayList = new ArrayList();
            arrayList.add("vnd.android.cursor.item/group_membership");
            arrayList.add(String.valueOf(this.f793a));
            setSelectionArgs((String[]) arrayList.toArray(new String[0]));
        }
        if (str != null) {
            setSortOrder(str);
        } else if (new ContactsPreferences(context).getSortOrder() == 1) {
            setSortOrder("sort_key");
        } else {
            setSortOrder("sort_key_alt");
        }
    }

    public static d a(Context context, long j, int i) {
        d dVar;
        if (i == 1) {
            dVar = new d(context, j, b.f797a, i, null);
        } else {
            dVar = new d(context, j, c.f799a, i, f.c());
        }
        return dVar;
    }

    private String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("mimetype=? AND data2=?");
        if (this.f794b != null) {
            AccountFilterUtil.handleSqliteEscapeString(new String(this.f794b.name));
            if (this.f794b.f1998a != null) {
                sb.append(" AND raw_contact_id IN( SELECT _ID FROM raw_contacts WHERE account_id = (SELECT _ID FROM accounts WHERE account_name = '" + this.f794b.name + "' AND account_type = '" + this.f794b.type + "' AND data_set = '" + this.f794b.f1998a + "'))");
            } else {
                sb.append(" AND raw_contact_id IN( SELECT _ID FROM raw_contacts WHERE account_id = (SELECT _ID FROM accounts WHERE account_name = '" + this.f794b.name + "' AND account_type = '" + this.f794b.type + "'))");
            }
        }
        return sb.toString();
    }

    public static d b(Context context, long j, int i) {
        d dVar;
        if (i == 1) {
            dVar = new d(context, j, C0030d.f800a, i, null);
        } else {
            dVar = new d(context, j, a.f796a, i, f.c());
        }
        return dVar;
    }

    public final void a(AccountWithDataSet accountWithDataSet) {
        this.f794b = accountWithDataSet;
        setSelection(a());
    }

    public final void a(ArrayList<String> arrayList) {
        Iterator<String> it;
        String str = null;
        if (arrayList != null) {
            str = null;
            if (arrayList.size() > 0) {
                String str2 = "data_id IN (";
                while (arrayList.iterator().hasNext()) {
                    str2 = str2 + it.next() + ", ";
                }
                str = str2.substring(0, str2.length() - 2) + ")";
            }
        }
        setSelection(str);
    }
}
