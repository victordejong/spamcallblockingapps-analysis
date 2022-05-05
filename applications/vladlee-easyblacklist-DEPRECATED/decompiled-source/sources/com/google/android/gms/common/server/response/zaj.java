package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zaj.class */
public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new zao();

    /* renamed from: a */
    private final int f6920a;

    /* renamed from: b */
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f6921b;

    /* renamed from: c */
    private final ArrayList<zam> f6922c;

    /* renamed from: d */
    private final String f6923d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaj(int i, ArrayList<zam> arrayList, String str) {
        this.f6920a = i;
        this.f6922c = null;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zam zamVar = arrayList.get(i2);
            String str2 = zamVar.f6927a;
            HashMap hashMap2 = new HashMap();
            int size2 = zamVar.f6928b.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zal zalVar = zamVar.f6928b.get(i3);
                hashMap2.put(zalVar.f6924a, zalVar.f6925b);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f6921b = hashMap;
        this.f6923d = (String) Preconditions.checkNotNull(str);
        zacp();
    }

    public zaj(Class<? extends FastJsonResponse> cls) {
        this.f6920a = 1;
        this.f6922c = null;
        this.f6921b = new HashMap<>();
        this.f6923d = cls.getCanonicalName();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f6921b.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6921b.get(str);
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
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6920a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6921b.keySet()) {
            arrayList.add(new zam(str, this.f6921b.get(str)));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.writeString(parcel, 3, this.f6923d, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zaa(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse.Field<?, ?>> map) {
        this.f6921b.put(cls.getCanonicalName(), map);
    }

    public final boolean zaa(Class<? extends FastJsonResponse> cls) {
        return this.f6921b.containsKey(cls.getCanonicalName());
    }

    public final void zacp() {
        for (String str : this.f6921b.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6921b.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).zaa(this);
            }
        }
    }

    public final void zacq() {
        for (String str : this.f6921b.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6921b.get(str);
            HashMap hashMap = new HashMap();
            for (String str2 : map.keySet()) {
                hashMap.put(str2, map.get(str2).zacj());
            }
            this.f6921b.put(str, hashMap);
        }
    }

    public final String zacr() {
        return this.f6923d;
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> zai(String str) {
        return this.f6921b.get(str);
    }
}
