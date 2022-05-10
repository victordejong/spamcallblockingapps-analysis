package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p262j.C4881e;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/zzi.class */
public final class zzi extends AbstractSafeParcelable implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new zzk();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f30204a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f30205b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f30206c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final double f30207d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f30208e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final byte[] f30209f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int f30210g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final int f30211h;

    static {
        new C4881e();
    }

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) double d, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) byte[] bArr, @SafeParcelable.Param(id = 8) int i, @SafeParcelable.Param(id = 9) int i2) {
        this.f30204a = str;
        this.f30205b = j;
        this.f30206c = z;
        this.f30207d = d;
        this.f30208e = str2;
        this.f30209f = bArr;
        this.f30210g = i;
        this.f30211h = i2;
    }

    /* renamed from: a */
    public static int m8660a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzi zziVar) {
        zzi zziVar2 = zziVar;
        int compareTo = this.f30204a.compareTo(zziVar2.f30204a);
        if (compareTo != 0) {
            return compareTo;
        }
        int a = m8660a(this.f30210g, zziVar2.f30210g);
        if (a != 0) {
            return a;
        }
        int i = this.f30210g;
        if (i == 1) {
            long j = this.f30205b;
            long j2 = zziVar2.f30205b;
            if (j < j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        } else if (i == 2) {
            boolean z = this.f30206c;
            if (z == zziVar2.f30206c) {
                return 0;
            }
            return z ? 1 : -1;
        } else if (i == 3) {
            return Double.compare(this.f30207d, zziVar2.f30207d);
        } else {
            if (i == 4) {
                String str = this.f30208e;
                String str2 = zziVar2.f30208e;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return str.compareTo(str2);
            } else if (i == 5) {
                byte[] bArr = this.f30209f;
                byte[] bArr2 = zziVar2.f30209f;
                if (bArr == bArr2) {
                    return 0;
                }
                if (bArr == null) {
                    return -1;
                }
                if (bArr2 == null) {
                    return 1;
                }
                for (int i2 = 0; i2 < Math.min(this.f30209f.length, zziVar2.f30209f.length); i2++) {
                    int i3 = this.f30209f[i2] - zziVar2.f30209f[i2];
                    if (i3 != 0) {
                        return i3;
                    }
                }
                return m8660a(this.f30209f.length, zziVar2.f30209f.length);
            } else {
                int i4 = this.f30210g;
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid enum value: ");
                sb.append(i4);
                throw new AssertionError(sb.toString());
            }
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof zzi)) {
            return false;
        }
        zzi zziVar = (zzi) obj;
        if (!zzn.m8659a(this.f30204a, zziVar.f30204a) || (i = this.f30210g) != zziVar.f30210g || this.f30211h != zziVar.f30211h) {
            return false;
        }
        if (i == 1) {
            return this.f30205b == zziVar.f30205b;
        }
        if (i == 2) {
            return this.f30206c == zziVar.f30206c;
        }
        if (i == 3) {
            return this.f30207d == zziVar.f30207d;
        }
        if (i == 4) {
            return zzn.m8659a(this.f30208e, zziVar.f30208e);
        }
        if (i == 5) {
            return Arrays.equals(this.f30209f, zziVar.f30209f);
        }
        int i2 = this.f30210g;
        StringBuilder sb = new StringBuilder(31);
        sb.append("Invalid enum value: ");
        sb.append(i2);
        throw new AssertionError(sb.toString());
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.f30204a);
        sb.append(", ");
        int i = this.f30210g;
        if (i == 1) {
            sb.append(this.f30205b);
        } else if (i == 2) {
            sb.append(this.f30206c);
        } else if (i != 3) {
            if (i == 4) {
                sb.append("'");
                str = this.f30208e;
            } else if (i != 5) {
                String str2 = this.f30204a;
                int i2 = this.f30210g;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb2.append("Invalid type: ");
                sb2.append(str2);
                sb2.append(", ");
                sb2.append(i2);
                throw new AssertionError(sb2.toString());
            } else if (this.f30209f == null) {
                sb.append("null");
            } else {
                sb.append("'");
                str = Base64.encodeToString(this.f30209f, 3);
            }
            sb.append(str);
            sb.append("'");
        } else {
            sb.append(this.f30207d);
        }
        sb.append(", ");
        sb.append(this.f30210g);
        sb.append(", ");
        sb.append(this.f30211h);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f30204a, false);
        SafeParcelWriter.m17230a(parcel, 3, this.f30205b);
        SafeParcelWriter.m17218a(parcel, 4, this.f30206c);
        SafeParcelWriter.m17233a(parcel, 5, this.f30207d);
        SafeParcelWriter.m17221a(parcel, 6, this.f30208e, false);
        SafeParcelWriter.m17217a(parcel, 7, this.f30209f, false);
        SafeParcelWriter.m17231a(parcel, 8, this.f30210g);
        SafeParcelWriter.m17231a(parcel, 9, this.f30211h);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
