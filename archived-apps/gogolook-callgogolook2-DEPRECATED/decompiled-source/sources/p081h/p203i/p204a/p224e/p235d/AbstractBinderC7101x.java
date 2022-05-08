package p081h.p203i.p204a.p224e.p235d;

import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractBinderC7017r0;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7020s0;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.d.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/x.class */
public abstract class AbstractBinderC7101x extends AbstractBinderC7017r0 {

    /* renamed from: a */
    public int f17216a;

    public AbstractBinderC7101x(byte[] bArr) {
        C7021t.m21286a(bArr.length == 25);
        this.f17216a = Arrays.hashCode(bArr);
    }

    /* renamed from: h */
    public static byte[] m21078h(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7020s0
    /* renamed from: C */
    public final int mo21080C() {
        return hashCode();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7020s0
    /* renamed from: E0 */
    public final AbstractC7106b mo21079E0() {
        return BinderC7110d.m21058a(mo21077G0());
    }

    /* renamed from: G0 */
    public abstract byte[] mo21077G0();

    public boolean equals(Object obj) {
        AbstractC7106b E0;
        if (obj == null || !(obj instanceof AbstractC7020s0)) {
            return false;
        }
        try {
            AbstractC7020s0 s0Var = (AbstractC7020s0) obj;
            if (s0Var.mo21080C() == hashCode() && (E0 = s0Var.mo21079E0()) != null) {
                return Arrays.equals(mo21077G0(), (byte[]) BinderC7110d.m21059A(E0));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public int hashCode() {
        return this.f17216a;
    }
}
