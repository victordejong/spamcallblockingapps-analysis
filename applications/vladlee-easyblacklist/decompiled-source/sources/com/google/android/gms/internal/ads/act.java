package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/act.class */
public final class act implements Executor {

    /* renamed from: a */
    boolean f7231a = true;

    /* renamed from: b */
    private final /* synthetic */ Executor f7232b;

    /* renamed from: c */
    private final /* synthetic */ zzdfs f7233c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public act(Executor executor, zzdfs zzdfsVar) {
        this.f7232b = executor;
        this.f7233c = zzdfsVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f7232b.execute(new acv(this, runnable));
        } catch (RejectedExecutionException e) {
            if (this.f7231a) {
                this.f7233c.setException(e);
            }
        }
    }
}
