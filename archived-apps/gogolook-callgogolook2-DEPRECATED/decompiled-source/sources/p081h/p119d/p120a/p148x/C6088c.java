package p081h.p119d.p120a.p148x;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import p081h.p119d.p120a.p124s.AbstractC5806c;
/* renamed from: h.d.a.x.c */
/* loaded from: classes-dex2jar.jar:h/d/a/x/c.class */
public class C6088c implements AbstractC5806c {

    /* renamed from: a */
    public final String f15139a;

    public C6088c(String str) {
        if (str != null) {
            this.f15139a = str;
            return;
        }
        throw new NullPointerException("Signature cannot be null!");
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    /* renamed from: a */
    public void mo23889a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.f15139a.getBytes("UTF-8"));
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6088c.class != obj.getClass()) {
            return false;
        }
        return this.f15139a.equals(((C6088c) obj).f15139a);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    public int hashCode() {
        return this.f15139a.hashCode();
    }

    public String toString() {
        return "StringSignature{signature='" + this.f15139a + "'}";
    }
}
