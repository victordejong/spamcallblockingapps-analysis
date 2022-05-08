package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import javax.annotation.Nullable;
@SafeParcelable.Class(creator = "RegisterSectionInfoCreator")
@SafeParcelable.Reserved({1000, 8, 9, 10})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzu();
    @SafeParcelable.Field(m344id = 1)
    private final String name;
    @SafeParcelable.Field(defaultValue = "1", m344id = 4)
    private final int weight;
    @SafeParcelable.Field(m344id = 2)
    private final String zzaa;
    @SafeParcelable.Field(m344id = 3)
    private final boolean zzab;
    @SafeParcelable.Field(m344id = 5)
    private final boolean zzac;
    @SafeParcelable.Field(m344id = 6)
    private final String zzad;
    @Nullable
    @SafeParcelable.Field(m344id = 7)
    private final zzn[] zzae;
    @SafeParcelable.Field(m344id = 11)
    private final String zzaf;
    @SafeParcelable.Field(m344id = 12)
    private final zzv zzag;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(m343id = 1) String str, @SafeParcelable.Param(m343id = 2) String str2, @SafeParcelable.Param(m343id = 3) boolean z, @SafeParcelable.Param(m343id = 4) int i, @SafeParcelable.Param(m343id = 5) boolean z2, @SafeParcelable.Param(m343id = 6) String str3, @SafeParcelable.Param(m343id = 7) zzn[] zznVarArr, @SafeParcelable.Param(m343id = 11) String str4, @SafeParcelable.Param(m343id = 12) zzv zzvVar) {
        this.name = str;
        this.zzaa = str2;
        this.zzab = z;
        this.weight = i;
        this.zzac = z2;
        this.zzad = str3;
        this.zzae = zznVarArr;
        this.zzaf = str4;
        this.zzag = zzvVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.zzab == zzsVar.zzab && this.weight == zzsVar.weight && this.zzac == zzsVar.zzac && Objects.equal(this.name, zzsVar.name) && Objects.equal(this.zzaa, zzsVar.zzaa) && Objects.equal(this.zzad, zzsVar.zzad) && Objects.equal(this.zzaf, zzsVar.zzaf) && Objects.equal(this.zzag, zzsVar.zzag) && Arrays.equals(this.zzae, zzsVar.zzae);
    }

    public final int hashCode() {
        return Objects.hashCode(this.name, this.zzaa, Boolean.valueOf(this.zzab), Integer.valueOf(this.weight), Boolean.valueOf(this.zzac), this.zzad, Integer.valueOf(Arrays.hashCode(this.zzae)), this.zzaf, this.zzag);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.name, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzaa, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzab);
        SafeParcelWriter.writeInt(parcel, 4, this.weight);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzac);
        SafeParcelWriter.writeString(parcel, 6, this.zzad, false);
        SafeParcelWriter.writeTypedArray(parcel, 7, this.zzae, i, false);
        SafeParcelWriter.writeString(parcel, 11, this.zzaf, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzag, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
