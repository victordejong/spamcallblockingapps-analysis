package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {
    private final Intent mIntent;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        return new Intent(this.mIntent);
    }
}
