package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvp.class */
public final class zzvp extends zzgc implements zzvn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        Parcel a = m3259a();
        zzge.zza(a, publisherAdViewOptions);
        m3256b(9, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzaby zzabyVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzabyVar);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadi zzadiVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzadiVar);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadj zzadjVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzadjVar);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadu zzaduVar, zzuj zzujVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaduVar);
        zzge.zza(a, zzujVar);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadv zzadvVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzadvVar);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzagz zzagzVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzagzVar);
        m3256b(13, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzahh zzahhVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzahhVar);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(String str, zzadp zzadpVar, zzado zzadoVar) {
        Parcel a = m3259a();
        a.writeString(str);
        zzge.zza(a, zzadpVar);
        zzge.zza(a, zzadoVar);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zzb(zzvh zzvhVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzvhVar);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zzb(zzwi zzwiVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzwiVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzvm zzpd() {
        zzvm zzvmVar;
        Parcel a = m3258a(1, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzvmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzvmVar = queryLocalInterface instanceof zzvm ? (zzvm) queryLocalInterface : new zzvo(readStrongBinder);
        }
        a.recycle();
        return zzvmVar;
    }
}
