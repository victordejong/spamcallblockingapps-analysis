package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbao.class */
public final class zzbao {

    /* renamed from: a */
    private final Context f11596a;

    /* renamed from: b */
    private final zzbaz f11597b;

    /* renamed from: c */
    private final ViewGroup f11598c;

    /* renamed from: d */
    private zzbai f11599d;

    private zzbao(Context context, ViewGroup viewGroup, zzbaz zzbazVar) {
        this.f11596a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11598c = viewGroup;
        this.f11597b = zzbazVar;
        this.f11599d = null;
    }

    public zzbao(Context context, ViewGroup viewGroup, zzbdi zzbdiVar) {
        this(context, viewGroup, (zzbaz) zzbdiVar);
    }

    public final void onDestroy() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzbai zzbaiVar = this.f11599d;
        if (zzbaiVar != null) {
            zzbaiVar.destroy();
            this.f11598c.removeView(this.f11599d);
            this.f11599d = null;
        }
    }

    public final void onPause() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzbai zzbaiVar = this.f11599d;
        if (zzbaiVar != null) {
            zzbaiVar.pause();
        }
    }

    public final void zza(int i, int i2, int i3, int i4, int i5, boolean z, zzbaw zzbawVar) {
        if (this.f11599d == null) {
            zzzv.zza(this.f11597b.zzyq().zzqp(), this.f11597b.zzym(), "vpr2");
            Context context = this.f11596a;
            zzbaz zzbazVar = this.f11597b;
            this.f11599d = new zzbai(context, zzbazVar, i5, z, zzbazVar.zzyq().zzqp(), zzbawVar);
            this.f11598c.addView(this.f11599d, 0, new ViewGroup.LayoutParams(-1, -1));
            this.f11599d.zzd(i, i2, i3, i4);
            this.f11597b.zzav(false);
        }
    }

    public final void zze(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzbai zzbaiVar = this.f11599d;
        if (zzbaiVar != null) {
            zzbaiVar.zzd(i, i2, i3, i4);
        }
    }

    public final zzbai zzye() {
        Preconditions.checkMainThread("getAdVideoUnderlay must be called from the UI thread.");
        return this.f11599d;
    }
}
