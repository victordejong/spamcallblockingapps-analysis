package com.android.contacts.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.android.contacts.model.a;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/RequestNecessaryPermissionsActivity.class */
public class RequestNecessaryPermissionsActivity extends NecessaryPermissionDenyActivity {
    private static final String TAG = RequestNecessaryPermissionsActivity.class.getSimpleName();

    public static void startPermissionActivity(Activity activity, Parcelable parcelable, String[] strArr) {
        Log.i(TAG, "RequestNecessaryPermissionsActivity start: " + activity);
        Intent intent = new Intent(activity, RequestNecessaryPermissionsActivity.class);
        intent.putExtra(RequestPermissionsActivityBase.PREVIOUS_ACTIVITY_INTENT, parcelable);
        intent.setFlags(65536);
        activity.startActivity(intent);
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.NecessaryPermissionDenyActivity, com.android.contacts.activities.RequestPermissionsActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mLayout.setVisibility(8);
    }

    @Override // com.android.contacts.activities.NecessaryPermissionDenyActivity, com.android.contacts.activities.RequestPermissionsActivityBase, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr == null || strArr.length <= 0 || !isAllGranted(strArr, iArr)) {
            onRequestPermissionsResultDeny(strArr, iArr);
            return;
        }
        Log.d(TAG, "required_permission Allow");
        PhoneCapabilityTester.IsSystemAppChecking(getApplicationContext());
        a.a(this);
        a.a();
        this.mPreviousActivityIntent.setFlags(65536);
        startActivity(this.mPreviousActivityIntent);
        finish();
        overridePendingTransition(0, 0);
    }
}
