package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Message;
/* renamed from: com.google.android.material.snackbar.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/a.class */
final class C3061a implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            ((BaseTransientBottomBar) message.obj).m947a();
            return true;
        } else if (i != 1) {
            return false;
        } else {
            ((BaseTransientBottomBar) message.obj).m946a(message.arg1);
            return true;
        }
    }
}
