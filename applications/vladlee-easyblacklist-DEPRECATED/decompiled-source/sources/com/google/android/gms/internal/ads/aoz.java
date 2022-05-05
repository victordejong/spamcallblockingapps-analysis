package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoz.class */
final class aoz implements ThreadFactory {

    /* renamed from: a */
    private final /* synthetic */ String f8088a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aoz(String str) {
        this.f8088a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f8088a);
    }
}
