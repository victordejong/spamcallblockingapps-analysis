package p573f.p589v;

import java.io.File;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.v.a */
/* loaded from: classes2-dex2jar.jar:f/v/a.class */
public final class C10018a {
    /* renamed from: b */
    public static final String m1665b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String sb2 = sb.toString();
        C10059q.m1642a((Object) sb2, "sb.toString()");
        return sb2;
    }
}
