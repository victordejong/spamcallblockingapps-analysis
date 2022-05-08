package com.android.contacts.detail;

import android.app.IntentService;
import android.content.ContentValues;
import android.content.Intent;
import android.provider.ContactsContract;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/SipCallCalllogService.class */
public class SipCallCalllogService extends IntentService {
    private static final String ID_FOR_SIPCALL = "sip_call_id";
    private static final String TAG = "SipCallCalllogService";

    public SipCallCalllogService() {
        super(TAG);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        long longExtra = intent.getLongExtra(ID_FOR_SIPCALL, -1L);
        try {
            if (longExtra > 0) {
                try {
                    if (!(getContentResolver().update(ContactsContract.DataUsageFeedback.FEEDBACK_URI.buildUpon().appendPath(String.valueOf(longExtra)).appendQueryParameter("type", "call").build(), new ContentValues(), null, null) > 0)) {
                        Log.w(TAG, "DataUsageFeedback increment failed");
                    }
                } catch (SecurityException e) {
                    Log.w(TAG, "DataUsageFeedback increment failed", e);
                }
            } else {
                Log.w(TAG, "Invalid Data ID");
            }
        } catch (Exception e2) {
            Log.i(TAG, e2.toString());
        }
    }
}
