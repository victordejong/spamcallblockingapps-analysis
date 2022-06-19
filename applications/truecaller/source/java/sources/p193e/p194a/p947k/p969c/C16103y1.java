package p193e.p194a.p947k.p969c;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.y.b;
import s1.y.c;
import s1.y.j;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$persistTempRecordingFile$2", f = "VideoFileUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.y1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/y1.class */
public final class C16103y1 extends i implements l<d<? super File>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C15942a f45364e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16103y1(C15942a c15942a, d dVar) {
        super(1, dVar);
        this.f45364e = c15942a;
    }

    /* renamed from: d */
    public final Object m17888d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16103y1(this.f45364e, dVar).m17886s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17887l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16103y1(this.f45364e, dVar);
    }

    /* renamed from: s */
    public final Object m17886s(Object obj) {
        FileOutputStream fileInputStream;
        C25225a.m3932a3(obj);
        ((File) this.f45364e.f44947a.getValue()).mkdirs();
        File m18116a = C15942a.m18116a(this.f45364e);
        StringBuilder m8728C = C22128a.m8728C("recording_own_");
        m8728C.append(this.f45364e.f44951e.mo13819c());
        m8728C.append(".mp4");
        File file = new File(m18116a, m8728C.toString());
        File m18115b = C15942a.m18115b(this.f45364e);
        s1.z.c.l.e(m18115b, "$this$copyTo");
        s1.z.c.l.e(file, "target");
        if (m18115b.exists()) {
            if (file.exists() && !file.delete()) {
                throw new b(m18115b, file, "Tried to overwrite the destination, but failed to delete it.");
            }
            if (!m18115b.isDirectory()) {
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                try {
                    C25225a.m3964T(new FileInputStream(m18115b), new FileOutputStream(file), 8192);
                    th = null;
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else if (!file.mkdirs()) {
                throw new c(m18115b, file, "Failed to create target directory.");
            }
            C15942a.m18115b(this.f45364e).delete();
            file.getAbsolutePath();
            return file;
        }
        throw new j(m18115b, (File) null, "The source file doesn't exist.", 2);
    }
}
