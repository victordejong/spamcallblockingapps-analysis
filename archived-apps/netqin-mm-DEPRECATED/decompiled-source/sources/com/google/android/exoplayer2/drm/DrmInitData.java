package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import p131c.p161d.p170b.p188c.C2964r;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData.class */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new C7132a();

    /* renamed from: a */
    public final SchemeData[] f22043a;

    /* renamed from: b */
    public int f22044b;

    /* renamed from: c */
    public final String f22045c;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new C7131a();

        /* renamed from: a */
        public int f22046a;

        /* renamed from: b */
        public final UUID f22047b;

        /* renamed from: c */
        public final String f22048c;

        /* renamed from: d */
        public final String f22049d;

        /* renamed from: e */
        public final byte[] f22050e;

        /* renamed from: com.google.android.exoplayer2.drm.DrmInitData$SchemeData$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$SchemeData$a.class */
        public static final class C7131a implements Parcelable.Creator<SchemeData> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        }

        public SchemeData(Parcel parcel) {
            this.f22047b = new UUID(parcel.readLong(), parcel.readLong());
            this.f22048c = parcel.readString();
            String readString = parcel.readString();
            C2885h0.m28670a(readString);
            this.f22049d = readString;
            this.f22050e = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            C2877e.m28737a(uuid);
            this.f22047b = uuid;
            this.f22048c = str;
            C2877e.m28737a(str2);
            this.f22049d = str2;
            this.f22050e = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            boolean z = false;
            if (C2885h0.m28669a((Object) this.f22048c, (Object) schemeData.f22048c)) {
                z = false;
                if (C2885h0.m28669a((Object) this.f22049d, (Object) schemeData.f22049d)) {
                    z = false;
                    if (C2885h0.m28669a(this.f22047b, schemeData.f22047b)) {
                        z = false;
                        if (Arrays.equals(this.f22050e, schemeData.f22050e)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.f22046a == 0) {
                int hashCode = this.f22047b.hashCode();
                String str = this.f22048c;
                this.f22046a = (((((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.f22049d.hashCode()) * 31) + Arrays.hashCode(this.f22050e);
            }
            return this.f22046a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f22047b.getMostSignificantBits());
            parcel.writeLong(this.f22047b.getLeastSignificantBits());
            parcel.writeString(this.f22048c);
            parcel.writeString(this.f22049d);
            parcel.writeByteArray(this.f22050e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DrmInitData$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DrmInitData$a.class */
    public static final class C7132a implements Parcelable.Creator<DrmInitData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    }

    public DrmInitData(Parcel parcel) {
        this.f22045c = parcel.readString();
        Object[] createTypedArray = parcel.createTypedArray(SchemeData.CREATOR);
        C2885h0.m28670a(createTypedArray);
        SchemeData[] schemeDataArr = (SchemeData[]) createTypedArray;
        this.f22043a = schemeDataArr;
        int length = schemeDataArr.length;
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.f22045c = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f22043a = schemeDataArr2;
        int length = schemeDataArr2.length;
        Arrays.sort(schemeDataArr2, this);
    }

    public DrmInitData(String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this(null, schemeDataArr);
    }

    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        return C2964r.f10674a.equals(schemeData.f22047b) ? C2964r.f10674a.equals(schemeData2.f22047b) ? 0 : 1 : schemeData.f22047b.compareTo(schemeData2.f22047b);
    }

    /* renamed from: a */
    public DrmInitData m18618a(String str) {
        return C2885h0.m28669a((Object) this.f22045c, (Object) str) ? this : new DrmInitData(str, false, this.f22043a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DrmInitData.class != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        if (!C2885h0.m28669a((Object) this.f22045c, (Object) drmInitData.f22045c) || !Arrays.equals(this.f22043a, drmInitData.f22043a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f22044b == 0) {
            String str = this.f22045c;
            this.f22044b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f22043a);
        }
        return this.f22044b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22045c);
        parcel.writeTypedArray(this.f22043a, 0);
    }
}
