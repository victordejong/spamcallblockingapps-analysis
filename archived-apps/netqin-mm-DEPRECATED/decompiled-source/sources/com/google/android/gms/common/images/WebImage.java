package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/WebImage.class */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zae();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23358a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Uri f23359b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f23360c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f23361d;

    @SafeParcelable.Constructor
    public WebImage(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Uri uri, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3) {
        this.f23358a = i;
        this.f23359b = uri;
        this.f23360c = i2;
        this.f23361d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return Objects.m17295a(this.f23359b, webImage.f23359b) && this.f23360c == webImage.f23360c && this.f23361d == webImage.f23361d;
    }

    /* renamed from: f */
    public final int m17406f() {
        return this.f23361d;
    }

    public final int hashCode() {
        return Objects.m17294a(this.f23359b, Integer.valueOf(this.f23360c), Integer.valueOf(this.f23361d));
    }

    /* renamed from: i */
    public final Uri m17405i() {
        return this.f23359b;
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f23360c), Integer.valueOf(this.f23361d), this.f23359b.toString());
    }

    /* renamed from: u */
    public final int m17404u() {
        return this.f23360c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23358a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) m17405i(), i, false);
        SafeParcelWriter.m17231a(parcel, 3, m17404u());
        SafeParcelWriter.m17231a(parcel, 4, m17406f());
        SafeParcelWriter.m17234a(parcel, a);
    }
}
