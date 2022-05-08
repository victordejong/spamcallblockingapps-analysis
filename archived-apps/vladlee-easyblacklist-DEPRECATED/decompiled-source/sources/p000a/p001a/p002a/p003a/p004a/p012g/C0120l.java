package p000a.p001a.p002a.p003a.p004a.p012g;

import org.json.JSONObject;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.g.l */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/l.class */
public final class C0120l extends AbstractC0007a implements AbstractC0133x {
    public C0120l(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar) {
        this(lVar, str, str2, hVar, EnumC0092d.GET);
    }

    private C0120l(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar, EnumC0092d dVar) {
        super(lVar, str, str2, hVar, dVar);
    }

    /* renamed from: a */
    private JSONObject m10180a(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            AbstractC0150o c = C0137d.m10155c();
            c.mo10134a("Fabric", "Failed to parse settings JSON from " + getUrl(), e);
            C0137d.m10155c().mo10135a("Fabric", "Settings response ".concat(String.valueOf(str)));
            return null;
        }
    }

    /* renamed from: a */
    private static void m10181a(C0093e eVar, String str, String str2) {
        if (str2 != null) {
            eVar.m10231a(str, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x026f  */
    @Override // p000a.p001a.p002a.p003a.p004a.p012g.AbstractC0133x
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject mo10168a(p000a.p001a.p002a.p003a.p004a.p012g.C0132w r6) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.p001a.p002a.p003a.p004a.p012g.C0120l.mo10168a(a.a.a.a.a.g.w):org.json.JSONObject");
    }
}
