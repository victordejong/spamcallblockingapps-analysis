package p000a.p001a.p002a.p003a.p004a.p006b;

import java.io.File;
import java.util.Comparator;
/* renamed from: a.a.a.a.a.b.k */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/k.class */
final class C0028k implements Comparator<File> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(File file, File file2) {
        return (int) (file.lastModified() - file2.lastModified());
    }
}
