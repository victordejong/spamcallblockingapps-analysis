package p012b.p076s.p078b.p079a.p111z0;

import android.net.Uri;
import android.util.Base64;
import androidx.media2.exoplayer.external.ParserException;
import java.io.IOException;
import java.net.URLDecoder;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.z0.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/e.class */
public final class C1682e extends AbstractC1681d {

    /* renamed from: e */
    public C1687i f6873e;

    /* renamed from: f */
    public byte[] f6874f;

    /* renamed from: g */
    public int f6875g;

    /* renamed from: h */
    public int f6876h;

    public C1682e() {
        super(false);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws IOException {
        m32391b(iVar);
        this.f6873e = iVar;
        Uri uri = iVar.f6883a;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            String valueOf = String.valueOf(scheme);
            throw new ParserException(valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        }
        String[] a = C1167d0.m34474a(uri.getSchemeSpecificPart(), ",");
        if (a.length == 2) {
            String str = a[1];
            if (a[0].contains(";base64")) {
                try {
                    byte[] decode = Base64.decode(str, 0);
                    this.f6874f = decode;
                    this.f6875g = decode.length;
                } catch (IllegalArgumentException e) {
                    String valueOf2 = String.valueOf(str);
                    throw new ParserException(valueOf2.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf2) : new String("Error while parsing Base64 encoded string: "), e);
                }
            } else {
                byte[] d = C1167d0.m34441d(URLDecoder.decode(str, "US-ASCII"));
                this.f6874f = d;
                this.f6875g = d.length;
            }
            m32390c(iVar);
            return this.f6875g;
        }
        String valueOf3 = String.valueOf(uri);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 23);
        sb.append("Unexpected URI format: ");
        sb.append(valueOf3);
        throw new ParserException(sb.toString());
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws IOException {
        if (this.f6874f != null) {
            this.f6874f = null;
            m32393a();
        }
        this.f6873e = null;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        C1687i iVar = this.f6873e;
        return iVar != null ? iVar.f6883a : null;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f6875g - this.f6876h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f6874f;
        C1167d0.m34479a(bArr2);
        System.arraycopy(bArr2, this.f6876h, bArr, i, min);
        this.f6876h += min;
        m32392a(min);
        return min;
    }
}
