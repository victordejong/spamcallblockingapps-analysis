package androidx.media;

import java.util.Arrays;
/* renamed from: androidx.media.c */
/* loaded from: classes-dex2jar.jar:androidx/media/c.class */
final class C0960c implements AbstractC0958a {

    /* renamed from: a */
    int f3955a = 0;

    /* renamed from: b */
    int f3956b = 0;

    /* renamed from: c */
    int f3957c = 0;

    /* renamed from: d */
    int f3958d = -1;

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof C0960c)) {
            return false;
        }
        C0960c cVar = (C0960c) obj;
        if (this.f3956b != cVar.f3956b) {
            return false;
        }
        int i2 = this.f3957c;
        int i3 = cVar.f3957c;
        int i4 = cVar.f3958d;
        if (i4 == -1) {
            i4 = AudioAttributesCompat.m7545a(i3, cVar.f3955a);
        }
        if (i4 == 6) {
            i = i3 | 4;
        } else {
            i = i3;
            if (i4 == 7) {
                i = i3 | 1;
            }
        }
        return i2 == (i & 273) && this.f3955a == cVar.f3955a && this.f3958d == cVar.f3958d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3956b), Integer.valueOf(this.f3957c), Integer.valueOf(this.f3955a), Integer.valueOf(this.f3958d)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f3958d != -1) {
            sb.append(" stream=");
            sb.append(this.f3958d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.m7546a(this.f3955a));
        sb.append(" content=");
        sb.append(this.f3956b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f3957c).toUpperCase());
        return sb.toString();
    }
}
