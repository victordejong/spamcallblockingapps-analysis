package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaew;
import com.google.android.gms.internal.ads.zzaey;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzbdi;
import com.google.android.gms.internal.ads.zzty;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel.class */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzm();
    public final int orientation;
    public final String url;
    public final zzazb zzbll;
    public final zzty zzcbt;
    public final zzaew zzcwq;
    public final zzaey zzcws;
    public final zzbdi zzcza;
    public final zzd zzdhp;
    public final zzo zzdhq;
    public final String zzdhr;
    public final boolean zzdhs;
    public final String zzdht;
    public final zzt zzdhu;
    public final int zzdhv;
    public final String zzdhw;
    public final zzg zzdhx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdOverlayInfoParcel(zzd zzdVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzazb zzazbVar, String str4, zzg zzgVar, IBinder iBinder6) {
        this.zzdhp = zzdVar;
        this.zzcbt = (zzty) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzdhq = (zzo) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
        this.zzcza = (zzbdi) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder3));
        this.zzcwq = (zzaew) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder6));
        this.zzcws = (zzaey) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder4));
        this.zzdhr = str;
        this.zzdhs = z;
        this.zzdht = str2;
        this.zzdhu = (zzt) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder5));
        this.orientation = i;
        this.zzdhv = i2;
        this.url = str3;
        this.zzbll = zzazbVar;
        this.zzdhw = str4;
        this.zzdhx = zzgVar;
    }

    public AdOverlayInfoParcel(zzd zzdVar, zzty zztyVar, zzo zzoVar, zzt zztVar, zzazb zzazbVar) {
        this.zzdhp = zzdVar;
        this.zzcbt = zztyVar;
        this.zzdhq = zzoVar;
        this.zzcza = null;
        this.zzcwq = null;
        this.zzcws = null;
        this.zzdhr = null;
        this.zzdhs = false;
        this.zzdht = null;
        this.zzdhu = zztVar;
        this.orientation = -1;
        this.zzdhv = 4;
        this.url = null;
        this.zzbll = zzazbVar;
        this.zzdhw = null;
        this.zzdhx = null;
    }

    public AdOverlayInfoParcel(zzty zztyVar, zzo zzoVar, zzt zztVar, zzbdi zzbdiVar, int i, zzazb zzazbVar, String str, zzg zzgVar, String str2, String str3) {
        this.zzdhp = null;
        this.zzcbt = null;
        this.zzdhq = zzoVar;
        this.zzcza = zzbdiVar;
        this.zzcwq = null;
        this.zzcws = null;
        this.zzdhr = str2;
        this.zzdhs = false;
        this.zzdht = str3;
        this.zzdhu = null;
        this.orientation = i;
        this.zzdhv = 1;
        this.url = null;
        this.zzbll = zzazbVar;
        this.zzdhw = str;
        this.zzdhx = zzgVar;
    }

    public AdOverlayInfoParcel(zzty zztyVar, zzo zzoVar, zzt zztVar, zzbdi zzbdiVar, boolean z, int i, zzazb zzazbVar) {
        this.zzdhp = null;
        this.zzcbt = zztyVar;
        this.zzdhq = zzoVar;
        this.zzcza = zzbdiVar;
        this.zzcwq = null;
        this.zzcws = null;
        this.zzdhr = null;
        this.zzdhs = z;
        this.zzdht = null;
        this.zzdhu = zztVar;
        this.orientation = i;
        this.zzdhv = 2;
        this.url = null;
        this.zzbll = zzazbVar;
        this.zzdhw = null;
        this.zzdhx = null;
    }

    public AdOverlayInfoParcel(zzty zztyVar, zzo zzoVar, zzaew zzaewVar, zzaey zzaeyVar, zzt zztVar, zzbdi zzbdiVar, boolean z, int i, String str, zzazb zzazbVar) {
        this.zzdhp = null;
        this.zzcbt = zztyVar;
        this.zzdhq = zzoVar;
        this.zzcza = zzbdiVar;
        this.zzcwq = zzaewVar;
        this.zzcws = zzaeyVar;
        this.zzdhr = null;
        this.zzdhs = z;
        this.zzdht = null;
        this.zzdhu = zztVar;
        this.orientation = i;
        this.zzdhv = 3;
        this.url = str;
        this.zzbll = zzazbVar;
        this.zzdhw = null;
        this.zzdhx = null;
    }

    public AdOverlayInfoParcel(zzty zztyVar, zzo zzoVar, zzaew zzaewVar, zzaey zzaeyVar, zzt zztVar, zzbdi zzbdiVar, boolean z, int i, String str, String str2, zzazb zzazbVar) {
        this.zzdhp = null;
        this.zzcbt = zztyVar;
        this.zzdhq = zzoVar;
        this.zzcza = zzbdiVar;
        this.zzcwq = zzaewVar;
        this.zzcws = zzaeyVar;
        this.zzdhr = str2;
        this.zzdhs = z;
        this.zzdht = str;
        this.zzdhu = zztVar;
        this.orientation = i;
        this.zzdhv = 3;
        this.url = null;
        this.zzbll = zzazbVar;
        this.zzdhw = null;
        this.zzdhx = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzc(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdhp, i, false);
        SafeParcelWriter.writeIBinder(parcel, 3, ObjectWrapper.wrap(this.zzcbt).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.zzdhq).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 5, ObjectWrapper.wrap(this.zzcza).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 6, ObjectWrapper.wrap(this.zzcws).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdhr, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdhs);
        SafeParcelWriter.writeString(parcel, 9, this.zzdht, false);
        SafeParcelWriter.writeIBinder(parcel, 10, ObjectWrapper.wrap(this.zzdhu).asBinder(), false);
        SafeParcelWriter.writeInt(parcel, 11, this.orientation);
        SafeParcelWriter.writeInt(parcel, 12, this.zzdhv);
        SafeParcelWriter.writeString(parcel, 13, this.url, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.zzbll, i, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzdhw, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzdhx, i, false);
        SafeParcelWriter.writeIBinder(parcel, 18, ObjectWrapper.wrap(this.zzcwq).asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
