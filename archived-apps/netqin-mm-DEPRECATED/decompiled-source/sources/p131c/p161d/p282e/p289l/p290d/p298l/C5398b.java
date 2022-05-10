package p131c.p161d.p282e.p289l.p290d.p298l;

import java.io.File;
import java.io.FileFilter;
/* renamed from: c.d.e.l.d.l.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/l/b.class */
public final /* synthetic */ class C5398b implements FileFilter {

    /* renamed from: a */
    public final String f18316a;

    public C5398b(String str) {
        this.f18316a = str;
    }

    /* renamed from: a */
    public static FileFilter m23919a(String str) {
        return new C5398b(str);
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return C5403g.m23898a(this.f18316a, file);
    }
}
