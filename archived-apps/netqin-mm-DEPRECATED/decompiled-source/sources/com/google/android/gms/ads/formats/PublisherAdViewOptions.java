package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzafx;
import com.google.android.gms.internal.ads.zzafy;
import com.google.android.gms.internal.ads.zzxk;
import com.google.android.gms.internal.ads.zzxn;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzc();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f22717a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final zzxk f22718b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final IBinder f22719c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
    public static final class Builder {
    }

    @SafeParcelable.Constructor
    public PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        this.f22717a = z;
        this.f22718b = iBinder != null ? zzxn.m11140a(iBinder) : null;
        this.f22719c = iBinder2;
    }

    /* renamed from: f */
    public final boolean m18038f() {
        return this.f22717a;
    }

    /* renamed from: i */
    public final zzxk m18037i() {
        return this.f22718b;
    }

    /* renamed from: u */
    public final zzafy m18036u() {
        return zzafx.m16797a(this.f22719c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 1, m18038f());
        zzxk zzxkVar = this.f22718b;
        SafeParcelWriter.m17228a(parcel, 2, zzxkVar == null ? null : zzxkVar.asBinder(), false);
        SafeParcelWriter.m17228a(parcel, 3, this.f22719c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
