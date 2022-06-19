package p193e.p194a.p372b0.p394b.p400j;

import java.io.IOException;
import s1.z.c.l;
import u3.b0;
import u3.k0;
/* renamed from: e.a.b0.b.j.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/c.class */
public final class C8397c implements b0 {

    /* renamed from: e.a.b0.b.j.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/c$a.class */
    public static final class C8398a extends IOException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8398a(SecurityException securityException) {
            super(securityException.getMessage());
            l.e(securityException, "se");
            initCause(securityException);
        }
    }

    /* renamed from: a */
    public k0 m28613a(b0.a aVar) throws IOException {
        l.e(aVar, "chain");
        try {
            return aVar.a(aVar.request());
        } catch (SecurityException e) {
            throw new C8398a(e);
        }
    }
}
