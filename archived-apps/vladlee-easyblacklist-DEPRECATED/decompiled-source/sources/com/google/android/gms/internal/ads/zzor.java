package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzor.class */
public final class zzor implements Parcelable {
    public static final Parcelable.Creator<zzor> CREATOR = new apa();

    /* renamed from: a */
    private int f15261a;
    public final int zzapz;
    public final int zzaqa;
    public final int zzaqb;
    public final byte[] zzbha;

    public zzor(int i, int i2, int i3, byte[] bArr) {
        this.zzapz = i;
        this.zzaqb = i2;
        this.zzaqa = i3;
        this.zzbha = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzor(Parcel parcel) {
        this.zzapz = parcel.readInt();
        this.zzaqb = parcel.readInt();
        this.zzaqa = parcel.readInt();
        this.zzbha = parcel.readInt() != 0 ? parcel.createByteArray() : null;
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
        zzor zzorVar = (zzor) obj;
        return this.zzapz == zzorVar.zzapz && this.zzaqb == zzorVar.zzaqb && this.zzaqa == zzorVar.zzaqa && Arrays.equals(this.zzbha, zzorVar.zzbha);
    }

    public final int hashCode() {
        if (this.f15261a == 0) {
            this.f15261a = ((((((this.zzapz + 527) * 31) + this.zzaqb) * 31) + this.zzaqa) * 31) + Arrays.hashCode(this.zzbha);
        }
        return this.f15261a;
    }

    public final String toString() {
        int i = this.zzapz;
        int i2 = this.zzaqb;
        int i3 = this.zzaqa;
        boolean z = this.zzbha != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzapz);
        parcel.writeInt(this.zzaqb);
        parcel.writeInt(this.zzaqa);
        parcel.writeInt(this.zzbha != null ? 1 : 0);
        byte[] bArr = this.zzbha;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
