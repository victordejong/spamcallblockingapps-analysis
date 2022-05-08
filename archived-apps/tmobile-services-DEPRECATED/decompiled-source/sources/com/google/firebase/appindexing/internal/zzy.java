package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzy.class */
public final class zzy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzy> CREATOR = new zzx();
    @SafeParcelable.Field
    private final int type;
    @Nullable
    @SafeParcelable.Field
    private final Thing[] zzfo;
    @Nullable
    @SafeParcelable.Field
    private final String[] zzfp;
    @Nullable
    @SafeParcelable.Field
    private final String[] zzfq;
    @Nullable
    @SafeParcelable.Field
    private final zza zzfr;
    @Nullable
    @SafeParcelable.Field
    private final String zzfs;
    @Nullable
    @SafeParcelable.Field
    private final String zzft;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(int i, Thing[] thingArr) {
        this(1, thingArr, null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzy(@SafeParcelable.Param(id = 1) int i, @Nullable @SafeParcelable.Param(id = 2) Thing[] thingArr, @Nullable @SafeParcelable.Param(id = 3) String[] strArr, @Nullable @SafeParcelable.Param(id = 5) String[] strArr2, @Nullable @SafeParcelable.Param(id = 6) zza zzaVar, @Nullable @SafeParcelable.Param(id = 7) String str, @Nullable @SafeParcelable.Param(id = 8) String str2) {
        int i2 = i;
        if (i != 0) {
            i2 = i;
            if (i != 1) {
                i2 = i;
                if (i != 2) {
                    i2 = i;
                    if (i != 3) {
                        i2 = i;
                        if (i != 4) {
                            i2 = i;
                            if (i != 6) {
                                i2 = i;
                                if (i != 7) {
                                    i2 = 0;
                                }
                            }
                        }
                    }
                }
            }
        }
        this.type = i2;
        this.zzfo = thingArr;
        this.zzfp = strArr;
        this.zzfq = strArr2;
        this.zzfr = zzaVar;
        this.zzfs = str;
        this.zzft = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.type);
        SafeParcelWriter.m14444t(parcel, 2, this.zzfo, i, false);
        SafeParcelWriter.m14446r(parcel, 3, this.zzfp, false);
        SafeParcelWriter.m14446r(parcel, 5, this.zzfq, false);
        SafeParcelWriter.m14448p(parcel, 6, this.zzfr, i, false);
        SafeParcelWriter.m14447q(parcel, 7, this.zzfs, false);
        SafeParcelWriter.m14447q(parcel, 8, this.zzft, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
