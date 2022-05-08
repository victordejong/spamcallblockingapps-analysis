package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abt.class */
public abstract class abt<V, X extends Throwable, F, T> extends ack<V> implements Runnable {
    @NullableDecl

    /* renamed from: a */
    private zzdhe<? extends V> f7188a;
    @NullableDecl

    /* renamed from: b */
    private Class<X> f7189b;
    @NullableDecl

    /* renamed from: c */
    private F f7190c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abt(zzdhe<? extends V> zzdheVar, Class<X> cls, F f) {
        this.f7188a = (zzdhe) zzdei.checkNotNull(zzdheVar);
        this.f7189b = (Class) zzdei.checkNotNull(cls);
        this.f7190c = (F) zzdei.checkNotNull(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <X extends Throwable, V> zzdhe<V> m5492a(zzdhe<? extends V> zzdheVar, Class<X> cls, zzdgf<? super X, ? extends V> zzdgfVar, Executor executor) {
        abs absVar = new abs(zzdheVar, cls, zzdgfVar);
        zzdheVar.addListener(absVar, zzdhg.m3544a(executor, absVar));
        return absVar;
    }

    @NullableDecl
    /* renamed from: a */
    abstract T mo5490a(F f, X x);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: a */
    public final String mo3577a() {
        String str;
        zzdhe<? extends V> zzdheVar = this.f7188a;
        Class<X> cls = this.f7189b;
        F f = this.f7190c;
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
        if (cls != null && f != null) {
            String valueOf2 = String.valueOf(cls);
            String valueOf3 = String.valueOf(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
            sb2.append(str);
            sb2.append("exceptionType=[");
            sb2.append(valueOf2);
            sb2.append("], fallback=[");
            sb2.append(valueOf3);
            sb2.append("]");
            return sb2.toString();
        } else if (a == null) {
            return null;
        } else {
            String valueOf4 = String.valueOf(str);
            String valueOf5 = String.valueOf(a);
            return valueOf5.length() != 0 ? valueOf4.concat(valueOf5) : new String(valueOf4);
        }
    }

    /* renamed from: a */
    abstract void mo5491a(@NullableDecl T t);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: b */
    public final void mo3566b() {
        m3567a((Future<?>) this.f7188a);
        this.f7188a = null;
        this.f7189b = null;
        this.f7190c = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abt.run():void");
    }
}
