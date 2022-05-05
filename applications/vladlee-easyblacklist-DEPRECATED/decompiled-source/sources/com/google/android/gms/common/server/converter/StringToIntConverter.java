package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zad();

    /* renamed from: a */
    private final int f6873a;

    /* renamed from: b */
    private final HashMap<String, Integer> f6874b;

    /* renamed from: c */
    private final SparseArray<String> f6875c;

    /* renamed from: d */
    private final ArrayList<zaa> f6876d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter$zaa.class */
    public static final class zaa extends AbstractSafeParcelable {
        public static final Parcelable.Creator<zaa> CREATOR = new zac();

        /* renamed from: a */
        final String f6877a;

        /* renamed from: b */
        final int f6878b;

        /* renamed from: c */
        private final int f6879c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zaa(int i, String str, int i2) {
            this.f6879c = i;
            this.f6877a = str;
            this.f6878b = i2;
        }

        zaa(String str, int i) {
            this.f6879c = 1;
            this.f6877a = str;
            this.f6878b = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.f6879c);
            SafeParcelWriter.writeString(parcel, 2, this.f6877a, false);
            SafeParcelWriter.writeInt(parcel, 3, this.f6878b);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    public StringToIntConverter() {
        this.f6873a = 1;
        this.f6874b = new HashMap<>();
        this.f6875c = new SparseArray<>();
        this.f6876d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringToIntConverter(int i, ArrayList<zaa> arrayList) {
        this.f6873a = i;
        this.f6874b = new HashMap<>();
        this.f6875c = new SparseArray<>();
        this.f6876d = null;
        ArrayList<zaa> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            zaa zaaVar = arrayList2.get(i2);
            i2++;
            zaa zaaVar2 = zaaVar;
            add(zaaVar2.f6877a, zaaVar2.f6878b);
        }
    }

    public final StringToIntConverter add(String str, int i) {
        this.f6874b.put(str, Integer.valueOf(i));
        this.f6875c.put(i, str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* synthetic */ Integer convert(String str) {
        Integer num = this.f6874b.get(str);
        Integer num2 = num;
        if (num == null) {
            num2 = this.f6874b.get("gms_unknown");
        }
        return num2;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* synthetic */ String convertBack(Integer num) {
        String str = this.f6875c.get(num.intValue());
        return (str != null || !this.f6874b.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6873a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f6874b.keySet()) {
            arrayList.add(new zaa(str, this.f6874b.get(str).intValue()));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final int zach() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final int zaci() {
        return 0;
    }
}
