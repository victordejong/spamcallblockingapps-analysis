package p012b.p130z;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;
/* renamed from: b.z.a */
/* loaded from: classes-dex2jar.jar:b/z/a.class */
public class C1976a {
    /* renamed from: a */
    public static Parcelable m31388a(AbstractC1978c cVar) {
        return new ParcelImpl(cVar);
    }

    /* renamed from: a */
    public static <T extends AbstractC1978c> T m31391a(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(C1976a.class.getClassLoader());
            return (T) m31389a(bundle2.getParcelable("a"));
        } catch (RuntimeException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC1978c> T m31389a(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return (T) ((ParcelImpl) parcelable).mo37002a();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    /* renamed from: a */
    public static void m31390a(Bundle bundle, String str, AbstractC1978c cVar) {
        if (cVar != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("a", m31388a(cVar));
            bundle.putParcelable(str, bundle2);
        }
    }
}
