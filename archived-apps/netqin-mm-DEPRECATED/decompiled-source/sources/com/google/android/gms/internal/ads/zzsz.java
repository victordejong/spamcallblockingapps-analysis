package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.InputStream;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsz.class */
public final class zzsz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzsz> CREATOR = new zztc();
    @SafeParcelable.Field

    /* renamed from: a */
    public ParcelFileDescriptor f28967a;

    public zzsz() {
        this(null);
    }

    @SafeParcelable.Constructor
    public zzsz(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.f28967a = parcelFileDescriptor;
    }

    /* renamed from: f */
    public final boolean m11446f() {
        boolean z;
        synchronized (this) {
            z = this.f28967a != null;
        }
        return z;
    }

    /* renamed from: i */
    public final InputStream m11445i() {
        synchronized (this) {
            if (this.f28967a == null) {
                return null;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f28967a);
            this.f28967a = null;
            return autoCloseInputStream;
        }
    }

    /* renamed from: u */
    public final ParcelFileDescriptor m11444u() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.f28967a;
        }
        return parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) m11444u(), i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
