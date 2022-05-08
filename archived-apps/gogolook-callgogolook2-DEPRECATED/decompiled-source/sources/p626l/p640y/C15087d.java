package p626l.p640y;

import java.io.File;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.y.d */
/* loaded from: classes3-dex2jar.jar:l/y/d.class */
public final class C15087d {
    /* renamed from: b */
    public static final String m445b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "sb.toString()");
        return sb2;
    }
}
