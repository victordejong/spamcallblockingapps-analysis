package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/VorbisComment.class */
public final class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new C7143a();

    /* renamed from: a */
    public final String f22149a;

    /* renamed from: b */
    public final String f22150b;

    /* renamed from: com.google.android.exoplayer2.metadata.flac.VorbisComment$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/VorbisComment$a.class */
    public static final class C7143a implements Parcelable.Creator<VorbisComment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VorbisComment[] newArray(int i) {
            return new VorbisComment[i];
        }
    }

    public VorbisComment(Parcel parcel) {
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22149a = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22150b = readString2;
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
        if (obj == null || VorbisComment.class != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        if (!this.f22149a.equals(vorbisComment.f22149a) || !this.f22150b.equals(vorbisComment.f22150b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f22149a.hashCode()) * 31) + this.f22150b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f22149a + "=" + this.f22150b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22149a);
        parcel.writeString(this.f22150b);
    }
}
