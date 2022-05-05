package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkn.class */
public class zzbkn {

    /* renamed from: a */
    private final zzbme f12043a;

    /* renamed from: b */
    private final View f12044b;

    /* renamed from: c */
    private final zzczk f12045c;

    /* renamed from: d */
    private final zzbdi f12046d;

    public zzbkn(View view, zzbdi zzbdiVar, zzbme zzbmeVar, zzczk zzczkVar) {
        this.f12044b = view;
        this.f12046d = zzbdiVar;
        this.f12043a = zzbmeVar;
        this.f12045c = zzczkVar;
    }

    public zzbpw zza(Set<zzbsu<zzbqb>> set) {
        return new zzbpw(set);
    }

    public final zzbdi zzaft() {
        return this.f12046d;
    }

    public final View zzaga() {
        return this.f12044b;
    }

    public final zzbme zzagh() {
        return this.f12043a;
    }

    public final zzczk zzagi() {
        return this.f12045c;
    }
}
