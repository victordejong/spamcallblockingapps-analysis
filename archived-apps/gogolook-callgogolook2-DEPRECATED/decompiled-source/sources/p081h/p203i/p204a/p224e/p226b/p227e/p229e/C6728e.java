package p081h.p203i.p204a.p224e.p226b.p227e.p229e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.e.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/e/e.class */
public final class C6728e implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 != 1000) {
                switch (a2) {
                    case 1:
                        z = C7029a.m21238s(parcel, a);
                        continue;
                    case 2:
                        strArr = C7029a.m21241p(parcel, a);
                        continue;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) C7029a.m21260a(parcel, a, CredentialPickerConfig.CREATOR);
                        continue;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) C7029a.m21260a(parcel, a, CredentialPickerConfig.CREATOR);
                        continue;
                    case 5:
                        z2 = C7029a.m21238s(parcel, a);
                        continue;
                    case 6:
                        str = C7029a.m21242o(parcel, a);
                        continue;
                    case 7:
                        str2 = C7029a.m21242o(parcel, a);
                        continue;
                    case 8:
                        z3 = C7029a.m21238s(parcel, a);
                        continue;
                    default:
                        C7029a.m21266F(parcel, a);
                        continue;
                }
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new CredentialRequest(i, z, strArr, credentialPickerConfig, credentialPickerConfig2, z2, str, str2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest[] newArray(int i) {
        return new CredentialRequest[i];
    }
}
