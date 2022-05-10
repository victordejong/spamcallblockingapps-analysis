package p131c.p161d.p170b.p188c.p201f1.p202u;

import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.f1.u.r */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/r.class */
public final class C2864r extends C2850h {

    /* renamed from: g */
    public static final Pattern f10421g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* renamed from: h */
    public static final Pattern f10422h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* renamed from: i */
    public static final Pattern f10423i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public C2864r(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    /* renamed from: a */
    public static C2864r m28763a(File file, long j, long j2, C2853k kVar) {
        String a;
        String name = file.getName();
        if (!name.endsWith(".v3.exo")) {
            file = m28761a(file, kVar);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        Matcher matcher = f10423i.matcher(name);
        if (!matcher.matches() || (a = kVar.m28845a(Integer.parseInt(matcher.group(1)))) == null) {
            return null;
        }
        if (j == -1) {
            j = file.length();
        }
        if (j == 0) {
            return null;
        }
        long parseLong = Long.parseLong(matcher.group(2));
        if (j2 == -9223372036854775807L) {
            j2 = Long.parseLong(matcher.group(3));
        }
        return new C2864r(a, parseLong, j, j2, file);
    }

    /* renamed from: a */
    public static C2864r m28762a(File file, long j, C2853k kVar) {
        return m28763a(file, j, -9223372036854775807L, kVar);
    }

    /* renamed from: a */
    public static C2864r m28760a(String str, long j) {
        return new C2864r(str, j, -1L, -9223372036854775807L, null);
    }

    /* renamed from: a */
    public static C2864r m28759a(String str, long j, long j2) {
        return new C2864r(str, j, j2, -9223372036854775807L, null);
    }

    /* renamed from: a */
    public static File m28765a(File file, int i, long j, long j2) {
        return new File(file, i + "." + j + "." + j2 + ".v3.exo");
    }

    /* renamed from: a */
    public static File m28761a(File file, C2853k kVar) {
        String str;
        String name = file.getName();
        Matcher matcher = f10422h.matcher(name);
        if (matcher.matches()) {
            String h = C2885h0.m28627h(matcher.group(1));
            str = h;
            if (h == null) {
                return null;
            }
        } else {
            matcher = f10421g.matcher(name);
            if (!matcher.matches()) {
                return null;
            }
            str = matcher.group(1);
        }
        File parentFile = file.getParentFile();
        C2877e.m28732b(parentFile);
        File a = m28765a(parentFile, kVar.m28835b(str), Long.parseLong(matcher.group(2)), Long.parseLong(matcher.group(3)));
        if (!file.renameTo(a)) {
            return null;
        }
        return a;
    }

    /* renamed from: b */
    public static C2864r m28758b(String str, long j) {
        return new C2864r(str, j, -1L, -9223372036854775807L, null);
    }

    /* renamed from: a */
    public C2864r m28764a(File file, long j) {
        C2877e.m28731b(this.f10372d);
        return new C2864r(this.f10369a, this.f10370b, this.f10371c, j, file);
    }
}
