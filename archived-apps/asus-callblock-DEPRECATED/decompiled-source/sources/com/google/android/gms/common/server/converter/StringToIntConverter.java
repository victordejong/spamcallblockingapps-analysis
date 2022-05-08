package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter.class */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a<String, Integer> {
    public static final b CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f4060a;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<String, Integer> f4061b;
    private final HashMap<Integer, String> c;
    private final ArrayList<Entry> d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/StringToIntConverter$Entry.class */
    public static final class Entry extends AbstractSafeParcelable {
        public static final c CREATOR = new c();

        /* renamed from: a  reason: collision with root package name */
        final int f4062a;

        /* renamed from: b  reason: collision with root package name */
        final String f4063b;
        final int c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entry(int i, String str, int i2) {
            this.f4062a = i;
            this.f4063b = str;
            this.c = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entry(String str, int i) {
            this.f4062a = 1;
            this.f4063b = str;
            this.c = i;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            c.a(this, parcel);
        }
    }

    public StringToIntConverter() {
        this.f4060a = 1;
        this.f4061b = new HashMap<>();
        this.c = new HashMap<>();
        this.d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringToIntConverter(int i, ArrayList<Entry> arrayList) {
        this.f4060a = i;
        this.f4061b = new HashMap<>();
        this.c = new HashMap<>();
        this.d = null;
        a(arrayList);
    }

    private void a(ArrayList<Entry> arrayList) {
        Iterator<Entry> it = arrayList.iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            String str = next.f4063b;
            int i = next.c;
            this.f4061b.put(str, Integer.valueOf(i));
            this.c.put(Integer.valueOf(i), str);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    public final /* synthetic */ String a(Integer num) {
        String str = this.c.get(num);
        String str2 = str;
        if (str == null) {
            str2 = str;
            if (this.f4061b.containsKey("gms_unknown")) {
                str2 = "gms_unknown";
            }
        }
        return str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel);
    }
}
