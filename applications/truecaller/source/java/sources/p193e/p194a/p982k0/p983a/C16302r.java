package p193e.p194a.p982k0.p983a;

import java.io.File;
import s1.z.c.l;
/* renamed from: e.a.k0.a.r */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/r.class */
public final class C16302r implements AbstractC16301q {
    @Override // p193e.p194a.p982k0.p983a.AbstractC16301q
    /* renamed from: a */
    public boolean mo17611a(String str) throws SecurityException {
        l.e(str, "absolutePath");
        return new File(str).delete();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16301q
    /* renamed from: b */
    public boolean mo17610b(String str) throws SecurityException {
        l.e(str, "absolutePath");
        return new File(str).mkdirs();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16301q
    /* renamed from: c */
    public boolean mo17609c(String str) throws SecurityException {
        l.e(str, "absolutePath");
        return new File(str).exists();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16301q
    /* renamed from: d */
    public boolean mo17608d(String str) throws SecurityException {
        l.e(str, "absolutePath");
        return new File(str).isDirectory();
    }
}
