package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.h.b.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/u.class */
public final class C6759u implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                googleSignInOptions = (GoogleSignInOptions) C7029a.m21260a(parcel, a, GoogleSignInOptions.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
