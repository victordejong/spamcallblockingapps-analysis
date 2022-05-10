package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import p131c.p161d.p170b.p224d.p252g.p253a.v10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyg.class */
public abstract class zzdyg<T> extends zzdyy<T> {
    public final Executor zzhsx;
    public boolean zzhsy = true;
    public final /* synthetic */ v10 zzhsz;

    public zzdyg(v10 v10Var, Executor executor) {
        this.zzhsz = v10Var;
        zzdwd.m13096a(executor);
        this.zzhsx = executor;
    }

    public final void execute() {
        try {
            this.zzhsx.execute(this);
        } catch (RejectedExecutionException e) {
            if (this.zzhsy) {
                this.zzhsz.mo12971a((Throwable) e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final boolean isDone() {
        return this.zzhsz.isDone();
    }

    public abstract void setValue(T t);

    @Override // com.google.android.gms.internal.ads.zzdyy
    public final void zzb(T t, Throwable th) {
        this.zzhsz.f15691p = null;
        if (th == null) {
            setValue(t);
        } else if (th instanceof ExecutionException) {
            this.zzhsz.mo12971a(th.getCause());
        } else if (th instanceof CancellationException) {
            this.zzhsz.cancel(false);
        } else {
            this.zzhsz.mo12971a(th);
        }
    }
}
