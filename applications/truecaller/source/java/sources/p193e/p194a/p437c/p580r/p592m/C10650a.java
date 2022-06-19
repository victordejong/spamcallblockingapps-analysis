package p193e.p194a.p437c.p580r.p592m;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.m.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/m/a.class */
public final class C10650a extends Exception {

    /* renamed from: a */
    public final String f31739a;

    /* renamed from: b */
    public final String f31740b;

    public C10650a(String str) {
        l.e(str, "label");
        this.f31740b = str;
        this.f31739a = C22128a.m8725C2("The updates label provided - ", str, " is not found in the approved list.");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f31739a;
    }
}
