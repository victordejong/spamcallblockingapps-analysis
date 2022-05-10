package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zam();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23533a;

    /* renamed from: b */
    public final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f23534b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f23535c;

    @SafeParcelable.Constructor
    public zal(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zak> arrayList, @SafeParcelable.Param(id = 3) String str) {
        this.f23533a = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zak zakVar = arrayList.get(i2);
            String str2 = zakVar.f23531b;
            HashMap hashMap2 = new HashMap();
            ArrayList<zan> arrayList2 = zakVar.f23532c;
            Preconditions.m17288a(arrayList2);
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zan zanVar = zakVar.f23532c.get(i3);
                hashMap2.put(zanVar.f23537b, zanVar.f23538c);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f23534b = hashMap;
        Preconditions.m17288a(str);
        this.f23535c = str;
        m17132f();
    }

    /* renamed from: a */
    public final Map<String, FastJsonResponse.Field<?, ?>> m17133a(String str) {
        return this.f23534b.get(str);
    }

    /* renamed from: f */
    public final void m17132f() {
        for (String str : this.f23534b.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f23534b.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).m17147a(this);
            }
        }
    }

    /* renamed from: i */
    public final String m17131i() {
        return this.f23535c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f23534b.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f23534b.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23533a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f23534b.keySet()) {
            arrayList.add(new zak(str, this.f23534b.get(str)));
        }
        SafeParcelWriter.m17207c(parcel, 2, arrayList, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f23535c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
