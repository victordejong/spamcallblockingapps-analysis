package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame.class */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new C7150a();

    /* renamed from: b */
    public final String f22176b;

    /* renamed from: c */
    public final String f22177c;

    /* renamed from: d */
    public final String f22178d;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.CommentFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame$a.class */
    public static final class C7150a implements Parcelable.Creator<CommentFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    }

    public CommentFrame(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22176b = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22177c = readString2;
        String readString3 = parcel.readString();
        C2885h0.m28670a(readString3);
        this.f22178d = readString3;
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f22176b = str;
        this.f22177c = str2;
        this.f22178d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || CommentFrame.class != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        if (!C2885h0.m28669a((Object) this.f22177c, (Object) commentFrame.f22177c) || !C2885h0.m28669a((Object) this.f22176b, (Object) commentFrame.f22176b) || !C2885h0.m28669a((Object) this.f22178d, (Object) commentFrame.f22178d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f22176b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f22177c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f22178d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": language=" + this.f22176b + ", description=" + this.f22177c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22183a);
        parcel.writeString(this.f22176b);
        parcel.writeString(this.f22178d);
    }
}
