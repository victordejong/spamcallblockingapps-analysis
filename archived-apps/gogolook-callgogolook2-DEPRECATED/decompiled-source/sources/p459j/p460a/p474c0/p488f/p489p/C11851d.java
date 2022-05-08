package p459j.p460a.p474c0.p488f.p489p;

import gogolook.callgogolook2.gson.SmsFilterRulesHelper;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.f.p.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/p/d.class */
public final class C11851d {

    /* renamed from: a */
    public static final C11851d f26565a = new C11851d();

    /* renamed from: a */
    public static final void m8035a(@SmsFilterRulesHelper.Type String str, String str2, String str3, String str4) {
        C15149k.m377b(str, "type");
        C15149k.m377b(str2, "keywords");
        C15149k.m377b(str4, "action");
        C14282k a = f26565a.m8036a();
        a.m1920a("type", str);
        a.m1920a("keywords", str2);
        if (str3 != null) {
            a.m1920a("patterns", str3);
        }
        a.m1920a("action", str4);
        a.m1923a();
    }

    /* renamed from: a */
    public final C14282k m8036a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("type", C14247d.f31851f);
        aVar.m2100a("keywords", C14247d.f31851f);
        aVar.m2100a("patterns", C14247d.f31851f);
        aVar.m2100a("action", C14247d.f31851f);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_sms_filter_keyword_log")}, aVar);
    }
}
