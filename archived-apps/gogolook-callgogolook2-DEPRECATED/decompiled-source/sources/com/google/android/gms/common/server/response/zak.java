package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p247b.C7060c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new C7060c();

    /* renamed from: a */
    public final int f6644a;

    /* renamed from: b */
    public final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f6645b;

    /* renamed from: c */
    public final String f6646c;

    public zak(int i, ArrayList<zal> arrayList, String str) {
        this.f6644a = i;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zal zalVar = arrayList.get(i2);
            String str2 = zalVar.f6648b;
            HashMap hashMap2 = new HashMap();
            int size2 = zalVar.f6649c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zam zamVar = zalVar.f6649c.get(i3);
                hashMap2.put(zamVar.f6651b, zamVar.f6652c);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f6645b = hashMap;
        C7021t.m21290a(str);
        this.f6646c = str;
        m31904c();
    }

    /* renamed from: H */
    public final String m31906H() {
        return this.f6646c;
    }

    /* renamed from: a */
    public final Map<String, FastJsonResponse.Field<?, ?>> m31905a(String str) {
        return this.f6645b.get(str);
    }

    /* renamed from: c */
    public final void m31904c() {
        for (String str : this.f6645b.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6645b.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).m31923a(this);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f6645b.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f6645b.get(str);
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
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6644a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6645b.keySet()) {
            arrayList.add(new zal(str, this.f6645b.get(str)));
        }
        C7031b.m21201c(parcel, 2, arrayList, false);
        C7031b.m21215a(parcel, 3, this.f6646c, false);
        C7031b.m21229a(parcel, a);
    }
}
