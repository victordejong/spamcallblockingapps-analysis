package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzle.class */
public final class zzle implements Parcelable {
    public static final Parcelable.Creator<zzle> CREATOR = new aoh();

    /* renamed from: a */
    private final zza[] f15100a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzle$zza.class */
    public interface zza extends Parcelable {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzle(Parcel parcel) {
        this.f15100a = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaVarArr = this.f15100a;
            if (i < zzaVarArr.length) {
                zzaVarArr[i] = (zza) parcel.readParcelable(zza.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public zzle(List<? extends zza> list) {
        this.f15100a = new zza[list.size()];
        list.toArray(this.f15100a);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f15100a, ((zzle) obj).f15100a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f15100a);
    }

    public final int length() {
        return this.f15100a.length;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f15100a.length);
        for (zza zzaVar : this.f15100a) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }

    public final zza zzas(int i) {
        return this.f15100a[i];
    }
}
