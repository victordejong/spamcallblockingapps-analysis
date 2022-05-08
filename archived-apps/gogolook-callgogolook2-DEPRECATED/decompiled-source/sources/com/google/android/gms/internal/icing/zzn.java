package com.google.android.gms.internal.icing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8488d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new C8488d();

    /* renamed from: a */
    public final int f6836a;

    /* renamed from: b */
    public final Bundle f6837b;

    public zzn(int i, Bundle bundle) {
        this.f6836a = i;
        this.f6837b = bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L_0x0007
            r0 = 1
            return r0
        L_0x0007:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.icing.zzn
            if (r0 != 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r5
            com.google.android.gms.internal.icing.zzn r0 = (com.google.android.gms.internal.icing.zzn) r0
            r5 = r0
            r0 = r4
            int r0 = r0.f6836a
            r1 = r5
            int r1 = r1.f6836a
            if (r0 == r1) goto L_0x0022
            r0 = 0
            return r0
        L_0x0022:
            r0 = r4
            android.os.Bundle r0 = r0.f6837b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0036
            r0 = r5
            android.os.Bundle r0 = r0.f6837b
            if (r0 != 0) goto L_0x0034
            r0 = 1
            return r0
        L_0x0034:
            r0 = 0
            return r0
        L_0x0036:
            r0 = r5
            android.os.Bundle r0 = r0.f6837b
            if (r0 != 0) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = r6
            int r0 = r0.size()
            r1 = r5
            android.os.Bundle r1 = r1.f6837b
            int r1 = r1.size()
            if (r0 == r1) goto L_0x004f
            r0 = 0
            return r0
        L_0x004f:
            r0 = r4
            android.os.Bundle r0 = r0.f6837b
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x005c:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0092
            r0 = r6
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = r5
            android.os.Bundle r0 = r0.f6837b
            r1 = r7
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0090
            r0 = r4
            android.os.Bundle r0 = r0.f6837b
            r1 = r7
            java.lang.String r0 = r0.getString(r1)
            r1 = r5
            android.os.Bundle r1 = r1.f6837b
            r2 = r7
            java.lang.String r1 = r1.getString(r2)
            boolean r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7018s.m21297a(r0, r1)
            if (r0 != 0) goto L_0x005c
        L_0x0090:
            r0 = 0
            return r0
        L_0x0092:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzn.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(this.f6836a));
        Bundle bundle = this.f6837b;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                arrayList.add(str);
                arrayList.add(this.f6837b.getString(str));
            }
        }
        return C7018s.m21296a(arrayList.toArray(new Object[0]));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6836a);
        C7031b.m21223a(parcel, 2, this.f6837b, false);
        C7031b.m21229a(parcel, a);
    }
}
