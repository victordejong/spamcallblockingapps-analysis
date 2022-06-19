package p193e.p194a.p437c.p548h.p550l;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1075n3.p1076a.C18481d;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.t0;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
/* renamed from: e.a.c.h.l.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/l/b.class */
public final class C10263b {

    /* renamed from: b */
    public static C18481d f30412b;

    /* renamed from: d */
    public static final C10263b f30414d = new C10263b();

    /* renamed from: a */
    public static final SimpleDateFormat f30411a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: c */
    public static final i0 f30413c = d.h(t0.d);

    /* renamed from: a */
    public static final void m26509a(String... strArr) {
        l.e(strArr, "message");
        C18481d c18481d = f30412b;
        if (c18481d != null) {
            StringBuilder sb = new StringBuilder(f30411a.format(new Date()) + ": ");
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                sb.append(strArr[i]);
            }
            c18481d.f52172a.add(sb.toString());
        }
    }

    /* renamed from: b */
    public final void m26508b(Throwable th, String str) {
        l.e(th, "e");
        C10480a.m26061I1(th);
        C18481d c18481d = f30412b;
        if (c18481d != null) {
            StringBuilder sb = new StringBuilder(f30411a.format(new Date()) + ": ");
            sb.append(C25225a.m3945X2(th));
            sb.append('\n');
            l.d(sb, "append('\\n')");
            sb.append(str);
            c18481d.f52172a.add(sb.toString());
        }
    }
}
