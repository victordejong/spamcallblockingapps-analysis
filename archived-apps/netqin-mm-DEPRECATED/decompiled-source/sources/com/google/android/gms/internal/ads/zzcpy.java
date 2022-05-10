package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpy.class */
public final class zzcpy extends zzasz {

    /* renamed from: a */
    public final /* synthetic */ zzcpv f26396a;

    public zzcpy(zzcpv zzcpvVar) {
        this.f26396a = zzcpvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    /* renamed from: a */
    public final void mo13941a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f26396a.f26390a.m15835a((zzbcg<InputStream>) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    /* renamed from: a */
    public final void mo13940a(zzazy zzazyVar) {
        this.f26396a.f26390a.m15834a(new zzbab(zzazyVar.f24693a, zzazyVar.f24694b));
    }
}
