package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import p081h.p203i.p204a.p224e.p226b.C6776m;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/TokenData.class */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new C6776m();

    /* renamed from: a */
    public final int f6344a;

    /* renamed from: b */
    public final String f6345b;

    /* renamed from: c */
    public final Long f6346c;

    /* renamed from: d */
    public final boolean f6347d;

    /* renamed from: e */
    public final boolean f6348e;

    /* renamed from: f */
    public final List<String> f6349f;

    /* renamed from: g */
    public final String f6350g;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list, String str2) {
        this.f6344a = i;
        C7021t.m21283b(str);
        this.f6345b = str;
        this.f6346c = l;
        this.f6347d = z;
        this.f6348e = z2;
        this.f6349f = list;
        this.f6350g = str2;
    }

    @Nullable
    /* renamed from: a */
    public static TokenData m32086a(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    /* renamed from: c */
    public final String m32085c() {
        return this.f6345b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f6345b, tokenData.f6345b) && C7018s.m21297a(this.f6346c, tokenData.f6346c) && this.f6347d == tokenData.f6347d && this.f6348e == tokenData.f6348e && C7018s.m21297a(this.f6349f, tokenData.f6349f) && C7018s.m21297a(this.f6350g, tokenData.f6350g);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f6345b, this.f6346c, Boolean.valueOf(this.f6347d), Boolean.valueOf(this.f6348e), this.f6349f, this.f6350g);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6344a);
        C7031b.m21215a(parcel, 2, this.f6345b, false);
        C7031b.m21216a(parcel, 3, this.f6346c, false);
        C7031b.m21212a(parcel, 4, this.f6347d);
        C7031b.m21212a(parcel, 5, this.f6348e);
        C7031b.m21203b(parcel, 6, this.f6349f, false);
        C7031b.m21215a(parcel, 7, this.f6350g, false);
        C7031b.m21229a(parcel, a);
    }
}
