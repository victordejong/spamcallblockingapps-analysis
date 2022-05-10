package androidx.media2.exoplayer.external.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry.class */
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new C0332a();

    /* renamed from: a */
    public final String f1885a;

    /* renamed from: b */
    public final String f1886b;

    /* renamed from: c */
    public final List<VariantInfo> f1887c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo.class */
    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new C0331a();

        /* renamed from: a */
        public final long f1888a;

        /* renamed from: b */
        public final String f1889b;

        /* renamed from: c */
        public final String f1890c;

        /* renamed from: d */
        public final String f1891d;

        /* renamed from: e */
        public final String f1892e;

        /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry$VariantInfo$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo$a.class */
        public class C0331a implements Parcelable.Creator<VariantInfo> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        }

        public VariantInfo(long j, String str, String str2, String str3, String str4) {
            this.f1888a = j;
            this.f1889b = str;
            this.f1890c = str2;
            this.f1891d = str3;
            this.f1892e = str4;
        }

        public VariantInfo(Parcel parcel) {
            this.f1888a = parcel.readLong();
            this.f1889b = parcel.readString();
            this.f1890c = parcel.readString();
            this.f1891d = parcel.readString();
            this.f1892e = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || VariantInfo.class != obj.getClass()) {
                return false;
            }
            VariantInfo variantInfo = (VariantInfo) obj;
            if (this.f1888a != variantInfo.f1888a || !TextUtils.equals(this.f1889b, variantInfo.f1889b) || !TextUtils.equals(this.f1890c, variantInfo.f1890c) || !TextUtils.equals(this.f1891d, variantInfo.f1891d) || !TextUtils.equals(this.f1892e, variantInfo.f1892e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            long j = this.f1888a;
            int i = (int) (j ^ (j >>> 32));
            String str = this.f1889b;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f1890c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f1891d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f1892e;
            if (str4 != null) {
                i2 = str4.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f1888a);
            parcel.writeString(this.f1889b);
            parcel.writeString(this.f1890c);
            parcel.writeString(this.f1891d);
            parcel.writeString(this.f1892e);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$a.class */
    public class C0332a implements Parcelable.Creator<HlsTrackMetadataEntry> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    }

    public HlsTrackMetadataEntry(Parcel parcel) {
        this.f1885a = parcel.readString();
        this.f1886b = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((VariantInfo) parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.f1887c = Collections.unmodifiableList(arrayList);
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.f1885a = str;
        this.f1886b = str2;
        this.f1887c = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || HlsTrackMetadataEntry.class != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
        if (!TextUtils.equals(this.f1885a, hlsTrackMetadataEntry.f1885a) || !TextUtils.equals(this.f1886b, hlsTrackMetadataEntry.f1886b) || !this.f1887c.equals(hlsTrackMetadataEntry.f1887c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1885a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1886b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.f1887c.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1885a);
        parcel.writeString(this.f1886b);
        int size = this.f1887c.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.f1887c.get(i2), 0);
        }
    }
}
