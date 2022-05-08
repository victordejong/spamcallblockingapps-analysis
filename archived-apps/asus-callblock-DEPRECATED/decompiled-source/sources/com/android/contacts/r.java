package com.android.contacts;

import android.content.CursorLoader;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/r.class */
public final class r extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2123a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f2124b;
    private static final Uri c;

    static {
        f2123a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "summ_count", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "group_ringtone", "system_id"} : new String[]{SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "summ_count", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "system_id"};
        f2124b = PhoneCapabilityTester.IsAsusDevice() ? 8 : 7;
        c = !PhoneCapabilityTester.IsUnbundled() ? Uri.parse(ContactsContract.Groups.CONTENT_SUMMARY_URI + "_asus") : ContactsContract.Groups.CONTENT_SUMMARY_URI;
    }
}
