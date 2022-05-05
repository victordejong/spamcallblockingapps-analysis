package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zziv.class */
public final class zziv implements Parcelable, Comparator<zza> {
    public static final Parcelable.Creator<zziv> CREATOR = new anb();

    /* renamed from: a */
    private final zza[] f14944a;

    /* renamed from: b */
    private int f14945b;
    public final int zzamn;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zziv$zza.class */
    public static final class zza implements Parcelable {
        public static final Parcelable.Creator<zza> CREATOR = new anc();

        /* renamed from: a */
        private int f14946a;

        /* renamed from: b */
        private final UUID f14947b;

        /* renamed from: c */
        private final String f14948c;

        /* renamed from: d */
        private final byte[] f14949d;
        public final boolean zzamo;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(Parcel parcel) {
            this.f14947b = new UUID(parcel.readLong(), parcel.readLong());
            this.f14948c = parcel.readString();
            this.f14949d = parcel.createByteArray();
            this.zzamo = parcel.readByte() != 0;
        }

        public zza(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, (byte) 0);
        }

        private zza(UUID uuid, String str, byte[] bArr, byte b) {
            this.f14947b = (UUID) zzoc.checkNotNull(uuid);
            this.f14948c = (String) zzoc.checkNotNull(str);
            this.f14949d = (byte[]) zzoc.checkNotNull(bArr);
            this.zzamo = false;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            zza zzaVar = (zza) obj;
            return this.f14948c.equals(zzaVar.f14948c) && zzoq.zza(this.f14947b, zzaVar.f14947b) && Arrays.equals(this.f14949d, zzaVar.f14949d);
        }

        public final int hashCode() {
            if (this.f14946a == 0) {
                this.f14946a = (((this.f14947b.hashCode() * 31) + this.f14948c.hashCode()) * 31) + Arrays.hashCode(this.f14949d);
            }
            return this.f14946a;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f14947b.getMostSignificantBits());
            parcel.writeLong(this.f14947b.getLeastSignificantBits());
            parcel.writeString(this.f14948c);
            parcel.writeByteArray(this.f14949d);
            parcel.writeByte(this.zzamo ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziv(Parcel parcel) {
        this.f14944a = (zza[]) parcel.createTypedArray(zza.CREATOR);
        this.zzamn = this.f14944a.length;
    }

    public zziv(zza... zzaVarArr) {
        this(zzaVarArr, (byte) 0);
    }

    private zziv(zza[] zzaVarArr, byte b) {
        zza[] zzaVarArr2 = (zza[]) zzaVarArr.clone();
        Arrays.sort(zzaVarArr2, this);
        for (int i = 1; i < zzaVarArr2.length; i++) {
            if (zzaVarArr2[i - 1].f14947b.equals(zzaVarArr2[i].f14947b)) {
                String valueOf = String.valueOf(zzaVarArr2[i].f14947b);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                sb.append("Duplicate data for uuid: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        this.f14944a = zzaVarArr2;
        this.zzamn = zzaVarArr2.length;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zza zzaVar, zza zzaVar2) {
        zza zzaVar3 = zzaVar;
        zza zzaVar4 = zzaVar2;
        return zzgi.zzacb.equals(zzaVar3.f14947b) ? zzgi.zzacb.equals(zzaVar4.f14947b) ? 0 : 1 : zzaVar3.f14947b.compareTo(zzaVar4.f14947b);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f14944a, ((zziv) obj).f14944a);
    }

    public final int hashCode() {
        if (this.f14945b == 0) {
            this.f14945b = Arrays.hashCode(this.f14944a);
        }
        return this.f14945b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f14944a, 0);
    }

    public final zza zzaa(int i) {
        return this.f14944a[i];
    }
}
