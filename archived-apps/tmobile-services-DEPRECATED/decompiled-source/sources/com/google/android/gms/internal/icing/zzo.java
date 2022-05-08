package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzo.class */
public final class zzo extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zzo> CREATOR = new zzr();
    @SafeParcelable.Field

    /* renamed from: f */
    private Status f8137f;
    @SafeParcelable.Field

    /* renamed from: g */
    private List<zzw> f8138g;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: h */
    private String[] f8139h;

    public zzo() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) Status status, @SafeParcelable.Param(id = 2) List<zzw> list, @SafeParcelable.Param(id = 3) String[] strArr) {
        this.f8137f = status;
        this.f8138g = list;
        this.f8139h = strArr;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: k */
    public final Status mo10851k() {
        return this.f8137f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14448p(parcel, 1, this.f8137f, i, false);
        SafeParcelWriter.m14443u(parcel, 2, this.f8138g, false);
        SafeParcelWriter.m14446r(parcel, 3, this.f8139h, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
