package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsj.class */
public final class zzsj extends ContentObserver {
    private final /* synthetic */ zzsi zzbqx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzsj(zzsi zzsiVar, Handler handler) {
        super(null);
        this.zzbqx = zzsiVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zzbqx.zzta();
        this.zzbqx.zztc();
    }
}
