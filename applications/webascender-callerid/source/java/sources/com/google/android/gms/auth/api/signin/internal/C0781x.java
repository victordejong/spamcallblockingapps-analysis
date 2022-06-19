package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.signin.internal.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/x.class */
public final class C0781x implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 2) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                googleSignInOptions = (GoogleSignInOptions) SafeParcelReader.m3298c(parcel, m3283r, GoogleSignInOptions.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
