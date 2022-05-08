package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6739a;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6759u;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInConfiguration.class */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new C6759u();

    /* renamed from: a */
    public final String f6472a;

    /* renamed from: b */
    public GoogleSignInOptions f6473b;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        C7021t.m21283b(str);
        this.f6472a = str;
        this.f6473b = googleSignInOptions;
    }

    /* renamed from: c */
    public final GoogleSignInOptions m32009c() {
        return this.f6473b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (!this.f6472a.equals(signInConfiguration.f6472a)) {
            return false;
        }
        GoogleSignInOptions googleSignInOptions = this.f6473b;
        return googleSignInOptions == null ? signInConfiguration.f6473b == null : googleSignInOptions.equals(signInConfiguration.f6473b);
    }

    public final int hashCode() {
        C6739a aVar = new C6739a();
        aVar.m21976a(this.f6472a);
        aVar.m21976a(this.f6473b);
        return aVar.m21977a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6472a, false);
        C7031b.m21220a(parcel, 5, (Parcelable) this.f6473b, i, false);
        C7031b.m21229a(parcel, a);
    }
}
