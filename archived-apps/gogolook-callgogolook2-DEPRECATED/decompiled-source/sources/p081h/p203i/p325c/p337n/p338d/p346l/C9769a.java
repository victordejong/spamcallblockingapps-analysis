package p081h.p203i.p325c.p337n.p338d.p346l;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: h.i.c.n.d.l.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/l/a.class */
public final /* synthetic */ class C9769a implements FilenameFilter {

    /* renamed from: a */
    public final String f22176a;

    public C9769a(String str) {
        this.f22176a = str;
    }

    /* renamed from: a */
    public static FilenameFilter m14337a(String str) {
        return new C9769a(str);
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(this.f22176a);
        return startsWith;
    }
}
