package p131c.p135b.p136a.p148e;

import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.e.x */
/* loaded from: classes-dex2jar.jar:c/b/a/e/x.class */
public class C2380x {

    /* renamed from: a */
    public final C2341l f9250a;

    /* renamed from: b */
    public final JSONObject f9251b;

    /* renamed from: c */
    public final Object f9252c = new Object();

    public C2380x(C2341l lVar) {
        this.f9250a = lVar;
        this.f9251b = C2390i.m29939a((String) lVar.m30273b(C2251d.C2258g.f8810t, "{}"), new JSONObject(), lVar);
    }

    /* renamed from: a */
    public Integer m29998a(String str) {
        int b;
        synchronized (this.f9252c) {
            if (this.f9251b.has(str)) {
                C2390i.m29930a(this.f9251b, str, C2390i.m29916b(this.f9251b, str, 0, this.f9250a) + 1, this.f9250a);
            } else {
                C2390i.m29930a(this.f9251b, str, 1, this.f9250a);
            }
            this.f9250a.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8810t, (C2251d.C2258g<String>) this.f9251b.toString());
            b = C2390i.m29916b(this.f9251b, str, 0, this.f9250a);
        }
        return Integer.valueOf(b);
    }
}
