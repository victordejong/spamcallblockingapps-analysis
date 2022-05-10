package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.ce0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmc.class */
public final class zzmc implements Parcelable {
    public static final Parcelable.Creator<zzmc> CREATOR = new ce0();

    /* renamed from: a */
    public final zza[] f28625a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmc$zza.class */
    public interface zza extends Parcelable {
    }

    public zzmc(Parcel parcel) {
        this.f28625a = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaVarArr = this.f28625a;
            if (i < zzaVarArr.length) {
                zzaVarArr[i] = (zza) parcel.readParcelable(zza.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzmc(List<? extends zza> list) {
        zza[] zzaVarArr = new zza[list.size()];
        this.f28625a = zzaVarArr;
        list.toArray(zzaVarArr);
    }

    /* renamed from: a */
    public final int m11808a() {
        return this.f28625a.length;
    }

    /* renamed from: a */
    public final zza m11807a(int i) {
        return this.f28625a[i];
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmc.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f28625a, ((zzmc) obj).f28625a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f28625a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f28625a.length);
        for (zza zzaVar : this.f28625a) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }
}
