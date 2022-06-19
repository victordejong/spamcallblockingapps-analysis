package p193e.p194a.p615c4;

import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.c4.g */
/* loaded from: classes10-dex2jar.jar:e/a/c4/g.class */
public final class C10939g extends AbstractC10935c {

    /* renamed from: a */
    public static final C10939g f32452a = new C10939g();

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: e */
    public boolean mo11316e(Throwable th) {
        l.e(th, "e");
        String str = "";
        boolean z = false;
        if (th instanceof IllegalStateException) {
            String message = ((IllegalStateException) th).getMessage();
            if (message != null) {
                str = message;
            }
            if (r.m(str, " must not be null", false, 2) || r.y(str, "Field specified as non-null is null: ", false, 2) || r.y(str, "Method specified as non-null returned null: ", false, 2)) {
                z = true;
            }
        } else if (th instanceof IllegalArgumentException) {
            String message2 = ((IllegalArgumentException) th).getMessage();
            if (message2 != null) {
                str = message2;
            }
            z = r.y(str, "Parameter specified as non-null is null: method ", false, 2);
        }
        return z;
    }
}
