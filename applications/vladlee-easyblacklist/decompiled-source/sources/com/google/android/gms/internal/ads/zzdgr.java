package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgr.class */
public abstract class zzdgr<V> extends zzdgo<V> implements zzdhe<V> {
    @Override // com.google.android.gms.internal.ads.zzdhe
    public void addListener(Runnable runnable, Executor executor) {
        mo3546b().addListener(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract zzdhe<? extends V> mo3546b();
}
