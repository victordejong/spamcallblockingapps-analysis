package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabg.class */
public final class zabg extends zar {

    /* renamed from: a */
    private final /* synthetic */ zabe f7232a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zabg(zabe zabeVar, Looper looper) {
        super(looper);
        this.f7232a = zabeVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ((zabd) message.obj).m14795a(this.f7232a);
        } else if (i != 2) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i);
            Log.w("GACStateManager", sb.toString());
        } else {
            throw ((RuntimeException) message.obj);
        }
    }
}
