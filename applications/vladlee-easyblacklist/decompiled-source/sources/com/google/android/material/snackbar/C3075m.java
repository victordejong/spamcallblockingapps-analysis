package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Message;
import com.google.android.material.snackbar.C3072l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.snackbar.m */
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/m.class */
public final class C3075m implements Handler.Callback {

    /* renamed from: a */
    final /* synthetic */ C3072l f18546a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3075m(C3072l lVar) {
        this.f18546a = lVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        this.f18546a.m918a((C3072l.C3074b) message.obj);
        return true;
    }
}
