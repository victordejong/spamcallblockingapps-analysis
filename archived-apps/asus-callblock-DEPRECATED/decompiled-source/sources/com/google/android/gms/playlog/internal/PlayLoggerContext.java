package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/playlog/internal/PlayLoggerContext.class */
public class PlayLoggerContext extends AbstractSafeParcelable {
    public static final b CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final int f4248a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4249b;
    public final int c;
    public final int d;
    public final String e;
    public final String f;
    public final boolean g;
    public final String h;
    public final boolean i;
    public final int j;

    public PlayLoggerContext(int i, String str, int i2, int i3, String str2, String str3, boolean z, String str4, boolean z2, int i4) {
        this.f4248a = i;
        this.f4249b = str;
        this.c = i2;
        this.d = i3;
        this.e = str2;
        this.f = str3;
        this.g = z;
        this.h = str4;
        this.i = z2;
        this.j = i4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj instanceof PlayLoggerContext) {
                PlayLoggerContext playLoggerContext = (PlayLoggerContext) obj;
                if (!(this.f4248a == playLoggerContext.f4248a && this.f4249b.equals(playLoggerContext.f4249b) && this.c == playLoggerContext.c && this.d == playLoggerContext.d && ae.a(this.h, playLoggerContext.h) && ae.a(this.e, playLoggerContext.e) && ae.a(this.f, playLoggerContext.f) && this.g == playLoggerContext.g && this.i == playLoggerContext.i && this.j == playLoggerContext.j)) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4248a), this.f4249b, Integer.valueOf(this.c), Integer.valueOf(this.d), this.h, this.e, this.f, Boolean.valueOf(this.g), Boolean.valueOf(this.i), Integer.valueOf(this.j)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PlayLoggerContext[");
        sb.append("versionCode=").append(this.f4248a).append(',');
        sb.append("package=").append(this.f4249b).append(',');
        sb.append("packageVersionCode=").append(this.c).append(',');
        sb.append("logSource=").append(this.d).append(',');
        sb.append("logSourceName=").append(this.h).append(',');
        sb.append("uploadAccount=").append(this.e).append(',');
        sb.append("loggingId=").append(this.f).append(',');
        sb.append("logAndroidId=").append(this.g).append(',');
        sb.append("isAnonymous=").append(this.i).append(',');
        sb.append("qosTier=").append(this.j);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel);
    }
}
