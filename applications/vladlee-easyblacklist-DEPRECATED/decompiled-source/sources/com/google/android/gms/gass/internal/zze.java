package com.google.android.gms.gass.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.ads.zzbs;
import com.google.android.gms.internal.ads.zzdrg;
import com.google.android.gms.internal.ads.zzdse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zze.class */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzh();

    /* renamed from: a */
    private final int f7101a;

    /* renamed from: b */
    private zzbs.zza f7102b = null;

    /* renamed from: c */
    private byte[] f7103c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(int i, byte[] bArr) {
        this.f7101a = i;
        this.f7103c = bArr;
        m5512a();
    }

    /* renamed from: a */
    private final void m5512a() {
        if (this.f7102b == null && this.f7103c != null) {
            return;
        }
        if (this.f7102b != null && this.f7103c == null) {
            return;
        }
        if (this.f7102b != null && this.f7103c != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.f7102b == null && this.f7103c == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f7101a);
        byte[] bArr = this.f7103c;
        if (bArr == null) {
            bArr = this.f7102b.toByteArray();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzbs.zza zzaqq() {
        if (!(this.f7102b != null)) {
            try {
                this.f7102b = zzbs.zza.zza(this.f7103c, zzdrg.zzazi());
                this.f7103c = null;
            } catch (zzdse e) {
                throw new IllegalStateException(e);
            }
        }
        m5512a();
        return this.f7102b;
    }
}
