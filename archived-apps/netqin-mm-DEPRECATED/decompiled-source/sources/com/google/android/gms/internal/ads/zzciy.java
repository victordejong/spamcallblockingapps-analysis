package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciy.class */
public final class zzciy implements Callable<zzcil> {

    /* renamed from: a */
    public final zzb f26093a;

    /* renamed from: b */
    public final zzbgr f26094b;

    /* renamed from: c */
    public final Context f26095c;

    /* renamed from: d */
    public final Executor f26096d;

    /* renamed from: e */
    public final zzeg f26097e;

    /* renamed from: f */
    public final zzbbx f26098f;

    public zzciy(Context context, Executor executor, zzeg zzegVar, zzbbx zzbbxVar, zzb zzbVar, zzbgr zzbgrVar) {
        this.f26095c = context;
        this.f26096d = executor;
        this.f26097e = zzegVar;
        this.f26098f = zzbbxVar;
        this.f26093a = zzbVar;
        this.f26094b = zzbgrVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Context m14166a(zzciy zzciyVar) {
        return zzciyVar.f26095c;
    }

    /* renamed from: b */
    public static /* synthetic */ Executor m14165b(zzciy zzciyVar) {
        return zzciyVar.f26096d;
    }

    /* renamed from: c */
    public static /* synthetic */ zzeg m14164c(zzciy zzciyVar) {
        return zzciyVar.f26097e;
    }

    /* renamed from: d */
    public static /* synthetic */ zzbbx m14163d(zzciy zzciyVar) {
        return zzciyVar.f26098f;
    }

    /* renamed from: e */
    public static /* synthetic */ zzb m14162e(zzciy zzciyVar) {
        return zzciyVar.f26093a;
    }

    /* renamed from: f */
    public static /* synthetic */ zzbgr m14161f(zzciy zzciyVar) {
        return zzciyVar.f26094b;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzcil call() throws Exception {
        zzcil zzcilVar = new zzcil(this);
        zzcilVar.m14171b();
        return zzcilVar;
    }
}
