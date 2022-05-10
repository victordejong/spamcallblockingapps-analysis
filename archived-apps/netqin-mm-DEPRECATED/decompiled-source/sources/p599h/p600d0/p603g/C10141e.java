package p599h.p600d0.p603g;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import okio.ByteString;
import p599h.AbstractC10224m;
import p599h.C10091a0;
import p599h.C10223l;
import p599h.C10234r;
import p599h.C10236s;
import p599h.C10250y;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.g.e */
/* loaded from: classes2-dex2jar.jar:h/d0/g/e.class */
public final class C10141e {
    static {
        ByteString.encodeUtf8("\"\\");
        ByteString.encodeUtf8("\t ,=");
    }

    /* renamed from: a */
    public static int m1322a(String str, int i) {
        long parseLong;
        try {
            parseLong = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        if (parseLong > 2147483647L) {
            return MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        }
        if (parseLong < 0) {
            return 0;
        }
        i = (int) parseLong;
        return i;
    }

    /* renamed from: a */
    public static int m1321a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m1328a(C10091a0 a0Var) {
        return m1325a(a0Var.m1536f());
    }

    /* renamed from: a */
    public static long m1325a(C10234r rVar) {
        return m1323a(rVar.m971a("Content-Length"));
    }

    /* renamed from: a */
    public static long m1323a(String str) {
        long j = -1;
        if (str == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    /* renamed from: a */
    public static C10234r m1324a(C10234r rVar, C10234r rVar2) {
        Set<String> c = m1316c(rVar2);
        if (c.isEmpty()) {
            return new C10234r.C10235a().m963a();
        }
        C10234r.C10235a aVar = new C10234r.C10235a();
        int b = rVar.m967b();
        for (int i = 0; i < b; i++) {
            String a = rVar.m972a(i);
            if (c.contains(a)) {
                aVar.m961a(a, rVar.m966b(i));
            }
        }
        return aVar.m963a();
    }

    /* renamed from: a */
    public static void m1326a(AbstractC10224m mVar, C10236s sVar, C10234r rVar) {
        if (mVar != AbstractC10224m.f37737a) {
            List<C10223l> a = C10223l.m1022a(sVar, rVar);
            if (!a.isEmpty()) {
                mVar.mo1012a(sVar, a);
            }
        }
    }

    /* renamed from: a */
    public static boolean m1327a(C10091a0 a0Var, C10234r rVar, C10250y yVar) {
        for (String str : m1315d(a0Var)) {
            if (!C10109c.m1461a(rVar.m965b(str), yVar.m818b(str))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static int m1318b(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m1320b(C10091a0 a0Var) {
        if (a0Var.m1528n().m815e().equals("HEAD")) {
            return false;
        }
        int d = a0Var.m1538d();
        return (((d >= 100 && d < 200) || d == 204 || d == 304) && m1328a(a0Var) == -1 && !"chunked".equalsIgnoreCase(a0Var.m1542a("Transfer-Encoding"))) ? false : true;
    }

    /* renamed from: b */
    public static boolean m1319b(C10234r rVar) {
        return m1316c(rVar).contains("*");
    }

    /* renamed from: c */
    public static Set<String> m1316c(C10234r rVar) {
        Set<String> emptySet = Collections.emptySet();
        int b = rVar.m967b();
        for (int i = 0; i < b; i++) {
            if ("Vary".equalsIgnoreCase(rVar.m972a(i))) {
                String b2 = rVar.m966b(i);
                Set<String> set = emptySet;
                if (emptySet.isEmpty()) {
                    set = new TreeSet<>(String.CASE_INSENSITIVE_ORDER);
                }
                String[] split = b2.split(",");
                int length = split.length;
                int i2 = 0;
                while (true) {
                    emptySet = set;
                    if (i2 < length) {
                        set.add(split[i2].trim());
                        i2++;
                    }
                }
            }
        }
        return emptySet;
    }

    /* renamed from: c */
    public static boolean m1317c(C10091a0 a0Var) {
        return m1319b(a0Var.m1536f());
    }

    /* renamed from: d */
    public static Set<String> m1315d(C10091a0 a0Var) {
        return m1316c(a0Var.m1536f());
    }

    /* renamed from: e */
    public static C10234r m1314e(C10091a0 a0Var) {
        return m1324a(a0Var.m1533i().m1528n().m817c(), a0Var.m1536f());
    }
}
