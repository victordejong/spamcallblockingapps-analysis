package com.android.contacts.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ezmode.h;
import com.android.contacts.i;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/CallGuardAddToContactsActivity.class */
public class CallGuardAddToContactsActivity extends Activity {
    public static final String ASUS_CALL_GUARD_ADD_TO_CONTACTS_EMAIL = "add_to_contacts_email";
    public static final String ASUS_CALL_GUARD_ADD_TO_CONTACTS_NAME = "add_to_contacts_name";
    public static final String ASUS_CALL_GUARD_ADD_TO_CONTACTS_NUMBER = "add_to_contacts_number";
    private static final String TAG = "CallGuardAddToContactsActivity";
    private String mUnknownEmail;
    private String mUnknownName;
    private String mUnknownNumber;

    @Override // android.app.Activity
    public void onBackPressed() {
        Log.d(TAG, "onBackPressed.");
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "onCreate");
        Intent intent = getIntent();
        if (intent == null || intent.getExtras() == null) {
            Log.d(TAG, "intent is null");
            finish();
        } else {
            this.mUnknownNumber = intent.getExtras().getString(ASUS_CALL_GUARD_ADD_TO_CONTACTS_NUMBER);
            this.mUnknownName = intent.getExtras().getString(ASUS_CALL_GUARD_ADD_TO_CONTACTS_NAME);
            this.mUnknownEmail = intent.getExtras().getString(ASUS_CALL_GUARD_ADD_TO_CONTACTS_EMAIL);
        }
        if (!h.a(this)) {
            i.a(this.mUnknownNumber, this.mUnknownName, this.mUnknownEmail).show(getFragmentManager(), "dialog");
        } else if (!TextUtils.isEmpty(this.mUnknownNumber)) {
            Intent intent2 = new Intent("android.intent.action.EZ_NEW_CONTACT");
            intent2.putExtra("phone", this.mUnknownNumber);
            ImplicitIntentsUtil.startActivityInApp(this, intent2);
        }
    }
}
