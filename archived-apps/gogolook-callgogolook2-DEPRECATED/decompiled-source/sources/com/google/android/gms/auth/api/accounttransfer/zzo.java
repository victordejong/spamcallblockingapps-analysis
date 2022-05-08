package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzaz;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p226b.p227e.p228d.C6720b;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/zzo.class */
public class zzo extends zzaz {
    public static final Parcelable.Creator<zzo> CREATOR = new C6720b();

    /* renamed from: g */
    public static final ArrayMap<String, FastJsonResponse.Field<?, ?>> f6361g;

    /* renamed from: a */
    public final int f6362a;

    /* renamed from: b */
    public List<String> f6363b;

    /* renamed from: c */
    public List<String> f6364c;

    /* renamed from: d */
    public List<String> f6365d;

    /* renamed from: e */
    public List<String> f6366e;

    /* renamed from: f */
    public List<String> f6367f;

    static {
        ArrayMap<String, FastJsonResponse.Field<?, ?>> arrayMap = new ArrayMap<>();
        f6361g = arrayMap;
        arrayMap.put("registered", FastJsonResponse.Field.m31915d("registered", 2));
        f6361g.put("in_progress", FastJsonResponse.Field.m31915d("in_progress", 3));
        f6361g.put("success", FastJsonResponse.Field.m31915d("success", 4));
        f6361g.put("failed", FastJsonResponse.Field.m31915d("failed", 5));
        f6361g.put("escrowed", FastJsonResponse.Field.m31915d("escrowed", 6));
    }

    public zzo() {
        this.f6362a = 1;
    }

    public zzo(int i, @Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3, @Nullable List<String> list4, @Nullable List<String> list5) {
        this.f6362a = i;
        this.f6363b = list;
        this.f6364c = list2;
        this.f6365d = list3;
        this.f6366e = list4;
        this.f6367f = list5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Object mo31932a(FastJsonResponse.Field field) {
        switch (field.m31917c()) {
            case 1:
                return Integer.valueOf(this.f6362a);
            case 2:
                return this.f6363b;
            case 3:
                return this.f6364c;
            case 4:
                return this.f6365d;
            case 5:
                return this.f6366e;
            case 6:
                return this.f6367f;
            default:
                int c = field.m31917c();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(c);
                throw new IllegalStateException(sb.toString());
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: a */
    public Map<String, FastJsonResponse.Field<?, ?>> mo31913a() {
        return f6361g;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* renamed from: b */
    public boolean mo31929b(FastJsonResponse.Field field) {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6362a);
        C7031b.m21203b(parcel, 2, this.f6363b, false);
        C7031b.m21203b(parcel, 3, this.f6364c, false);
        C7031b.m21203b(parcel, 4, this.f6365d, false);
        C7031b.m21203b(parcel, 5, this.f6366e, false);
        C7031b.m21203b(parcel, 6, this.f6367f, false);
        C7031b.m21229a(parcel, a);
    }
}
