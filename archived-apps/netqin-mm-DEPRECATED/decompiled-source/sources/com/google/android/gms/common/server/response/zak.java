package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zao();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23530a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f23531b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final ArrayList<zan> f23532c;

    @SafeParcelable.Constructor
    public zak(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) ArrayList<zan> arrayList) {
        this.f23530a = i;
        this.f23531b = str;
        this.f23532c = arrayList;
    }

    public zak(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zan> arrayList;
        this.f23530a = 1;
        this.f23531b = str;
        if (map != null) {
            ArrayList<zan> arrayList2 = new ArrayList<>();
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                arrayList2.add(new zan(next, map.get(next)));
            }
        } else {
            arrayList = null;
        }
        this.f23532c = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23530a);
        SafeParcelWriter.m17221a(parcel, 2, this.f23531b, false);
        SafeParcelWriter.m17207c(parcel, 3, this.f23532c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
