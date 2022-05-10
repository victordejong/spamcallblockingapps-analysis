package p131c.p161d.p282e.p289l.p290d.p298l;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: c.d.e.l.d.l.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/l/f.class */
public final /* synthetic */ class C5402f implements FilenameFilter {

    /* renamed from: a */
    public static final C5402f f18320a = new C5402f();

    /* renamed from: a */
    public static FilenameFilter m23915a() {
        return f18320a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith("event");
        return startsWith;
    }
}
