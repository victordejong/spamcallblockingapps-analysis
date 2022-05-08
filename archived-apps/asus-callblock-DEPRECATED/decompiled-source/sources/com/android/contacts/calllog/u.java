package com.android.contacts.calllog;

import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f761a;

    static {
        f761a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "type", "label", "number", "normalized_number", "photo_id", "lookup", PhotoSelectionActivity.PHOTO_URI, "times_contacted", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name", "type", "label", "number", "normalized_number", "photo_id", "lookup", PhotoSelectionActivity.PHOTO_URI, "times_contacted"};
    }
}
