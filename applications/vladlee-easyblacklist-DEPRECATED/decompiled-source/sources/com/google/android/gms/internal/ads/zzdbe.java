package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbe.class */
public final class zzdbe extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdbe> CREATOR = new zzdbj();

    /* renamed from: a */
    private final zzdbh[] f14143a;

    /* renamed from: b */
    private final int[] f14144b;

    /* renamed from: c */
    private final int[] f14145c;

    /* renamed from: d */
    private final int f14146d;

    /* renamed from: e */
    private final int f14147e;

    /* renamed from: f */
    private final int f14148f;

    /* renamed from: g */
    private final int f14149g;
    public final zzdbh zzgoh;
    public final int zzgoi;
    public final int zzgoj;
    public final int zzgok;
    public final String zzgol;
    public final int zzgon;
    @Nullable
    public final Context zzup;

    public zzdbe(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        this.f14143a = zzdbh.values();
        this.f14144b = zzdbg.zzapn();
        this.f14145c = zzdbg.zzapo();
        this.zzup = null;
        this.f14146d = i;
        this.zzgoh = this.f14143a[i];
        this.zzgoi = i2;
        this.zzgoj = i3;
        this.zzgok = i4;
        this.zzgol = str;
        this.f14147e = i5;
        this.zzgon = this.f14144b[i5];
        this.f14148f = i6;
        this.f14149g = this.f14145c[i6];
    }

    private zzdbe(@Nullable Context context, zzdbh zzdbhVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.f14143a = zzdbh.values();
        this.f14144b = zzdbg.zzapn();
        this.f14145c = zzdbg.zzapo();
        this.zzup = context;
        this.f14146d = zzdbhVar.ordinal();
        this.zzgoh = zzdbhVar;
        this.zzgoi = i;
        this.zzgoj = i2;
        this.zzgok = i3;
        this.zzgol = str;
        this.zzgon = "oldest".equals(str2) ? zzdbg.zzgos : ("lru".equals(str2) || !"lfu".equals(str2)) ? zzdbg.zzgot : zzdbg.zzgou;
        this.f14147e = this.zzgon - 1;
        "onAdClosed".equals(str3);
        this.f14149g = zzdbg.zzgow;
        this.f14148f = this.f14149g - 1;
    }

    public static zzdbe zza(zzdbh zzdbhVar, Context context) {
        if (zzdbhVar == zzdbh.Rewarded) {
            return new zzdbe(context, zzdbhVar, ((Integer) zzve.zzoy().zzd(zzzn.zzcql)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcqr)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcqt)).intValue(), (String) zzve.zzoy().zzd(zzzn.zzcqv), (String) zzve.zzoy().zzd(zzzn.zzcqn), (String) zzve.zzoy().zzd(zzzn.zzcqp));
        } else if (zzdbhVar == zzdbh.Interstitial) {
            return new zzdbe(context, zzdbhVar, ((Integer) zzve.zzoy().zzd(zzzn.zzcqm)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcqs)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcqu)).intValue(), (String) zzve.zzoy().zzd(zzzn.zzcqw), (String) zzve.zzoy().zzd(zzzn.zzcqo), (String) zzve.zzoy().zzd(zzzn.zzcqq));
        } else if (zzdbhVar != zzdbh.AppOpen) {
            return null;
        } else {
            return new zzdbe(context, zzdbhVar, ((Integer) zzve.zzoy().zzd(zzzn.zzcqz)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcrb)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcrc)).intValue(), (String) zzve.zzoy().zzd(zzzn.zzcqx), (String) zzve.zzoy().zzd(zzzn.zzcqy), (String) zzve.zzoy().zzd(zzzn.zzcra));
        }
    }

    public static boolean zzapl() {
        return ((Boolean) zzve.zzoy().zzd(zzzn.zzcqk)).booleanValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f14146d);
        SafeParcelWriter.writeInt(parcel, 2, this.zzgoi);
        SafeParcelWriter.writeInt(parcel, 3, this.zzgoj);
        SafeParcelWriter.writeInt(parcel, 4, this.zzgok);
        SafeParcelWriter.writeString(parcel, 5, this.zzgol, false);
        SafeParcelWriter.writeInt(parcel, 6, this.f14147e);
        SafeParcelWriter.writeInt(parcel, 7, this.f14148f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
