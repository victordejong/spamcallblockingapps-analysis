package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zar;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.ao */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ao.class */
public final class HandlerC1592ao extends zar {

    /* renamed from: a */
    private final /* synthetic */ zack f6350a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC1592ao(zack zackVar, Looper looper) {
        super(looper);
        this.f6350a = zackVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zack zackVar;
        zack zackVar2;
        Status a;
        int i = message.what;
        if (i == 0) {
            PendingResult<?> pendingResult = (PendingResult) message.obj;
            obj = this.f6350a.f6516e;
            synchronized (obj) {
                if (pendingResult == null) {
                    zackVar2 = this.f6350a.f6513b;
                    a = new Status(13, "Transform returned null");
                } else if (pendingResult instanceof zacc) {
                    zackVar2 = this.f6350a.f6513b;
                    a = ((zacc) pendingResult).m5827a();
                } else {
                    zackVar = this.f6350a.f6513b;
                    zackVar.zaa(pendingResult);
                }
                zackVar2.m5822a(a);
            }
        } else if (i != 1) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(70);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i2);
            Log.e("TransformedResultImpl", sb.toString());
        } else {
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
            throw runtimeException;
        }
    }
}
