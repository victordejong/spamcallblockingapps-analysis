package com.android.contacts.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.android.contacts.model.a;
import com.android.contacts.util.PermissionsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/RequestSMSPermissionsActivity.class */
public class RequestSMSPermissionsActivity extends RequestPermissionsActivityBase {
    private static final String TAG = RequestSMSPermissionsActivity.class.getSimpleName();
    private static final String[] REQUIRED_PERMISSIONS = {PermissionsUtil.READ_SMS};

    public static boolean startPermissionActivity(Context context) {
        return Build.VERSION.SDK_INT >= 23 ? startPermissionActivity(context, REQUIRED_PERMISSIONS, RequestSMSPermissionsActivity.class) : false;
    }

    protected static boolean startPermissionActivity(Context context, String[] strArr, Class<?> cls) {
        boolean z;
        if (!hasPermissions(context, strArr)) {
            if (context instanceof Activity) {
                Log.d(TAG, "REQUIRED_PERMISSIONS not granted -> show dialog");
                Intent intent = new Intent(context, cls);
                intent.putExtra(RequestPermissionsActivityBase.PREVIOUS_ACTIVITY_INTENT, ((Activity) context).getIntent());
                ((Activity) context).startActivity(intent);
            } else {
                Log.d(TAG, "Not Activity, maybe call From service or intent");
            }
            z = true;
        } else {
            a.a(context);
            z = false;
        }
        return z;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getDesiredPermissions() {
        return REQUIRED_PERMISSIONS;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getRequiredPermissions() {
        return REQUIRED_PERMISSIONS;
    }

    @Override // com.android.contacts.activities.RequestPermissionsActivityBase, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (strArr == null || strArr.length <= 0 || !isAllGranted(strArr, iArr)) {
            onRequestPermissionsResultDeny(strArr, iArr);
            return;
        }
        this.mPreviousActivityIntent.setFlags(65536);
        finish();
        overridePendingTransition(0, 0);
    }
}
