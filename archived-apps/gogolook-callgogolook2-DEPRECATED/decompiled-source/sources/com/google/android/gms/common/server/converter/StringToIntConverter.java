package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p246a.C7056b;
import p081h.p203i.p204a.p224e.p235d.p245q.p246a.C7057c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.AbstractC3566a<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new C7056b();

    /* renamed from: a */
    public final int f6618a;

    /* renamed from: b */
    public final HashMap<String, Integer> f6619b;

    /* renamed from: c */
    public final SparseArray<String> f6620c;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter$zaa.class */
    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new C7057c();

        /* renamed from: a */
        public final int f6621a;

        /* renamed from: b */
        public final String f6622b;

        /* renamed from: c */
        public final int f6623c;

        public zaa(int i, String str, int i2) {
            this.f6621a = i;
            this.f6622b = str;
            this.f6623c = i2;
        }

        public zaa(String str, int i) {
            this.f6621a = 1;
            this.f6622b = str;
            this.f6623c = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a = C7031b.m21230a(parcel);
            C7031b.m21225a(parcel, 1, this.f6621a);
            C7031b.m21215a(parcel, 2, this.f6622b, false);
            C7031b.m21225a(parcel, 3, this.f6623c);
            C7031b.m21229a(parcel, a);
        }
    }

    public StringToIntConverter() {
        this.f6618a = 1;
        this.f6619b = new HashMap<>();
        this.f6620c = new SparseArray<>();
    }

    public StringToIntConverter(int i, ArrayList<zaa> arrayList) {
        this.f6618a = i;
        this.f6619b = new HashMap<>();
        this.f6620c = new SparseArray<>();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            zaa zaaVar = arrayList.get(i2);
            i2++;
            zaa zaaVar2 = zaaVar;
            m31935a(zaaVar2.f6622b, zaaVar2.f6623c);
        }
    }

    /* renamed from: a */
    public final StringToIntConverter m31935a(String str, int i) {
        this.f6619b.put(str, Integer.valueOf(i));
        this.f6620c.put(i, str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.AbstractC3566a
    /* renamed from: a */
    public final /* synthetic */ String mo31914a(Integer num) {
        String str = this.f6620c.get(num.intValue());
        return (str != null || !this.f6619b.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6618a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6619b.keySet()) {
            arrayList.add(new zaa(str, this.f6619b.get(str).intValue()));
        }
        C7031b.m21201c(parcel, 2, arrayList, false);
        C7031b.m21229a(parcel, a);
    }
}
