package p012b.p076s.p078b.p079a.p086s0.p088s;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.s0.s.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/s/d.class */
public final class C1369d extends TagPayloadReader {

    /* renamed from: b */
    public long f5408b = -9223372036854775807L;

    public C1369d() {
        super(null);
    }

    /* renamed from: a */
    public static Object m33583a(C1184p pVar, int i) {
        if (i == 0) {
            return m33580d(pVar);
        }
        if (i == 1) {
            return m33582b(pVar);
        }
        if (i == 2) {
            return m33576h(pVar);
        }
        if (i == 3) {
            return m33578f(pVar);
        }
        if (i == 8) {
            return m33579e(pVar);
        }
        if (i == 10) {
            return m33577g(pVar);
        }
        if (i != 11) {
            return null;
        }
        return m33581c(pVar);
    }

    /* renamed from: b */
    public static Boolean m33582b(C1184p pVar) {
        boolean z = true;
        if (pVar.m34344r() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: c */
    public static Date m33581c(C1184p pVar) {
        Date date = new Date((long) m33580d(pVar).doubleValue());
        pVar.m34356f(2);
        return date;
    }

    /* renamed from: d */
    public static Double m33580d(C1184p pVar) {
        return Double.valueOf(Double.longBitsToDouble(pVar.m34348n()));
    }

    /* renamed from: e */
    public static HashMap<String, Object> m33579e(C1184p pVar) {
        int v = pVar.m34340v();
        HashMap<String, Object> hashMap = new HashMap<>(v);
        for (int i = 0; i < v; i++) {
            hashMap.put(m33576h(pVar), m33583a(pVar, m33575i(pVar)));
        }
        return hashMap;
    }

    /* renamed from: f */
    public static HashMap<String, Object> m33578f(C1184p pVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String h = m33576h(pVar);
            int i = m33575i(pVar);
            if (i == 9) {
                return hashMap;
            }
            hashMap.put(h, m33583a(pVar, i));
        }
    }

    /* renamed from: g */
    public static ArrayList<Object> m33577g(C1184p pVar) {
        int v = pVar.m34340v();
        ArrayList<Object> arrayList = new ArrayList<>(v);
        for (int i = 0; i < v; i++) {
            arrayList.add(m33583a(pVar, m33575i(pVar)));
        }
        return arrayList;
    }

    /* renamed from: h */
    public static String m33576h(C1184p pVar) {
        int x = pVar.m34338x();
        int c = pVar.m34363c();
        pVar.m34356f(x);
        return new String(pVar.f4738a, c, x);
    }

    /* renamed from: i */
    public static int m33575i(C1184p pVar) {
        return pVar.m34344r();
    }

    /* renamed from: a */
    public long m33584a() {
        return this.f5408b;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    public boolean mo33574a(C1184p pVar) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public void mo33573b(C1184p pVar, long j) throws ParserException {
        if (m33575i(pVar) != 2) {
            throw new ParserException();
        } else if ("onMetaData".equals(m33576h(pVar)) && m33575i(pVar) == 8) {
            HashMap<String, Object> e = m33579e(pVar);
            if (e.containsKey(VastIconXmlManager.DURATION)) {
                double doubleValue = ((Double) e.get(VastIconXmlManager.DURATION)).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f5408b = (long) (doubleValue * 1000000.0d);
                }
            }
        }
    }
}
