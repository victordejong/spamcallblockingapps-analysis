package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p245q.p247b.C7061d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new C7061d();

    /* renamed from: a */
    public final int f6647a;

    /* renamed from: b */
    public final String f6648b;

    /* renamed from: c */
    public final ArrayList<zam> f6649c;

    public zal(int i, String str, ArrayList<zam> arrayList) {
        this.f6647a = i;
        this.f6648b = str;
        this.f6649c = arrayList;
    }

    public zal(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
        ArrayList<zam> arrayList;
        this.f6647a = 1;
        this.f6648b = str;
        if (map != null) {
            ArrayList<zam> arrayList2 = new ArrayList<>();
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                arrayList2.add(new zam(next, map.get(next)));
            }
        } else {
            arrayList = null;
        }
        this.f6649c = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6647a);
        C7031b.m21215a(parcel, 2, this.f6648b, false);
        C7031b.m21201c(parcel, 3, this.f6649c, false);
        C7031b.m21229a(parcel, a);
    }
}
