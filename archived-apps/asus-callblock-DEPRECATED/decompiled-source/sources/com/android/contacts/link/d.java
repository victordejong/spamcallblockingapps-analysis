package com.android.contacts.link;

import android.content.Context;
import android.content.CursorLoader;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.vcard.SelectAccountActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/d.class */
public final class d extends CursorLoader {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f1663a = {"_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID, "display_name", "display_name_alt", SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET};
    }

    public d(Context context) {
        super(context);
        setUri(ContactsContract.RawContacts.CONTENT_URI);
        setProjection(a.f1663a);
        setSelection("contact_id IN (SELECT contact_id FROM (SELECT contact_id, COUNT(contact_id) AS count FROM raw_contacts GROUP BY contact_id HAVING count > 1) contacts_count)");
        setSelectionArgs(null);
        setSortOrder(null);
    }
}
