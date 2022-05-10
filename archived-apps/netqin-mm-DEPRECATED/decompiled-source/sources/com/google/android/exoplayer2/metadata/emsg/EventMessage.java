package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {

    /* renamed from: a */
    public final String f22135a;

    /* renamed from: b */
    public final String f22136b;

    /* renamed from: c */
    public final long f22137c;

    /* renamed from: d */
    public final long f22138d;

    /* renamed from: e */
    public final byte[] f22139e;

    /* renamed from: f */
    public int f22140f;

    /* renamed from: g */
    public static final Format f22133g = Format.m18703a(null, "application/id3", Long.MAX_VALUE);

    /* renamed from: h */
    public static final Format f22134h = Format.m18703a(null, "application/x-scte35", Long.MAX_VALUE);
    public static final Parcelable.Creator<EventMessage> CREATOR = new C7141a();

    /* renamed from: com.google.android.exoplayer2.metadata.emsg.EventMessage$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage$a.class */
    public static final class C7141a implements Parcelable.Creator<EventMessage> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EventMessage[] newArray(int i) {
            return new EventMessage[i];
        }
    }

    public EventMessage(Parcel parcel) {
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22135a = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22136b = readString2;
        this.f22137c = parcel.readLong();
        this.f22138d = parcel.readLong();
        byte[] createByteArray = parcel.createByteArray();
        C2885h0.m28670a(createByteArray);
        this.f22139e = createByteArray;
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.f22135a = str;
        this.f22136b = str2;
        this.f22137c = j;
        this.f22138d = j2;
        this.f22139e = bArr;
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
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        if (this.f22137c != eventMessage.f22137c || this.f22138d != eventMessage.f22138d || !C2885h0.m28669a((Object) this.f22135a, (Object) eventMessage.f22135a) || !C2885h0.m28669a((Object) this.f22136b, (Object) eventMessage.f22136b) || !Arrays.equals(this.f22139e, eventMessage.f22139e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f22140f == 0) {
            String str = this.f22135a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f22136b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            long j = this.f22137c;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f22138d;
            this.f22140f = ((((((((527 + hashCode) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.f22139e);
        }
        return this.f22140f;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f22135a + ", id=" + this.f22138d + ", durationMs=" + this.f22137c + ", value=" + this.f22136b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22135a);
        parcel.writeString(this.f22136b);
        parcel.writeLong(this.f22137c);
        parcel.writeLong(this.f22138d);
        parcel.writeByteArray(this.f22139e);
    }
}
