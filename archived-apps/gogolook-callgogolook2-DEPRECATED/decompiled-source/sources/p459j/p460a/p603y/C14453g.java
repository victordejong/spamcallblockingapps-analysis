package p459j.p460a.p603y;

import gogolook.callgogolook2.gson.ContactUploadSetting;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14202w3;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y.g */
/* loaded from: classes2-dex2jar.jar:j/a/y/g.class */
public final class C14453g extends AbstractC15150l implements AbstractC15107a<C14989s> {

    /* renamed from: a */
    public static final C14453g f32352a = new C14453g();

    public C14453g() {
        super(0);
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (C13963d3.m2966e()) {
            C14099o3 n = C14099o3.m2510n();
            C15149k.m383a((Object) n, "ServerConfigManager.getInstance()");
            ContactUploadSetting e = n.m2523e();
            if (e != null) {
                int i = e.cbuType;
                boolean z = true;
                if (i != 1) {
                    z = i == 2;
                }
                if (!z) {
                    e = null;
                }
                if (e != null) {
                    C14202w3 c = C14202w3.m2227c();
                    c.m2231a(e);
                    c.m2233a();
                }
            }
        }
    }
}
