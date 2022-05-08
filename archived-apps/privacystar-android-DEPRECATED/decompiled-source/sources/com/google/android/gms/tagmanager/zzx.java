package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.tagmanager.ContainerHolder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzx.class */
final class zzx extends Handler {
    private final ContainerHolder.ContainerAvailableListener zzazu;
    private final /* synthetic */ zzv zzazv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzx(zzv zzvVar, ContainerHolder.ContainerAvailableListener containerAvailableListener, Looper looper) {
        super(looper);
        this.zzazv = zzvVar;
        this.zzazu = containerAvailableListener;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            zzdi.m329e("Don't know how to handle this message.");
            return;
        }
        this.zzazu.onContainerAvailable(this.zzazv, (String) message.obj);
    }
}
