package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrx.class */
public final class zzrx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzrx> CREATOR = new zzrw();

    /* renamed from: a */
    private ParcelFileDescriptor f15444a;

    public zzrx() {
        this(null);
    }

    public zzrx(ParcelFileDescriptor parcelFileDescriptor) {
        this.f15444a = parcelFileDescriptor;
    }

    /* renamed from: a */
    private final ParcelFileDescriptor m3079a() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.f15444a;
        }
        return parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, m3079a(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final boolean zzmp() {
        boolean z;
        synchronized (this) {
            z = this.f15444a != null;
        }
        return z;
    }

    public final InputStream zzmq() {
        synchronized (this) {
            if (this.f15444a == null) {
                return null;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f15444a);
            this.f15444a = null;
            return autoCloseInputStream;
        }
    }
}
