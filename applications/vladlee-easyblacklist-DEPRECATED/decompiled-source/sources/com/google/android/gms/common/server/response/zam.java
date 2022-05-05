package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zan();

    /* renamed from: a */
    final String f6927a;

    /* renamed from: b */
    final ArrayList<zal> f6928b;

    /* renamed from: c */
    private final int f6929c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(int i, String str, ArrayList<zal> arrayList) {
        this.f6929c = i;
        this.f6927a = str;
        this.f6928b = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zal> arrayList;
        this.f6929c = 1;
        this.f6927a = str;
        if (map != null) {
            ArrayList<zal> arrayList2 = new ArrayList<>();
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                arrayList2.add(new zal(next, map.get(next)));
            }
        } else {
            arrayList = null;
        }
        this.f6928b = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f6929c);
        SafeParcelWriter.writeString(parcel, 2, this.f6927a, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.f6928b, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
