package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zar;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/t.class */
public final class HandlerC1627t extends zar {

    /* renamed from: a */
    private final /* synthetic */ zaaw f6417a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC1627t(zaaw zaawVar, Looper looper) {
        super(looper);
        this.f6417a = zaawVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            zaaw.m5840b(this.f6417a);
        } else if (i != 2) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i2);
            Log.w("GoogleApiClientImpl", sb.toString());
        } else {
            zaaw.m5844a(this.f6417a);
        }
    }
}
