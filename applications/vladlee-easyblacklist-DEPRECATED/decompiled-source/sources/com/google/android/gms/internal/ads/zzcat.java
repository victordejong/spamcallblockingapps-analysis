package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcat.class */
public final class zzcat implements Callable<zzcaj> {

    /* renamed from: a */
    private final zza f12834a;

    /* renamed from: b */
    private final zzbdr f12835b;

    /* renamed from: c */
    private final Context f12836c;

    /* renamed from: d */
    private final Executor f12837d;

    /* renamed from: e */
    private final zzdq f12838e;

    /* renamed from: f */
    private final zzazb f12839f;

    public zzcat(Context context, Executor executor, zzdq zzdqVar, zzazb zzazbVar, zza zzaVar, zzbdr zzbdrVar) {
        this.f12836c = context;
        this.f12837d = executor;
        this.f12838e = zzdqVar;
        this.f12839f = zzazbVar;
        this.f12834a = zzaVar;
        this.f12835b = zzbdrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ Context m3824a(zzcat zzcatVar) {
        return zzcatVar.f12836c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ Executor m3823b(zzcat zzcatVar) {
        return zzcatVar.f12837d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ zzdq m3822c(zzcat zzcatVar) {
        return zzcatVar.f12838e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ zzazb m3821d(zzcat zzcatVar) {
        return zzcatVar.f12839f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ zza m3820e(zzcat zzcatVar) {
        return zzcatVar.f12834a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ zzbdr m3819f(zzcat zzcatVar) {
        return zzcatVar.f12835b;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzcaj call() {
        zzcaj zzcajVar = new zzcaj(this);
        zzcajVar.zzakq();
        return zzcajVar;
    }
}
