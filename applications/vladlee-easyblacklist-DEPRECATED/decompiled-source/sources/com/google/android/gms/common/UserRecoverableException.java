package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {

    /* renamed from: a */
    private final Intent f6166a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f6166a = intent;
    }

    public Intent getIntent() {
        return new Intent(this.f6166a);
    }
}
