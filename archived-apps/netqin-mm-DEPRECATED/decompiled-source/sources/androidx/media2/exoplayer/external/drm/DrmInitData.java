package androidx.media2.exoplayer.external.drm;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData.class */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new C0292a();

    /* renamed from: a */
    public final SchemeData[] f1662a;

    /* renamed from: b */
    public int f1663b;

    /* renamed from: c */
    public final String f1664c;

    /* renamed from: d */
    public final int f1665d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$SchemeData.class */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new C0291a();

        /* renamed from: a */
        public int f1666a;

        /* renamed from: b */
        public final UUID f1667b;

        /* renamed from: c */
        public final String f1668c;

        /* renamed from: d */
        public final String f1669d;

        /* renamed from: e */
        public final byte[] f1670e;

        /* renamed from: androidx.media2.exoplayer.external.drm.DrmInitData$SchemeData$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$a.class */
        public class C0291a implements Parcelable.Creator<SchemeData> {
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
            this.f1667b = new UUID(parcel.readLong(), parcel.readLong());
            this.f1668c = parcel.readString();
            String readString = parcel.readString();
            C1167d0.m34479a(readString);
            this.f1669d = readString;
            this.f1670e = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            C1160a.m34522a(uuid);
            this.f1667b = uuid;
            this.f1668c = str;
            C1160a.m34522a(str2);
            this.f1669d = str2;
            this.f1670e = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        /* renamed from: a */
        public SchemeData m38092a(byte[] bArr) {
            return new SchemeData(this.f1667b, this.f1668c, this.f1669d, bArr);
        }

        /* renamed from: a */
        public boolean m38095a() {
            return this.f1670e != null;
        }

        /* renamed from: a */
        public boolean m38093a(UUID uuid) {
            return C1220c.f4890a.equals(this.f1667b) || uuid.equals(this.f1667b);
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
            if (C1167d0.m34478a((Object) this.f1668c, (Object) schemeData.f1668c)) {
                z = false;
                if (C1167d0.m34478a((Object) this.f1669d, (Object) schemeData.f1669d)) {
                    z = false;
                    if (C1167d0.m34478a(this.f1667b, schemeData.f1667b)) {
                        z = false;
                        if (Arrays.equals(this.f1670e, schemeData.f1670e)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.f1666a == 0) {
                int hashCode = this.f1667b.hashCode();
                String str = this.f1668c;
                this.f1666a = (((((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.f1669d.hashCode()) * 31) + Arrays.hashCode(this.f1670e);
            }
            return this.f1666a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f1667b.getMostSignificantBits());
            parcel.writeLong(this.f1667b.getLeastSignificantBits());
            parcel.writeString(this.f1668c);
            parcel.writeString(this.f1669d);
            parcel.writeByteArray(this.f1670e);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DrmInitData$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmInitData$a.class */
    public class C0292a implements Parcelable.Creator<DrmInitData> {
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
        this.f1664c = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR);
        C1167d0.m34479a(schemeDataArr);
        SchemeData[] schemeDataArr2 = schemeDataArr;
        this.f1662a = schemeDataArr2;
        this.f1665d = schemeDataArr2.length;
    }

    public DrmInitData(String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.f1664c = str;
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.f1662a = schemeDataArr2;
        this.f1665d = schemeDataArr2.length;
        Arrays.sort(schemeDataArr2, this);
    }

    public DrmInitData(String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this((String) null, schemeDataArr);
    }

    /* renamed from: a */
    public static DrmInitData m38098a(DrmInitData drmInitData, DrmInitData drmInitData2) {
        String str;
        SchemeData[] schemeDataArr;
        SchemeData[] schemeDataArr2;
        ArrayList arrayList = new ArrayList();
        DrmInitData drmInitData3 = null;
        if (drmInitData != null) {
            str = drmInitData.f1664c;
            for (SchemeData schemeData : drmInitData.f1662a) {
                if (schemeData.m38095a()) {
                    arrayList.add(schemeData);
                }
            }
        } else {
            str = null;
        }
        String str2 = str;
        if (drmInitData2 != null) {
            str2 = str;
            if (str == null) {
                str2 = drmInitData2.f1664c;
            }
            int size = arrayList.size();
            for (SchemeData schemeData2 : drmInitData2.f1662a) {
                if (schemeData2.m38095a() && !m38096a(arrayList, size, schemeData2.f1667b)) {
                    arrayList.add(schemeData2);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            drmInitData3 = new DrmInitData(str2, arrayList);
        }
        return drmInitData3;
    }

    /* renamed from: a */
    public static boolean m38096a(ArrayList<SchemeData> arrayList, int i, UUID uuid) {
        for (int i2 = 0; i2 < i; i2++) {
            if (arrayList.get(i2).f1667b.equals(uuid)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        return C1220c.f4890a.equals(schemeData.f1667b) ? C1220c.f4890a.equals(schemeData2.f1667b) ? 0 : 1 : schemeData.f1667b.compareTo(schemeData2.f1667b);
    }

    /* renamed from: a */
    public SchemeData m38101a(int i) {
        return this.f1662a[i];
    }

    /* renamed from: a */
    public DrmInitData m38099a(DrmInitData drmInitData) {
        String str;
        String str2 = this.f1664c;
        C1160a.m34518b(str2 == null || (str = drmInitData.f1664c) == null || TextUtils.equals(str2, str));
        String str3 = this.f1664c;
        if (str3 == null) {
            str3 = drmInitData.f1664c;
        }
        return new DrmInitData(str3, (SchemeData[]) C1167d0.m34460a((Object[]) this.f1662a, (Object[]) drmInitData.f1662a));
    }

    /* renamed from: a */
    public DrmInitData m38097a(String str) {
        return C1167d0.m34478a((Object) this.f1664c, (Object) str) ? this : new DrmInitData(str, false, this.f1662a);
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
        if (!C1167d0.m34478a((Object) this.f1664c, (Object) drmInitData.f1664c) || !Arrays.equals(this.f1662a, drmInitData.f1662a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1663b == 0) {
            String str = this.f1664c;
            this.f1663b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f1662a);
        }
        return this.f1663b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1664c);
        parcel.writeTypedArray(this.f1662a, 0);
    }
}
