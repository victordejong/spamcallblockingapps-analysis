package p193e.p194a.p947k.p969c;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
import u3.c0;
import u3.j0;
import v3.g;
/* renamed from: e.a.k.c.w */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/w.class */
public final class C16095w extends j0 {

    /* renamed from: b */
    public final File f45338b;

    /* renamed from: c */
    public final long f45339c;

    /* renamed from: d */
    public final String f45340d;

    public C16095w(File file, long j, String str) {
        l.e(file, "file");
        l.e(str, "mimeType");
        this.f45338b = file;
        this.f45339c = j;
        this.f45340d = str;
    }

    /* renamed from: a */
    public long m17903a() {
        return this.f45339c;
    }

    /* renamed from: b */
    public c0 m17902b() {
        c0.a aVar = c0.f;
        return c0.a.b(this.f45340d);
    }

    /* renamed from: c */
    public void m17901c(g gVar) {
        Throwable th;
        l.e(gVar, "sink");
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(this.f45338b);
            try {
                C19291g.m13574X1(fileInputStream2, gVar.j2());
                try {
                    fileInputStream2.close();
                } catch (IOException e) {
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
