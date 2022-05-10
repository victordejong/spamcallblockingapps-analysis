package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasa.class */
public final class zzasa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzasa> CREATOR = new zzasd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final View f24316a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Map<String, WeakReference<View>> f24317b;

    @SafeParcelable.Constructor
    public zzasa(@SafeParcelable.Param(id = 1) IBinder iBinder, @SafeParcelable.Param(id = 2) IBinder iBinder2) {
        this.f24316a = (View) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder));
        this.f24317b = (Map) ObjectWrapper.m17021Q(IObjectWrapper.Stub.m17022a(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17228a(parcel, 1, ObjectWrapper.m17020a(this.f24316a).asBinder(), false);
        SafeParcelWriter.m17228a(parcel, 2, ObjectWrapper.m17020a(this.f24317b).asBinder(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
