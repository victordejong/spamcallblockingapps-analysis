package com.google.firebase.iid;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.firebase_messaging.zze;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.u */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/u.class */
public final class HandlerC3230u extends zze {

    /* renamed from: a */
    private final /* synthetic */ C3231v f19139a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3230u(C3231v vVar, Looper looper) {
        super(looper);
        this.f19139a = vVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        C3231v.m453a(this.f19139a, message);
    }
}
