package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import p131c.p161d.p170b.p224d.p252g.p253a.pc0;
import p131c.p161d.p170b.p224d.p252g.p253a.qc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjn.class */
public final class zzjn implements Parcelable, Comparator<zza> {
    public static final Parcelable.Creator<zzjn> CREATOR = new pc0();

    /* renamed from: a */
    public final zza[] f28418a;

    /* renamed from: b */
    public int f28419b;

    /* renamed from: c */
    public final int f28420c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjn$zza.class */
    public static final class zza implements Parcelable {
        public static final Parcelable.Creator<zza> CREATOR = new qc0();

        /* renamed from: a */
        public int f28421a;

        /* renamed from: b */
        public final UUID f28422b;

        /* renamed from: c */
        public final String f28423c;

        /* renamed from: d */
        public final byte[] f28424d;

        /* renamed from: e */
        public final boolean f28425e;

        public zza(Parcel parcel) {
            this.f28422b = new UUID(parcel.readLong(), parcel.readLong());
            this.f28423c = parcel.readString();
            this.f28424d = parcel.createByteArray();
            this.f28425e = parcel.readByte() != 0;
        }

        public zza(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, false);
        }

        public zza(UUID uuid, String str, byte[] bArr, boolean z) {
            zzoz.m11698a(uuid);
            this.f28422b = uuid;
            zzoz.m11698a(str);
            this.f28423c = str;
            zzoz.m11698a(bArr);
            this.f28424d = bArr;
            this.f28425e = false;
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
            return this.f28423c.equals(zzaVar.f28423c) && zzpq.m11624a(this.f28422b, zzaVar.f28422b) && Arrays.equals(this.f28424d, zzaVar.f28424d);
        }

        public final int hashCode() {
            if (this.f28421a == 0) {
                this.f28421a = (((this.f28422b.hashCode() * 31) + this.f28423c.hashCode()) * 31) + Arrays.hashCode(this.f28424d);
            }
            return this.f28421a;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f28422b.getMostSignificantBits());
            parcel.writeLong(this.f28422b.getLeastSignificantBits());
            parcel.writeString(this.f28423c);
            parcel.writeByteArray(this.f28424d);
            parcel.writeByte(this.f28425e ? (byte) 1 : (byte) 0);
        }
    }

    public zzjn(Parcel parcel) {
        zza[] zzaVarArr = (zza[]) parcel.createTypedArray(zza.CREATOR);
        this.f28418a = zzaVarArr;
        this.f28420c = zzaVarArr.length;
    }

    public zzjn(List<zza> list) {
        this(false, (zza[]) list.toArray(new zza[list.size()]));
    }

    public zzjn(boolean z, zza... zzaVarArr) {
        zza[] zzaVarArr2 = z ? (zza[]) zzaVarArr.clone() : zzaVarArr;
        Arrays.sort(zzaVarArr2, this);
        for (int i = 1; i < zzaVarArr2.length; i++) {
            if (zzaVarArr2[i - 1].f28422b.equals(zzaVarArr2[i].f28422b)) {
                String valueOf = String.valueOf(zzaVarArr2[i].f28422b);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                sb.append("Duplicate data for uuid: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        this.f28418a = zzaVarArr2;
        this.f28420c = zzaVarArr2.length;
    }

    public zzjn(zza... zzaVarArr) {
        this(true, zzaVarArr);
    }

    /* renamed from: a */
    public final zza m11904a(int i) {
        return this.f28418a[i];
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zza zzaVar, zza zzaVar2) {
        zza zzaVar3 = zzaVar;
        zza zzaVar4 = zzaVar2;
        return zzha.f28246b.equals(zzaVar3.f28422b) ? zzha.f28246b.equals(zzaVar4.f28422b) ? 0 : 1 : zzaVar3.f28422b.compareTo(zzaVar4.f28422b);
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
        if (obj == null || zzjn.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f28418a, ((zzjn) obj).f28418a);
    }

    public final int hashCode() {
        if (this.f28419b == 0) {
            this.f28419b = Arrays.hashCode(this.f28418a);
        }
        return this.f28419b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f28418a, 0);
    }
}
