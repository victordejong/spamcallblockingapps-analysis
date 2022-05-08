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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zaj.class */
public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new zao();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7609f;

    /* renamed from: g */
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f7610g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final String f7611h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zaj(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<zam> arrayList, @SafeParcelable.Param(id = 3) String str) {
        this.f7609f = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zam zamVar = arrayList.get(i2);
            String str2 = zamVar.f7616g;
            HashMap hashMap2 = new HashMap();
            int size2 = zamVar.f7617h.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zal zalVar = zamVar.f7617h.get(i3);
                hashMap2.put(zalVar.f7613g, zalVar.f7614h);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f7610g = hashMap;
        Preconditions.m14523k(str);
        this.f7611h = str;
        m14376B();
    }

    /* renamed from: B */
    public final void m14376B() {
        for (String str : this.f7610g.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f7610g.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).m14389W(this);
            }
        }
    }

    /* renamed from: I */
    public final String m14375I() {
        return this.f7611h;
    }

    /* renamed from: W */
    public final Map<String, FastJsonResponse.Field<?, ?>> m14374W(String str) {
        return this.f7610g.get(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f7610g.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f7610g.get(str);
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
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7609f);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f7610g.keySet()) {
            arrayList.add(new zam(str, this.f7610g.get(str)));
        }
        SafeParcelWriter.m14443u(parcel, 2, arrayList, false);
        SafeParcelWriter.m14447q(parcel, 3, this.f7611h, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
