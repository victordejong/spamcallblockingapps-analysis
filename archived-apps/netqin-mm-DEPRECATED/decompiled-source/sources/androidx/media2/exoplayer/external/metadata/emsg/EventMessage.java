package androidx.media2.exoplayer.external.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {
    public static final Parcelable.Creator<EventMessage> CREATOR = new C0301a();

    /* renamed from: a */
    public final String f1748a;

    /* renamed from: b */
    public final String f1749b;

    /* renamed from: c */
    public final long f1750c;

    /* renamed from: d */
    public final long f1751d;

    /* renamed from: e */
    public final byte[] f1752e;

    /* renamed from: f */
    public int f1753f;

    /* renamed from: androidx.media2.exoplayer.external.metadata.emsg.EventMessage$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/EventMessage$a.class */
    public class C0301a implements Parcelable.Creator<EventMessage> {
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
        C1167d0.m34479a(readString);
        this.f1748a = readString;
        String readString2 = parcel.readString();
        C1167d0.m34479a(readString2);
        this.f1749b = readString2;
        this.f1750c = parcel.readLong();
        this.f1751d = parcel.readLong();
        byte[] createByteArray = parcel.createByteArray();
        C1167d0.m34479a(createByteArray);
        this.f1752e = createByteArray;
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.f1748a = str;
        this.f1749b = str2;
        this.f1750c = j;
        this.f1751d = j2;
        this.f1752e = bArr;
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
        if (this.f1750c != eventMessage.f1750c || this.f1751d != eventMessage.f1751d || !C1167d0.m34478a((Object) this.f1748a, (Object) eventMessage.f1748a) || !C1167d0.m34478a((Object) this.f1749b, (Object) eventMessage.f1749b) || !Arrays.equals(this.f1752e, eventMessage.f1752e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1753f == 0) {
            String str = this.f1748a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f1749b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            long j = this.f1750c;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f1751d;
            this.f1753f = ((((((((527 + hashCode) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.f1752e);
        }
        return this.f1753f;
    }

    public String toString() {
        String str = this.f1748a;
        long j = this.f1751d;
        String str2 = this.f1749b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(str2).length());
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        sb.append(", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1748a);
        parcel.writeString(this.f1749b);
        parcel.writeLong(this.f1750c);
        parcel.writeLong(this.f1751d);
        parcel.writeByteArray(this.f1752e);
    }
}
