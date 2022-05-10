package p131c.p161d.p170b.p224d.p238d;

import android.os.RemoteException;
import android.util.Log;
import com.android.volley.toolbox.HttpHeaderParser;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzl;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: c.d.b.d.d.i */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/i.class */
public abstract class AbstractBinderC3317i extends zzn {

    /* renamed from: a */
    public int f12039a;

    public AbstractBinderC3317i(byte[] bArr) {
        Preconditions.m17284a(bArr.length == 25);
        this.f12039a = Arrays.hashCode(bArr);
    }

    /* renamed from: c */
    public static byte[] m27253c(String str) {
        try {
            return str.getBytes(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        IObjectWrapper zzb;
        if (obj == null || !(obj instanceof zzl)) {
            return false;
        }
        try {
            zzl zzlVar = (zzl) obj;
            if (zzlVar.zzc() == hashCode() && (zzb = zzlVar.zzb()) != null) {
                return Arrays.equals(zza(), (byte[]) ObjectWrapper.m17021Q(zzb));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public int hashCode() {
        return this.f12039a;
    }

    public abstract byte[] zza();

    @Override // com.google.android.gms.common.internal.zzl
    public final IObjectWrapper zzb() {
        return ObjectWrapper.m17020a(zza());
    }

    @Override // com.google.android.gms.common.internal.zzl
    public final int zzc() {
        return hashCode();
    }
}
