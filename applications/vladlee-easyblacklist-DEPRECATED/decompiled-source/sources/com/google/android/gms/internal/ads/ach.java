package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ach.class */
public abstract class ach<T> extends acr<T> {

    /* renamed from: a */
    boolean f7214a = true;

    /* renamed from: b */
    private final Executor f7215b;

    /* renamed from: c */
    private final /* synthetic */ acf f7216c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ach(acf acfVar, Executor executor) {
        this.f7216c = acfVar;
        this.f7215b = (Executor) zzdei.checkNotNull(executor);
    }

    /* renamed from: a */
    abstract void mo5462a(T t);

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: a */
    final void mo5453a(T t, Throwable th) {
        this.f7216c.f7213a = null;
        if (th == null) {
            mo5462a(t);
        } else if (th instanceof ExecutionException) {
            this.f7216c.setException(th.getCause());
        } else {
            boolean z = th instanceof CancellationException;
            acf acfVar = this.f7216c;
            if (z) {
                acfVar.cancel(false);
            } else {
                acfVar.setException(th);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: a */
    final boolean mo5454a() {
        return this.f7216c.isDone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m5463b() {
        try {
            this.f7215b.execute(this);
        } catch (RejectedExecutionException e) {
            if (this.f7214a) {
                this.f7216c.setException(e);
            }
        }
    }
}
