package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amt.class */
final class amt implements Executor {

    /* renamed from: a */
    private final /* synthetic */ Handler f7706a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public amt(Handler handler) {
        this.f7706a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7706a.post(runnable);
    }
}
