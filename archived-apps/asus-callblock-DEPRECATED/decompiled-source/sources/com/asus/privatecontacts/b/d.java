package com.asus.privatecontacts.b;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.android.contacts.preference.ContactsPreferences;
import com.asus.privatecontacts.a.f;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b/d.class */
public final class d {
    public static String a(Context context, f fVar) {
        String string;
        if (fVar == null) {
            string = context.getResources().getString(2131755855);
        } else {
            ContentValues contentValues = fVar.f2998a;
            String asString = contentValues.getAsString("display_name");
            String asString2 = contentValues.getAsString("display_name_alt");
            ContactsPreferences contactsPreferences = new ContactsPreferences(context);
            if (TextUtils.isEmpty(asString) || TextUtils.isEmpty(asString2)) {
                string = context.getResources().getString(2131755855);
            } else {
                string = asString;
                if (contactsPreferences.getDisplayOrder() != 1) {
                    string = asString2;
                }
            }
        }
        return string;
    }
}
