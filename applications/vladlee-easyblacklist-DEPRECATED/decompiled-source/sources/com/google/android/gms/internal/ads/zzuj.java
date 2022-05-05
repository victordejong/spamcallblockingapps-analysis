package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuj.class */
public final class zzuj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuj> CREATOR = new zzum();

    /* renamed from: a */
    private boolean f15577a;
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzabg;
    public final boolean zzbmc;
    public final boolean zzcco;
    public final zzuj[] zzccp;
    public final boolean zzccq;
    public boolean zzccr;
    public boolean zzccs;
    public boolean zzccu;
    public boolean zzccv;

    public zzuj() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public zzuj(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzuj(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuj.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzuj(String str, int i, int i2, boolean z, int i3, int i4, zzuj[] zzujVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.zzabg = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzcco = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzccp = zzujVarArr;
        this.zzbmc = z2;
        this.zzccq = z3;
        this.zzccr = z4;
        this.zzccs = z5;
        this.f15577a = z6;
        this.zzccu = z7;
        this.zzccv = z8;
    }

    /* renamed from: a */
    private static int m3002a(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzc(DisplayMetrics displayMetrics) {
        return (int) (m3002a(displayMetrics) * displayMetrics.density);
    }

    public static zzuj zzg(Context context) {
        return new zzuj("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false);
    }

    public static zzuj zzol() {
        return new zzuj("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public static zzuj zzom() {
        return new zzuj("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false);
    }

    public static zzuj zzon() {
        return new zzuj("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzabg, false);
        SafeParcelWriter.writeInt(parcel, 3, this.height);
        SafeParcelWriter.writeInt(parcel, 4, this.heightPixels);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzcco);
        SafeParcelWriter.writeInt(parcel, 6, this.width);
        SafeParcelWriter.writeInt(parcel, 7, this.widthPixels);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzccp, i, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzbmc);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzccq);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzccr);
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzccs);
        SafeParcelWriter.writeBoolean(parcel, 13, this.f15577a);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzccu);
        SafeParcelWriter.writeBoolean(parcel, 15, this.zzccv);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final AdSize zzoo() {
        return zzb.zza(this.width, this.height, this.zzabg);
    }
}
