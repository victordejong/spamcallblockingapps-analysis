package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abx.class */
public abstract class abx<I, O, F, T> extends ack<O> implements Runnable {
    @NullableDecl

    /* renamed from: a */
    private zzdhe<? extends I> f7191a;
    @NullableDecl

    /* renamed from: b */
    private F f7192b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abx(zzdhe<? extends I> zzdheVar, F f) {
        this.f7191a = (zzdhe) zzdei.checkNotNull(zzdheVar);
        this.f7192b = (F) zzdei.checkNotNull(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <I, O> zzdhe<O> m5489a(zzdhe<I> zzdheVar, zzded<? super I, ? extends O> zzdedVar, Executor executor) {
        zzdei.checkNotNull(zzdedVar);
        aby abyVar = new aby(zzdheVar, zzdedVar);
        zzdheVar.addListener(abyVar, zzdhg.m3544a(executor, abyVar));
        return abyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <I, O> zzdhe<O> m5488a(zzdhe<I> zzdheVar, zzdgf<? super I, ? extends O> zzdgfVar, Executor executor) {
        zzdei.checkNotNull(executor);
        abz abzVar = new abz(zzdheVar, zzdgfVar);
        zzdheVar.addListener(abzVar, zzdhg.m3544a(executor, abzVar));
        return abzVar;
    }

    @NullableDecl
    /* renamed from: a */
    abstract T mo5486a(F f, @NullableDecl I i);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: a */
    public final String mo3577a() {
        String str;
        zzdhe<? extends I> zzdheVar = this.f7191a;
        F f = this.f7192b;
        String a = super.mo3577a();
        if (zzdheVar != null) {
            String valueOf = String.valueOf(zzdheVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f != null) {
            String valueOf2 = String.valueOf(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf2).length());
            sb2.append(str);
            sb2.append("function=[");
            sb2.append(valueOf2);
            sb2.append("]");
            return sb2.toString();
        } else if (a == null) {
            return null;
        } else {
            String valueOf3 = String.valueOf(str);
            String valueOf4 = String.valueOf(a);
            return valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
    }

    /* renamed from: a */
    abstract void mo5487a(@NullableDecl T t);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: b */
    public final void mo3566b() {
        m3567a((Future<?>) this.f7191a);
        this.f7191a = null;
        this.f7192b = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzdhe<? extends I> zzdheVar = this.f7191a;
        F f = this.f7192b;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = zzdheVar == null;
        if (f != null) {
            z = false;
        }
        if (!(isCancelled | z2) && !z) {
            this.f7191a = null;
            if (zzdheVar.isCancelled()) {
                m3571a((zzdhe) zzdheVar);
                return;
            }
            try {
                try {
                    Object a = mo5486a((abx<I, O, F, T>) f, (F) zzdgs.zzb(zzdheVar));
                    this.f7192b = null;
                    mo5487a((abx<I, O, F, T>) a);
                } catch (Throwable th) {
                    try {
                        setException(th);
                        this.f7192b = null;
                    } catch (Throwable th2) {
                        this.f7192b = null;
                        throw th2;
                    }
                }
            } catch (Error e) {
                setException(e);
            } catch (CancellationException e2) {
                cancel(false);
            } catch (RuntimeException e3) {
                setException(e3);
            } catch (ExecutionException e4) {
                setException(e4.getCause());
            }
        }
    }
}
