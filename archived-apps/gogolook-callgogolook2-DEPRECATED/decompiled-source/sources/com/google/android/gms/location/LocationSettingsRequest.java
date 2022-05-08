package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8844q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsRequest.class */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new C8844q();

    /* renamed from: a */
    public final List<LocationRequest> f6945a;

    /* renamed from: b */
    public final boolean f6946b;

    /* renamed from: c */
    public final boolean f6947c;

    /* renamed from: d */
    public zzae f6948d;

    /* renamed from: com.google.android.gms.location.LocationSettingsRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsRequest$a.class */
    public static final class C3575a {

        /* renamed from: a */
        public final ArrayList<LocationRequest> f6949a = new ArrayList<>();

        /* renamed from: b */
        public boolean f6950b = false;

        /* renamed from: c */
        public boolean f6951c = false;

        /* renamed from: a */
        public final C3575a m31804a(@NonNull LocationRequest locationRequest) {
            if (locationRequest != null) {
                this.f6949a.add(locationRequest);
            }
            return this;
        }

        /* renamed from: a */
        public final C3575a m31803a(boolean z) {
            this.f6950b = z;
            return this;
        }

        /* renamed from: a */
        public final LocationSettingsRequest m31805a() {
            return new LocationSettingsRequest(this.f6949a, this.f6950b, this.f6951c, null);
        }
    }

    public LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzae zzaeVar) {
        this.f6945a = list;
        this.f6946b = z;
        this.f6947c = z2;
        this.f6948d = zzaeVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 1, Collections.unmodifiableList(this.f6945a), false);
        C7031b.m21212a(parcel, 2, this.f6946b);
        C7031b.m21212a(parcel, 3, this.f6947c);
        C7031b.m21220a(parcel, 5, (Parcelable) this.f6948d, i, false);
        C7031b.m21229a(parcel, a);
    }
}
