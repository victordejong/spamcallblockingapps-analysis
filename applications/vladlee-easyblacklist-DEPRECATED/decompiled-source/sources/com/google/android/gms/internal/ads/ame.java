package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ame.class */
final class ame extends zzddu {

    /* renamed from: a */
    private final /* synthetic */ amf f7599a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ame(amf amfVar, Looper looper) {
        super(looper);
        this.f7599a = amfVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f7599a.m4938a(message);
    }
}
